/datum/map/new_dawn

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod3/centcom,
		/area/shuttle/escape_pod4/centcom,
		/area/shuttle/escape_pod9/centcom,
		/area/shuttle/escape_pod10/centcom,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

//Halls
/area/hallway/central
	name = "\improper Central Hallway"
	icon_state = "centhall"

/area/hallway/central/north
	name = "\improper North Central Hallway"
	icon_state = "centhall"

/area/hallway/central/east
	name = "\improper East Hallway"
	icon_state = "centhall"

/area/hallway/central/south
	name = "\improper South Hallway"
	icon_state = "centhall"

/area/hallway/central/west
	name = "\improper West Hallway"
	icon_state = "centhall"

/area/hallway/north
	name = "\improper North Hallway"
	icon_state = "northhall"

/area/hallway/north/dorms
	name = "\improper North Dormitories Hallway"
	icon_state = "northhall"

/area/hallway/east
	name = "\improper East Hallway"
	icon_state = "easthall"

/area/hallway/east/departure
	name = "\improper Departure Hallway"
	icon_state = "escape"

/area/hallway/south
	name = "\improper South Hallway"
	icon_state = "southhall"

/area/hallway/west
	name = "\improper West Hallway"
	icon_state = "westhall"

/area/hallway/west/assistant
	name = "\improper Assistant Hallway"
	icon_state = "ashall"

/area/hallway/west/entry
	name = "\improper Entry Hallway"
	icon_state = "entry"

/area/hallway/west/guest
	name = "\improper Guest Hallway"
	icon_state = "entry"

//Maintenance
/area/maintenance/central
	name = "Central Maintenance"
	icon_state = "maintcentral"

/area/maintenance/north
	name = "North Maintenance"
	icon_state = "maintcentral"

/area/maintenance/north/brig
	name = "Brig Maintenance"
	icon_state = "maint_security"

/area/maintenance/north/eva
	name = "Eva Maintenance"
	icon_state = "maint_eva"

/area/maintenance/east
	name = "East Maintenance"
	icon_state = "maintcentral"

/area/maintenance/east/dormitories
	name = "Dormitories Maintenance"
	icon_state = "maint_dormitory"

/area/maintenance/east/bar
	name = "Bar Maintenance"
	icon_state = "maint_bar"

/area/maintenance/east/library
	name = "Library Maintenance"
	icon_state = "maint_library"

/area/maintenance/east/research
	name = "Research Maintenance"
	icon_state = "maint_research"

/area/maintenance/east/med
	name = "Medical Maintenance"
	icon_state = "maint_research"

/area/maintenance/south
	name = "South Maintenance"
	icon_state = "maintcentral"

/area/maintenance/south/engine
	name = "Engine Maintenance"
	icon_state = "maint_engine"

/area/maintenance/south/engineering
	name = "Engineering Maintenance"
	icon_state = "maint_engineering"

/area/maintenance/west
	name = "West Maintenance"
	icon_state = "maintcentral"

/area/maintenance/west/cargo
	name = "Cargo Maintenance"
	icon_state = "maint_cargo"

/area/maintenance/west/arrival
	name = "Arrival Maintenance"
	icon_state = "maint_arrival"

//Safe_rooms
/area/crew_quarters/safe_room
	name = "\improper Safe Room"
	icon_state = "crew_quarters"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/safe_room/bridge
	name = "\improper Bridge Safe Room"

// Substations
/area/maintenance/substation
	name = "Substation"
	icon_state = "substation"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/maintenance/substation/rnd
	name = "Research Substation"

/area/maintenance/substation/medical
	name = "Medical Substation"

/area/maintenance/substation/bridge
	name = "Bridge Substation"

/area/maintenance/substation/cargo
	name = "Cargo Substation"

/area/maintenance/substation/arrival
	name = "Arrival Substation"

/area/maintenance/substation/engineering
	name = "Engineering Substation"

/area/maintenance/substation/atmos
	name = "Atmos Substation"

/area/maintenance/substation/brig
	name = "Brig Substation"

/area/maintenance/substation/cryo
	name = "Cryo Substation"

/area/maintenance/substation/dormitories
	name = "Dormitories Substation"

/area/maintenance/substation/departure
	name = "Departure Substation"

/area/bridge/storage
	name = "\improper Bridge Storage"
	req_access = list(access_bridge)

// Shuttles
/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

/area/shuttle/escape_shuttle/station
	name = "Escape Shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//New Dawn large pods
/area/shuttle/escape_pod1/station
	name = "Escape Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod2/station
	name = "Escape Pod Two"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod3/station
	name = "Escape Pod Three"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//New Dawn small pods

/area/shuttle/escape_pod4/station
	name = "Escape Pod Four"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod5/station
	name = "Escape Pod Five"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod6/station
	name = "Escape Pod Six"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod7/station
	name = "Escape Pod Seven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Escape Pod Eight"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod9/station
	name = "Escape Pod Nine"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Charon

/area/exploration_shuttle/
	name = "\improper Charon"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/exploration_shuttle/cockpit
	name = "\improper Charon - Cockpit"
	req_access = list(access_expedition_shuttle)

/area/exploration_shuttle/atmos
	name = "\improper Charon - Atmos Compartment"

/area/exploration_shuttle/power
	name = "\improper Charon - Power Compartment"

/area/exploration_shuttle/crew
	name = "\improper Charon - Crew Compartment"

/area/exploration_shuttle/cargo
	name = "\improper Charon - Cargo Bay"

/area/exploration_shuttle/airlock
	name = "\improper Charon - Airlock Compartment"
/*
//Aquila

/area/aquila
	name = "\improper SEV Aquila"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/aquila/cockpit
	name = "\improper SEV Aquila - Cockpit"
	req_access = list(access_aquila)

/area/aquila/maintenance
	name = "\improper SEV Aquila - Maintenance"
	req_access = list(access_solgov_crew)

/area/aquila/storage
	name = "\improper SEV Aquila - Storage"
	req_access = list(access_solgov_crew)

/area/aquila/secure_storage
	name = "\improper SEV Aquila - Secure Storage"
	req_access = list(access_aquila)

/area/aquila/mess
	name = "\improper SEV Aquila - Mess Hall"

/area/aquila/passenger
	name = "\improper SEV Aquila - Passenger Compartment"

/area/aquila/medical
	name = "\improper SEV Aquila - Medical"

/area/aquila/head
	name = "\improper SEV Aquila - Head"

/area/aquila/airlock
	name = "\improper SEV Aquila - Airlock Compartment"
	req_access = list(access_solgov_crew)
*/
//Guppy

/area/guppy_hangar/start
	name = "\improper Guppy"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_guppy)


//Petrov

/area/shuttle/petrov
	name = "\improper SRV Petrov"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_petrov)

/area/shuttle/petrov/cell1
	name = "\improper SRV Petrov - Isolation Cell 1"
	icon_state = "shuttle"
/area/shuttle/petrov/cell2
	name = "\improper SRV Petrov - Isolation Cell 2"
	icon_state = "shuttlegrn"
/area/shuttle/petrov/cell3
	name = "\improper SRV Petrov - Isolation Cell 3"
	icon_state = "shuttle"

/area/shuttle/petrov/hallwaya
	name = "\improper SRV Petrov - Lower Hallway"
	icon_state = "escape"

/area/shuttle/petrov/security
	name = "\improper SRV Petrov - Security Office"
	icon_state = "checkpoint1"
	req_access = list(access_petrov_security)

/area/shuttle/petrov/rd
	icon_state = "heads_rd"
	name = "\improper SRV Petrov - CSO's Office"
	icon_state = "head_quarters"
	req_access = list(access_petrov_rd)

/area/shuttle/petrov/cockpit
	name = "\improper SRV Petrov - Cockpit"
	icon_state = "shuttlered"
	req_access = list(access_petrov_helm)

/area/shuttle/petrov/maint
	name = "\improper SRV Petrov - Maintenance"
	icon_state = "engine"
	req_access = list(access_petrov_maint)

/area/shuttle/petrov/analysis
	name = "\improper SRV Petrov - Analysis Lab"
	icon_state = "devlab"
	req_access = list(access_petrov_analysis)

/area/shuttle/petrov/toxins
	name = "\improper SRV Petrov - Toxins Lab"
	icon_state = "toxstorage"
	req_access = list(access_petrov_toxins)

/area/shuttle/petrov/rnd
	name = "\improper SRV Petrov - Fabricator Lab"
	icon_state = "devlab"

/area/shuttle/petrov/isolation
	name = "\improper SRV Petrov - Isolation Lab"
	icon_state = "xeno_lab"

/area/shuttle/petrov/phoron
	name = "\improper SRV Petrov - Sublimation Lab"
	icon_state = "toxstorage"
	req_access = list(access_petrov_phoron)

/area/shuttle/petrov/custodial
	name = "\improper SRV Petrov - Custodial"
	icon_state = "decontamination"

/area/shuttle/petrov/equipment
	name = "\improper SRV Petrov - Equipment Storage"
	icon_state = "locker"

/area/shuttle/petrov/eva
	name = "\improper SRV Petrov - EVA Storage"
	icon_state = "locker"

//Merchant
/area/shuttle/merchant/home
	name = "\improper Merchant Vessel"
	icon_state = "shuttlegrn"
	req_access = list(access_merchant)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

// Command
/area/command/conference
	name = "Briefing Room"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
/*
/area/command/captainmess
	name = "Officer's Mess"
	icon_state = "bar"
	sound_env = MEDIUM_SOFTFLOOR
*/
/area/command/pathfinder
	name = "\improper Pathfinder's Office"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pathfinder)

/area/command/pilot
	name = "\improper Pilot's Lounge"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pilot)

/area/command/armoury
	name = "\improper Emergency Armory"
	icon_state = "Warden"
	req_access = list(list(access_bridge, access_emergency_armory))
/*
/area/command/armoury/access
	name = "\improper Emergency Armory - Access"

/area/command/armoury/tactical
	name = "\improper Emergency Armory - Tactical"
	icon_state = "Tactical"
	req_access = list(access_emergency_armory)
*/
/area/command/disperser
	name = "\improper Obstruction Field Disperser"
	icon_state = "disperser"
	req_access = list(access_bridge)

/area/crew_quarters/heads
	icon_state = "heads"
	req_access = list(access_heads)

/area/crew_quarters/heads/cobed
	icon_state = "heads_cap"
	name = "\improper Command - CO's Quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/crew_quarters/heads/office/co
	icon_state = "heads_cap"
	name = "\improper Command - CO's Office"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/crew_quarters/heads/office/xo
	icon_state = "heads_hop"
	name = "\improper Command - XO's Office"
	req_access = list(access_hop)

/area/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "\improper Command - CSO's Office"
	req_access = list(access_rd)

/area/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "\improper Command - CMO's Office"
	req_access = list(access_cmo)

/area/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "\improper Engineering - CE's Office"
	req_access = list(access_ce)

/area/crew_quarters/heads/office/cos
	icon_state = "heads_hos"
	name = "\improper Command - CoS' Office"
	req_access = list(access_hos)

/area/crew_quarters/heads/office/cl
	icon_state = "heads_cl"
	name = "\improper Command - CL's Office"
	req_access = list(access_liaison)

/area/crew_quarters/heads/office/cl/backroom
	icon_state = "heads_cl"
	name = "\improper Command - CL's Backroom"
	req_access = list(access_liaison)

/area/crew_quarters/heads/office/sgr
	icon_state = "heads_sr"
	name = "\improper Command - SCGR's Office"
	req_access = list(access_representative)

// Engineering
/area/engineering/shieldbay
	name = "Shield Bay"
	icon_state = "engineering"
	req_access = list(access_engine, access_engine_equip)

/area/engineering/bluespace
	name = "Bluespace Drive Monitoring"
	icon_state = "engineering"
	color = COLOR_BLUE_GRAY
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)

/area/engineering/bluespace/containment
	name = "Bluespace Drive Containment"
	color = COLOR_BLUE_LIGHT

/area/engineering/atmos/aux
	name = "\improper Auxiliary Atmospherics"
	icon_state = "atmos"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/auxpower
	name = "\improper Auxiliary Power Storage"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/engineering/hardstorage
	name = "\improper Engineering Hard Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/engineering/hardstorage/aux
	name = "\improper Auxiliary Engineering Hard Storage"
	icon_state = "engineering_storage"

//Vacant Areas
/area/vacant
	name = "\improper Vacant Area"
	icon_state = "construction"

/area/vacant/armory
	name = "\improper Vacant Armory"
	icon_state = "Tactical"

/area/vacant/cabin
	name = "\improper Vacant Cabins"
	icon_state = "crew_quarters"

/area/vacant/mess
	name = "\improper Old Mess"
	icon_state = "bar"

/area/vacant/chapel
	name = "\improper Unused Chapel"
	icon_state = "chapel"

/area/vacant/infirmary
	name = "\improper Auxiliary Infirmary"
	icon_state = "medbay"

/area/vacant/monitoring
	name = "\improper Auxiliary Monitoring Room"
	icon_state = "engine_monitoring"

/area/vacant/prototype
	req_access = list(access_engine)

/area/vacant/prototype/control
	name = "\improper Prototype Fusion Reactor Control Room"
	icon_state = "engine_monitoring"

/area/vacant/prototype/engine
	name = "\improper Prototype Fusion Reactor Chamber"
	icon_state = "firingrange"

/area/vacant/cargo
	name = "\improper Requisitions Office"
	icon_state = "quart"

/area/vacant/brig
	name = "\improper Permanent Brig"
	icon_state = "brig"

/area/vacant/bar
	name = "\improper Hidden Bar"
	icon_state = "bar"

// Storage
/area/storage/auxillary
	name = "Auxillary Storage"
	icon_state = "auxstorage"
	req_access = list(access_cargo)

/area/storage/cargo
	name = "Cargo Storage"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_cargo)

/area/storage/expedition
	name = "Auxiliary Expedition Storage"
	icon_state = "storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(list(access_mining, access_xenoarch))

/area/storage/medical
	name = "Medical Storage"
	icon_state = "medbay4"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_medical)

/area/storage/research
	name = "Research Storage"
	icon_state = "toxstorage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_research)

// Supply

/area/quartermaster
	req_access = list(access_cargo)

/area/quartermaster/bunker
	name = "\improper Quartermaster Bunker"
	icon_state = "quart"
	req_access = list(access_qm)
	sound_env = SMALL_ENCLOSED

/area/quartermaster/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"

/area/quartermaster/storage
	name = "\improper Supply Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/quartermaster/sorting
	name ="\improper Supply Sorting"
	icon_state = "quartstorage"

/area/quartermaster/deckchief
	name = "\improper Deck Chief's Office"
	icon_state = "quart"
	req_access = list(access_qm)

/area/quartermaster/expedition
	name = "\improper Expedition Preparation"
	icon_state = "mining"
	req_access = list(list(access_mining, access_nanotrasen, access_xenoarch))

/area/quartermaster/expedition/eva
	name = "\improper Expedition EVA"
	icon_state = "mining"
	req_access = list(list(access_mining, access_xenoarch))

/area/quartermaster/expedition/storage
	name = "\improper Hangar Expedition Storage"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/quartermaster/expedition/atmos
	name = "\improper Hangar Atmospheric Storage"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/quartermaster/exploration
	name = "\improper Exploration Equipment"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/quartermaster/exploration/eva
	name = "\improper Exploration EVA"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/quartermaster/exploration/ready_room
	name = "\improper Exploration Preparation Room"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/quartermaster/shuttlefuel
	name = "\improper Shuttle Fuel Bay"
	icon_state = "toxstorage"
	req_access = list(list(access_hangar, access_cargo))

/area/quartermaster/hangar
	name = "\improper Hangar Deck"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_hangar)

/area/quartermaster/hangar/charon
	name = "\improper Hangar Deck Charon"

/area/quartermaster/hangar/storage
	name = "\improper Hangar Deck Storage Area"

/area/quartermaster/hangar/smlvessels
	name = "\improper Hangar Deck Small Vessels"
/*
/area/quartermaster/flightcontrol
	name = "\improper Flight Control Tower"
	icon_state = "hangar"
	req_access = list(access_hangar)
*/
// Research
/area/rnd/canister
	name = "\improper Canister Storage"
	icon_state = "toxstorage"

/area/rnd/development
	name = "\improper Fabricator Lab"
	icon_state = "devlab"

/area/rnd/entry
	name = "\improper Research and Development Access"
	icon_state = "decontamination"
	req_access = list()

/area/rnd/locker
	name = "\improper Research Locker Room"
	icon_state = "locker"

/area/rnd/storage
	name = "\improper Research Storage"
	icon_state = "storage"

/area/rnd/xenobiology/entry
	name = "\improper Xenobiology Access"
	icon_state = "xeno_lab"
	req_access = list() // This is a separate vestibule thing, needs low access.

// Crew areas
/area/crew_quarters/laundry
	name = "\improper Laundry Room"
	icon_state = "Sleep"

/area/crew_quarters/dorms
	name = "\improper Dormitories"
	icon_state = "Sleep"

/area/crew_quarters/relax
	name = "\improper Dormitories Room"
	icon_state = "Sleep"

/area/crew_quarters/concert
	name = "\improper Concert Room"
	icon_state = "Sleep"

/area/crew_quarters/library
	name = "\improper Library"
	icon_state = "Sleep"

/area/crew_quarters/bar
	name = "\improper Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_bar)

/area/crew_quarters/barman
	name = "\improper Barman's room"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_bar)

/*
/area/crew_quarters/head
	name = "\improper Third Deck Head"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/head/aux
	name = "\improper First Deck Head"

/area/crew_quarters/head/sauna
	name = "\improper Sauna"
	icon_state = "sauna"

/area/crew_quarters/gym
	name = "\improper Gym"
	icon_state = "fitness"
*/
/area/crew_quarters/casino
	name = "\improper Casino"
	icon_state = "casino"

/area/crew_quarters/mess
	name = "\improper Mess Hall"
	icon_state = "cafeteria"

/area/crew_quarters/smoking
	name = "\improper Smoking Room"
	icon_state = "toilet"

/area/crew_quarters/caf_toilet
	name = "\improper Cafe Toilet"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/galley
	name = "\improper Galley"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/galleybackroom
	name = "\improper Galley Cold Storage"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/sleep/bunk
	name = "\improper Bunk Room"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/adherent
	name = "\improper Adherent Maintenence"
	icon_state = "robotics"

/area/crew_quarters/office
	name = "\improper Computer Lab"
	icon_state = "conference"

/area/holocontrol
	name = "\improper Holodeck Control"
	icon_state = "Holodeck"

/area/hydroponics/storage
	name = "\improper Hydroponics Storage"

// Tcomms
/area/tcommsat/storage
	name = "\improper Telecoms Storage"
	icon_state = "tcomsatstore"

// Security

/area/security/prison
	name = "\improper Security - Prison"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/prison/detention
	name = "\improper Security - Prison Detention Rooms"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/prison/punishment
	name = "\improper Security - Prison Punishment Rooms"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/security/bo
	name = "\improper Security - Brig Chief"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/storage
	name = "\improper Security - Equipment Storage"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/armoury
	name = "\improper Security - Armory"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/detectives_office
	name = "\improper Security - Investigations Office"
	icon_state = "detective"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_forensics_lockers)

/area/security/locker
	name = "\improper Security - Locker Room"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/evidence
	name = "\improper Security - Evidence Storage"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/processing
	name = "\improper Security - Processing"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/questioning
	name = "\improper Security - Interview Room"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/wing
	name = "\improper Security Wing"
	icon_state = "security"

/area/security/court
	name = "\improper Court Room"
	icon_state = "security"

/area/security/torture
	name = "\improper Torture Chamber"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/interrogation
	name = "\improper Interrogation Room"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/meeting
	name = "\improper Meeting Room"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/rest
	name = "\improper Rest"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/latrine
	name = "\improper Latrine"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/teleport
	name = "\improper Teleport"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/gym
	name = "\improper GYM"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/special_armory
	name = "\improper Special Armory"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/bosnian_artillery
	name = "\improper Bosnian Artillery"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/artillery_front
	name = "\improper Artillery Front"
	icon_state = "security"
	req_access = list(access_brig)

/*
/area/security/bridgecheck
	name = "\improper Bridge Deck Security Checkpoint"
	icon_state = "checkpoint"
*/
// AI
/area/turret_protected/ai_foyer
	name = "\improper AI Chamber Foyer"
	icon_state = "ai_foyer"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/turret_protected/ai_outer_chamber
	name = "\improper Outer AI Chamber"
	icon_state = "ai_chamber"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

// Medbay

/area/medical/equipstorage
	name = "\improper Infirmary Equipment Storage"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical_equip)

/area/medical/infirmary
	name = "\improper Infirmary Hallway"
	icon_state = "medbay"
	req_access = list(access_medical)

/area/medical/infirmreception
	name = "\improper Infirmary Reception"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical)

/area/medical/locker
	name = "\improper Infirmary Locker Room"
	icon_state = "locker"
	req_access = list(access_medical_equip)

/area/crew_quarters/medical
	name = "\improper Medical chillzone"
	icon_state = "crew_quarters"
	req_access = list(access_medical)

/area/medical/subacute
	name = "\improper Sub-Acute Ward"
	icon_state = "patients"

/area/medical/counselor
	name = "\improper Counselor's Office"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)
	sound_env = SMALL_SOFTFLOOR

/area/medical/washroom
	name = "\improper Infirmary Washroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED
	req_access = list()

/area/chapel/crematorium
	name = "\improper Crematorium"
	icon_state = "chapel"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_crematorium)

/area/medical/virology
	name = "\improper Virology (decomissioned)"

// Shield Rooms
/area/shield
	name = "\improper Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/shield/bridge
	name = "\improper Bridge Shield Generator"

// Misc
/area/teleporter
	name = "\improper Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)

/area/maintenance/auxsolarbridge
	name = "Solar Maintenance - Bridge"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED

/area/solar/bridge
	name = "\improper Bridge Solar Array"
	icon_state = "panelsS"

/area/aux_eva
	name = "\improper Command EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

/area/thruster
	icon_state = "thruster"
	req_access = list(access_engine)

/area/thruster/NE
	name = "\improper First Deck Port Nacelle"

/area/thruster/SE
	name = "\improper First Deck Starboard Nacelle"

/area/thruster/SW
	name = "\improper Third Deck Port Nacelle"

/area/thruster/NW
	name = "\improper Third Deck Starboard Nacelle"

/area/engineering/fuelbay
	name = "\improper Fuel Bay"
	icon_state = "engineering"
	req_access = list(access_construction)

/area/engineering/wastetank
	name = "\improper Waste Tank"
	icon_state = "engineering"
	req_access = list(access_atmospherics)

// Command

/area/bridge
	name = "\improper Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/bridge/hallway
	name = "\improper Bridge Access Hallway"
	icon_state = "bridge_hallway"
	req_access = list(access_solgov_crew)

/area/bridge/hallway/port
	name = "\improper Bridge Port Access Hallway"

/area/bridge/hallway/starboard
	name = "\improper Bridge Starboard Access Hallway"

/area/bridge/meeting_room
	name = "\improper Command Meeting Room"
	icon_state = "bridge_meeting"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/bridge/disciplinary_board_room
	name = "\improper Disciplinary Board Room"
	sound_env = SMALL_ENCLOSED

/area/bridge/disciplinary_board_room/deliberation
	name = "\improper Deliberation Room"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/heads
	icon_state = "head_quarters"
	req_access = list(access_heads)

/area/maintenance/exterior
	name = "\improper Exterior Reinforcements"
	icon_state = "maint_exterior"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	req_access = list(access_external_airlocks, access_maint_tunnels)

// CentCom

/area/centcom/control
	name = "\improper Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "\improper Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "\improper Centcom Transport Shuttle"

/area/centcom/living
	name = "\improper Centcom Living Quarters"

/area/centcom/suppy
	name = "\improper Centcom Supply Shuttle"

/area/centcom/test
	name = "\improper Centcom Testing Facility"

// Solars
/area/maintenance/auxsolarport
	name = "Solar Maintenance - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/maintenance/auxsolarstarboard
	name = "Solar Maintenance - Starboard"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	req_access = list(access_engine_equip)

/area/solar/auxstarboard
	name = "\improper Fore Starboard Solar Array"
	icon_state = "panelsA"

/area/solar/port
	name = "\improper Port Auxiliary Solar Array"
	icon_state = "panelsP"

// Maintenance

/area/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

/area/maintenance/incinerator
	name = "\improper Incinerator"
	icon_state = "disposal"
	req_access = list(list(access_engine, access_medical, access_cargo))

/area/maintenance/waterstore
	name = "\improper Cistern"
	icon_state = "disposal"

// Storage

/area/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/storage/misc
	name = "Primary Tool Storage"
	icon_state = "storage"

/area/storage/tech
	name = "Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/storage/tools
	name = "Auxiliary Tool Storage"
	icon_state = "auxstorage"

// Holodecks

/area/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED

/area/holodeck/alphadeck
	name = "\improper Holodeck Alpha"

/area/holodeck/source_plating
	name = "\improper Holodeck - Off"

/area/holodeck/source_emptycourt
	name = "\improper Holodeck - Empty Court"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "\improper Holodeck - Boxing Court"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "\improper Holodeck - Basketball Court"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "\improper Holodeck - Thunderdome Court"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "\improper Holodeck - Courtroom"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "\improper Holodeck - Beach"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "\improper Holodeck - Wildlife Simulation"

/area/holodeck/source_meetinghall
	name = "\improper Holodeck - Meeting Hall"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "\improper Holodeck - Theatre"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "\improper Holodeck - Picnic Area"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "\improper Holodeck - Snow Field"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "\improper Holodeck - Desert"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "\improper Holodeck - Space"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "\improper Holodeck - Cafe"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "\improper Holodeck - Volleyball"
	sound_env = PLAIN

/area/holodeck/source_temple
	name = "\improper Holodeck - Temple"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_plaza
	name = "\improper Holodeck - Plaza"
	sound_env = SMALL_ENCLOSED

// Engineering

/area/engineering/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/drone_fabrication
	name = "\improper Engineering Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_robotics)

/area/engineering/engine_monitoring
	name = "\improper Engine Monitoring Room"
	icon_state = "engine_monitoring"
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engineering_monitoring
	name = "\improper Engineering Monitoring Room"
	icon_state = "engine_monitoring"
	req_access = list(access_engine)

/area/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"
	req_access = list()

/area/engineering/locker_room
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/engineering/engineering_bay
	name = "\improper Engineering Bay"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"
	req_access = list(list(access_engine_equip, access_atmospherics))

/area/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_atmospherics)

// Medical
/area/medical/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/medical/exam_room
	name = "\improper Exam Room"
	icon_state = "exam_room"

/area/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

/area/medical/morgue/autopsy
	name = "\improper Autopsy"
	icon_state = "autopsy"

/area/medical/sleeper
	name = "\improper Emergency Treatment Centre"
	icon_state = "exam_room"

/area/medical/surgery
	name = "\improper Operating Theatre 1"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/medical/surgery2
	name = "\improper Operating Theatre 2"
	icon_state = "surgery"
	req_access = list(list(access_surgery, access_robotics_engineering))

// Research
/area/assembly
	req_access = list(access_robotics_engineering)

/area/assembly/chargebay
	name = "\improper Mech Bay"
	icon_state = "mechbay"

/area/assembly/robotics
	name = "\improper Robotics Lab"
	icon_state = "robotics"

/area/assembly/robotics/lower
	name = "\improper Lower Robotics Lab"

/area/assembly/robotics/surgery
	name = "\improper Robotics Operating Theatre"

/area/rnd/misc_lab
	name = "\improper Miscellaneous Research"
	icon_state = "misclab"

/area/rnd/research
	name = "\improper Research Hallway"
	icon_state = "research"

/area/rnd/breakroom
	name = "\improper Research Break Room"
	icon_state = "researchbreak"
	req_access = list(list(access_research, access_nanotrasen))

// Shuttles
/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod4/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod9/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod10/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

// Secure

/area/prison/solitary
	name = "Solitary Confinement"
	icon_state = "brig"
	req_access = list(access_brig)

/area/security/nuke_storage
	name = "\improper Vault"
	icon_state = "nuke_storage"
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT
	req_access = list(access_heads_vault)

// Crew

/area/crew_quarters/sleep/cryo
	name = "\improper Cryogenic Storage"
	icon_state = "Sleep"

/area/hydroponics
	name = "\improper Hydroponics"
	icon_state = "hydro"

/area/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

// Tcomm
/area/tcommsat/
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')
	req_access = list(access_tcomsat)

/area/tcommsat/chamber
	name = "\improper Telecoms Central Compartment"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "\improper Telecoms Control Room"
	icon_state = "tcomsatcomp"

// AI

/area/ai_monitored
	name = "AI Monitored Area"

/area/ai_monitored/storage/eva
	name = "\improper EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

/area/turret_protected/ai
	name = "\improper AI Chamber"
	icon_state = "ai_chamber"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload
	name = "\improper AI Upload Chamber"
	icon_state = "ai_upload"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload_foyer
	name = "\improper  AI Upload Access"
	icon_state = "ai_foyer"
	ambience = list('sound/ambience/ambimalf.ogg')
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

// Chapel

/area/chapel/main
	name = "\improper Chapel"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED

/area/chapel/office
	name = "\improper Chaplain's Office"
	req_access = list(access_chapel_office)
	color = COLOR_GRAY80
	sound_env = SMALL_SOFTFLOOR

// Merchant

/area/merchant_station
	name = "\improper Merchant Station"
	icon_state = "LP"
	req_access = list(access_merchant)

// ACTORS GUILD
/area/acting
	name = "\improper Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Backstage"

/area/acting/stage
	name = "\improper Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"

/***************************************/
/* UNDERGROUND ( Old Station Remains ) */
/***************************************/

// BRIG REMAINS

//insecure brig

/area/remains/insecure/brig
	name = "\improper Insecure Brig"
	icon_state = "security"

/area/remains/insecure/brig/primary_hall
	name = "\improper Old Brig Primary Hall"
	icon_state = "security"

/area/remains/insecure/brig/rooms
	name = "\improper Insecure Brig Rooms"
	icon_state = "security"

/area/remains/insecure/brig/rooms/north
	name = "\improper Insecure North Brig Rooms"
	icon_state = "Warden"

/area/remains/insecure/brig/rooms/centre
	name = "\improper Insecure Central Brig Rooms"
	icon_state = "security"

/area/remains/insecure/brig/rooms/east
	name = "\improper Insecure East Brig Rooms"
	icon_state = "security"

/area/remains/insecure/brig/rooms/south
	name = "\improper Insecure South Brig Rooms"
	icon_state = "detective"

//secure brig

/area/remains/secure/brig
	name = "\improper Secure Brig"
	icon_state = "security"

/area/remains/secure/brig/court
	name = "\improper Secure Brig Court"
	icon_state = "security"

//* EVA, GATEWAY, NUKE, CARGO *//

/area/remains/secure/nuke
	name = "\improper Secure Vault Remains"
	icon_state = "nuke_storage"

/area/remains/insecure/eva
	name = "\improper Insecure EVA Remains"
	icon_state = "eva"

/area/remains/insecure/gateway
	name = "\improper Insecure Gateway"
	icon_state = "eva"

/area/remains/insecure/cargo
	name = "\improper Insecure Cargo"
	icon_state = "quart"

//* CENTER *//

//insecure center

/area/remains/insecure/center
	name = "\improper Insecure Center"
	icon_state = "centhall"

/area/remains/insecure/center/central_hall
	name = "\improper Insecure Centrall Hall"
	icon_state = "centhall"

/area/remains/insecure/center/teleporter
	name = "\improper Insecure Teleporter"
	icon_state = "teleporter"

/area/remains/insecure/center/ai
	name = "\improper Insecure AI"
	icon_state = "ai_foyer"

//secure center

/area/remains/secure/center
	name = "\improper Secure Center"
	icon_state = "bridge"

/area/remains/secure/center/bridge
	name = "\improper Secure Bridge"
	icon_state = "bridge"

/area/remains/secure/center/hop
	name = "\improper Secure HOP"
	icon_state = "heads_hop"

/area/remains/secure/center/captain
	name = "\improper Secure Captain room"
	icon_state = "heads_cap"

//* ARRIVAL *//

//insecure arrival

/area/remains/insecure/arrival
	name = "\improper Insecure Arrival"
	icon_state = "entry"

/area/remains/insecure/arrival/primaty_hall
	name = "\improper Insecure Arrival Primary Hall"
	icon_state = "westhall"

/area/remains/insecure/arrival/rooms
	name = "\improper Insecure Arrival Rooms"
	icon_state = "entry"

/area/remains/insecure/arrival/rooms/north
	name = "\improper Insecure Arrival North Rooms"
	icon_state = "ashall"

/area/remains/insecure/arrival/rooms/south
	name = "\improper Insecure Arrival South Rooms"
	icon_state = "ashall"

//secure arrival

/area/remains/secure/arrival
	name = "\improper Secure Arrival"
	icon_state = "entry"

/area/remains/secure/arrival/shuttle
	name = "\improper Secure Arrival Shuttle"
	icon_state = "entry"

/area/remains/secure/arrival/ladder
	name = "\improper Secure Arrival Ladder"
	icon_state = "entry"

/area/remains/secure/arrival/checkpoint
	name = "\improper Secure Arrival Checkpoint"
	icon_state = "security"

//* ENGINEERING *//

// insecure engineering

/area/remains/insecure/engineering
	name = "\improper Insecure Engineering"
	icon_state = "engine"

/area/remains/insecure/engineering/west
	name = "\improper Insecure West Engineering"
	icon_state = "atmos_storage"

/area/remains/insecure/engineering/east
	name = "\improper Insecure East Engineering"
	icon_state = "engine"

//secure engineering

/area/remains/secure/engineering
	name = "\improper Secure Engineering"
	icon_state = "engine"

/area/remains/secure/engineering/ladder
	name = "\improper Secure Engineering Ladder"
	icon_state = "engineering_foyer"

/area/remains/secure/engineering/south
	name = "\improper Secure South Engineering"
	icon_state = "engineering_storage"

//* DORMS *//

//insecure dorms

/area/remains/insecure/dorms
	name = "\improper Insecure Dormitories"
	icon_state = "construction"

/area/remains/insecure/dorms/primary_hall
	name = "\improper Insecure Dormitories Primary Hall"
	icon_state = "easthall"

/area/remains/insecure/dorms/kitchen
	name = "\improper Insecure Kitchen"
	icon_state = "kitchen"

/area/remains/insecure/dorms/kitchen/storage
	name = "\improper Insecure Kitchen Storage"
	icon_state = "kitchen"

/area/remains/insecure/dorms/hidroponics
	name = "\improper Insecure Hydroponics"
	icon_state = "hydro"

//secure dorms

/area/remains/secure/dorms
	name = "\improper Secure Dormitories"
	icon_state = "crew_quarters"

/area/remains/secure/dorms/bar
	name = "\improper Secure Bar"
	icon_state = "bar"

//* DEPARTURE *//

//insecure departure

/area/remains/insecure/departure
	name = "\improper Insecure Departure"
	icon_state = "escape"

/area/remains/insecure/departure/lounge
	name = "\improper Insecure Departure Lounge"
	icon_state = "escape"

/area/remains/insecure/departure/library
	name = "\improper Insecure Library"
	icon_state = "crew_quarters"

/area/remains/insecure/departure/chapel
	name = "\improper Insecure Chapel"
	icon_state = "chapel"

//secure departure

/area/remains/secure/departure
	name = "\improper Secure Departure"
	icon_state = "escape"

/area/remains/secure/departure/lounge
	name = "\improper Secure Departure Lounge"
	icon_state = "security"

//* RESEARCH & DEVELOPMENT *//

//insecure rnd

/area/remains/insecure/rnd
	name = "\improper Insecure Research"
	icon_state = "research"

/area/remains/insecure/rnd/rooms
	name = "\improper Insecure Research Rooms"
	icon_state = "research"

/area/remains/insecure/rnd/rooms/north
	name = "\improper Insecure Research North Rooms"
	icon_state = "research"

/area/remains/insecure/rnd/rooms/west
	name = "\improper Insecure Research West Rooms"
	icon_state = "researchbreak"

/area/remains/insecure/rnd/rooms/east
	name = "\improper Insecure Research East Rooms"
	icon_state = "toxstorage"

//secure rnd

/area/remains/secure/rnd
	name = "\improper Secure Research"
	icon_state = "research"

/area/remains/secure/rnd/ladder
	name = "\improper Secure Research Ladder"
	icon_state = "misclab"

/area/remains/secure/rnd/rd
	name = "\improper Secure RD office"
	icon_state = "heads_rd"

//* MEDICAL *//

//insecure med

/area/remains/insecure/med
	name = "\improper Insecure Medical Department"
	icon_state = "medbay"

/area/remains/insecure/med/morgue
	name = "\improper Insecure Morgue"
	icon_state = "morgue"

/area/remains/insecure/med/rooms
	name = "\improper Insecure Medical Department Rooms"
	icon_state = "medbay"

/area/remains/insecure/med/rooms/south
	name = "\improper Insecure Medical Department South Rooms"
	icon_state = "medbay"

/area/remains/insecure/med/rooms/north
	name = "\improper Insecure Medical Department North Rooms"
	icon_state = "medbay2"

/area/remains/insecure/med/rooms/center
	name = "\improper Insecure Medical Department Central Rooms"
	icon_state = "surgery"

//secure med

/area/remains/secure/med
	name = "\improper Secure Medical Department"
	icon_state = "medbay"

/area/remains/secure/med/ladder
	name = "\improper Secure Medical Department Ladder"
	icon_state = "patients"

/area/remains/secure/med/toxlab_entry
	name = "\improper Secure Toxic Lab Entry"
	icon_state = "chem"

/area/remains/secure/med/room
	name = "\improper Secure Medical Department Room"
	icon_state = "medbay"

/area/remains/secure/med/room/north
	name = "\improper Secure Medical Department North Room"
	icon_state = "medbay3"

/area/remains/secure/med/room/centeral
	name = "\improper Secure Medical Department Central Room"
	icon_state = "medbay4"

//* MAINTENANCE REMAINS *//

//insecure maintenance

/area/remains/insecure/maintenance
	name = "\improper Insecure Maintenance"
	icon_state = "maintcentral"

/area/remains/insecure/maintenance/brig
	name = "\improper Insecure Brig Maintenance"
	icon_state = "maint_security"

/area/remains/insecure/maintenance/brig/west
	name = "\improper Insecure West Brig Maintenance"
	icon_state = "maint_security"

/area/remains/insecure/maintenance/brig/east
	name = "\improper Insecure East Brig Maintenance"
	icon_state = "maint_security"

/area/remains/insecure/maintenance/cargo
	name = "\improper Insecure Cargo Maintenance"
	icon_state = "maint_cargo"

/area/remains/insecure/maintenance/eng
	name = "\improper Insecure Engineering Maintenance"
	icon_state = "maint_engineering"

/area/remains/insecure/maintenance/library
	name = "\improper Insecure Library Maintenance"
	icon_state = "maint_library"

/area/remains/insecure/maintenance/departure
	name = "\improper Insecure Departure Maintenance"
	icon_state = "maintcentral"

/area/remains/insecure/maintenance/med
	name = "\improper Insecure Medical Maintenance"
	icon_state = "maint_research"

//secure maintenance

/area/remains/secure/maintenance
	name = "\improper Secure Maintenance"
	icon_state = "maintcentral"

/area/remains/secure/maintenance/brig
	name = "\improper Secure Brig Maintenance"
	icon_state = "maint_security"

/area/remains/secure/maintenance/brig/west
	name = "\improper Secure West Brig Maintenance"
	icon_state = "maint_security"

/area/remains/secure/maintenance/brig/east
	name = "\improper Secure East Brig Maintenance"
	icon_state = "maint_security"

/area/remains/secure/maintenance/rnd
	name = "\improper Secure Research Maintenance"
	icon_state = "maint_research"

//* USED AREAS* //

/area/remains/secure/used
	name = "\improper Secure Used Area"
	icon_state = "storage"

/area/remains/secure/used/bunker
	name = "\improper Heads Bunker"
	icon_state = "heads"

/area/remains/secure/used/bartender
	name = "\improper Bartender's Storage"
	icon_state = "storage"

/area/remains/secure/used/kitchen_storage
	name = "\improper Lower Kitchen Storage"
	icon_state = "storage"