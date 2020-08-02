SUBSYSTEM_DEF(mapping)
	name = "Mapping"
	init_order = SS_INIT_MAPPING
	flags = SS_NO_FIRE

	var/list/map_templates = list()
	var/list/space_ruins_templates = list()
	var/list/exoplanet_ruins_templates = list()
	var/list/away_sites_templates = list()
	var/list/submaps = list()
	var/list/submap_archetypes = list()

/datum/controller/subsystem/mapping/Initialize(timeofday)
	// Load templates and build away sites.
	preloadTemplates()
	for(var/atype in subtypesof(/decl/submap_archetype))
		submap_archetypes[atype] = new atype
	GLOB.using_map.build_away_sites()
	handle_mob_spawn_lowerlevel(config.lowerlevel_mob_count , config.lowerlevel_mob_multiplier , /area/remains/insecure)
	. = ..()

/datum/controller/subsystem/mapping/Recover()
	flags |= SS_NO_INIT
	map_templates = SSmapping.map_templates
	space_ruins_templates = SSmapping.space_ruins_templates
	exoplanet_ruins_templates = SSmapping.exoplanet_ruins_templates
	away_sites_templates = SSmapping.away_sites_templates

/datum/controller/subsystem/mapping/proc/preloadTemplates(path = "maps/templates/") //see master controller setup
	var/list/filelist = flist(path)
	for(var/map in filelist)
		var/datum/map_template/T = new(paths = "[path][map]", rename = "[map]")
		map_templates[T.name] = T
	preloadBlacklistableTemplates()

/datum/controller/subsystem/mapping/proc/preloadBlacklistableTemplates()
	// Still supporting bans by filename
	var/list/banned_exoplanet_dmms = generateMapList("config/exoplanet_ruin_blacklist.txt")
	var/list/banned_space_dmms = generateMapList("config/space_ruin_blacklist.txt")
	var/list/banned_away_site_dmms = generateMapList("config/away_site_blacklist.txt")

	if (!banned_exoplanet_dmms || !banned_space_dmms || !banned_away_site_dmms)
		report_progress("One or more map blacklist files are not present in the config directory!")

	var/list/banned_maps = list() + banned_exoplanet_dmms + banned_space_dmms + banned_away_site_dmms

	for(var/item in sortList(subtypesof(/datum/map_template), /proc/cmp_ruincost_priority))
		var/datum/map_template/map_template_type = item
		// screen out the abstract subtypes
		if(!initial(map_template_type.id))
			continue
		var/datum/map_template/MT = new map_template_type()

		if (banned_maps)
			var/is_banned = FALSE
			for (var/mappath in MT.mappaths)
				if(banned_maps.Find(mappath))
					is_banned = TRUE
					break
			if (is_banned)
				continue

		map_templates[MT.name] = MT

		// This is nasty..
		if(istype(MT, /datum/map_template/ruin/exoplanet))
			exoplanet_ruins_templates[MT.name] = MT
		else if(istype(MT, /datum/map_template/ruin/space))
			space_ruins_templates[MT.name] = MT
		else if(istype(MT, /datum/map_template/ruin/away_site))
			away_sites_templates[MT.name] = MT

/datum/controller/subsystem/mapping/proc/handle_mob_spawn_lowerlevel(lowerlevel_mob_count = 20 , lowerlevel_mob_multiplier = 1 , insecure_areas = /area/remains/insecure)
	//This proc spawns mobs under the main station ( 1st z level ), won't work on other maps rather than new_dawn ( uses specific areas )
	if(lowerlevel_mob_multiplier == 0 || lowerlevel_mob_count == 0) // We shouldn't spawn nobody
		return
	if(!insecure_areas)
		log_debug("There is no area to spawn mobs in lowerlevel")
		return
	var/list/mob_turfs = get_subarea_turfs( insecure_areas, list(/proc/not_turf_contains_dense_objects, /proc/IsTurfAtmosSafe) )
	if(!mob_turfs)
		log_debug("Failed to find any spawn turfs for mobs in lowerlevel")
		return

	// list of mobs, who can spawn in the stations lower level
	var/list/all_lowerlevel_mobs = list( /mob/living/simple_animal/hostile/giant_spider/hunter, /mob/living/simple_animal/hostile/giant_spider/guard,
	/mob/living/simple_animal/hostile/giant_spider, /mob/living/simple_animal/hostile/giant_spider/nurse, /mob/living/simple_animal/hostile/giant_spider/spitter )

	var/mobs_spawned = 0 // counter for debug
	for( var/i = 1 to ( lowerlevel_mob_count * lowerlevel_mob_multiplier) ) // The main fun
		if(!mob_turfs.len) // If we are out of turfs - stop spawning mobs
			break
		var/spot = pick_n_take(mob_turfs)
		var/M = pick(all_lowerlevel_mobs)
		new M(spot)
		mobs_spawned += 1
	log_debug("Managed to spawn [mobs_spawned] mobs in lowerlevel. [mob_turfs.len] spare turfs left.")