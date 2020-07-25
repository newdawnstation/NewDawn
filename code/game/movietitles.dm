#define CREDIT_ROLL_SPEED 185
#define CREDIT_SPAWN_SPEED 20
#define CREDIT_ANIMATE_HEIGHT (14 * world.icon_size)
#define CREDIT_EASE_DURATION 22

GLOBAL_LIST(end_titles)

client
	var/list/credits

/client/proc/RollCredits()
	set waitfor = FALSE

	if(get_preference_value(/datum/client_preference/show_credits) != GLOB.PREF_YES)
		return

	if(!GLOB.end_titles)
		GLOB.end_titles = generate_titles()

	LAZYINITLIST(credits)

	if(mob)
		mob.overlay_fullscreen("fishbed",/obj/screen/fullscreen/fishbed)
		mob.overlay_fullscreen("fadeout",/obj/screen/fullscreen/fadeout)

		if(mob.get_preference_value(/datum/client_preference/play_lobby_music) == GLOB.PREF_YES)
			sound_to(mob, sound(null, channel = GLOB.lobby_sound_channel))
			if(GLOB.end_credits_song == null)
				var/title_song = pick('sound/music/THUNDERDOME.ogg', 'sound/music/europa/Chronox_-_03_-_In_Orbit.ogg', 'sound/music/europa/asfarasitgets.ogg')
				sound_to(mob, sound(title_song, wait = 0, volume = 40, channel = GLOB.lobby_sound_channel))
			else if(get_preference_value(/datum/client_preference/play_admin_midis) == GLOB.PREF_YES)				
				sound_to(mob, sound(GLOB.end_credits_song, wait = 0, volume = 40, channel = GLOB.lobby_sound_channel))
	sleep(50)
	var/list/_credits = credits
	verbs += /client/proc/ClearCredits
	for(var/I in GLOB.end_titles)
		if(!credits)
			return
		var/obj/screen/credit/T = new(null, I, src)
		_credits += T
		T.rollem()
		sleep(CREDIT_SPAWN_SPEED)
	sleep(CREDIT_ROLL_SPEED - CREDIT_SPAWN_SPEED)

	ClearCredits()
	verbs -= /client/proc/ClearCredits

/client/proc/ClearCredits()
	set name = "Stop End Titles"
	set category = "OOC"
	verbs -= /client/proc/ClearCredits
	QDEL_NULL_LIST(credits)
	mob.clear_fullscreen("fishbed")
	mob.clear_fullscreen("fadeout")
	sound_to(mob, sound(null, channel = GLOB.lobby_sound_channel))

/obj/screen/credit
	icon_state = "blank"
	mouse_opacity = 0
	alpha = 0
	screen_loc = "1,1"
	plane = HUD_PLANE
	layer = HUD_ABOVE_ITEM_LAYER
	var/client/parent
	var/matrix/target

/obj/screen/credit/Initialize(mapload, credited, client/P)
	. = ..()
	parent = P
	maptext = {"<div style="font:'Small Fonts'">[credited]</div>"}
	maptext_height = world.icon_size * 2
	maptext_width = world.icon_size * 14

/obj/screen/credit/proc/rollem()
	var/matrix/M = matrix(transform)
	M.Translate(0, CREDIT_ANIMATE_HEIGHT)
	animate(src, transform = M, time = CREDIT_ROLL_SPEED)
	target = M
	animate(src, alpha = 255, time = CREDIT_EASE_DURATION, flags = ANIMATION_PARALLEL)
	spawn(CREDIT_ROLL_SPEED - CREDIT_EASE_DURATION)
		if(!QDELETED(src))
			animate(src, alpha = 0, transform = target, time = CREDIT_EASE_DURATION)
			sleep(CREDIT_EASE_DURATION)
			qdel(src)
	parent.screen += src

/obj/screen/credit/Destroy()
	var/client/P = parent
	if(parent)
		P.screen -= src
	LAZYREMOVE(P.credits, src)
	parent = null
	return ..()

/proc/generate_titles()
	var/list/titles = list()
	var/list/cast = list()
	var/list/chunk = list()
	var/list/possible_titles = list()
	var/chunksize = 0
	if(!GLOB.end_credits_title)
		/* Establish a big-ass list of potential titles for the "episode". */
		possible_titles += "[pick("ПАДЕНИЕ ", "ВОСХОД ", "БЕДА ", "ПОСЛЕДНЕЕ ПРИСТАНИЩЕ ", "ТЁМНАЯ СТОРОНА ", "ОПУСТОШЕНИЕ ", "РАСПРОСТРАНЕНИЕ ", "КРИЗИС ")]\
							 [pick("КОСМОНАВТА", "ЧЕЛОВЕЧЕСТВА", "ЧЕСТИ", "РАССУДКА", "ШИМПАНЗЕ", "ЦЕН РАЗДАТЧИКА", "ГИГАНСКИХ БРОНИРОВАННЫХ", "УБОРЩИКА",\
							"СУПЕРМАТЕРИИ", "МЕДИЦИНСКОГО ОТДЕЛА", "ИНЖЕНЕРНОГО ОТДЕЛА", "СЛУЖБЫ БЕЗОПАСНОСТИ", "ИССЛЕДОВАТЕЛЬСКОГО ОТДЕЛА", "СЕРВИСА", "КОММАНДОВАНИЯ", "ИССЛЕДОВАТЕЛЕЙ", "ПЕРВОПРОХОДЦА")]"//,\
		//					"[uppertext(GLOB.using_map.station_name)]")]"
		possible_titles += "КОМАНДА [pick("СТАНОВИТСЯ РАСИСТСКОЙ", "МАРИНУЕТСЯ", "ЗАБОЛЕВАЕТ НЕИЗЛЕЧИМОЙ БОЛЕЗНЬЮ", "ПОЛУЧАЕТ ПИЦЦУ", "ПОЛУЧАЕТ ВАЖНЫЙ УРОК", "ОТДЫХАЕТ", "ОБКУРИЛАСЬ", "ПРОДОЛЖАЕТ ЖИТЬ", "ВСПОМИНАЕТ ДЕТСТВО", "РАЗВЯЗЫВАЕТ ГРАЖДАНСКУЮ ВОЙНУ", "ПЛОХО ПОХМЕЛИВШИХСЯ", "СЕРЬЁЗНО ЗАДУМАЛАСЬ О [pick("НАРКОТИКАХ", "РАЗБОЕ", "ПРОДУКТИВНОСТИ", "ДРЕВНИХ СОВЕТСКИХ МУЛЬТФИЛЬМАХ", "КОСМОБОЛЬЦАХ", "ПРОЦЕДУРАХ ДЕКОМПРЕССИИ")]")]"
		possible_titles += "КОМАНДА УЗНАЁТ О [pick("ЛЮБВИ", "ПСИХОТРОПНЫХ ВЕЩЕСТВАХ", "ОПАСНОСТЯХ ОТМЫВАНИЯ ДЕНЕГ", "ЧУВСТВИТЕЛЬНОСТИ КСЕНОСОВ", "ИНВЕСТИЦИОННОМ МОШЕННИЧЕСТВЕ", "ЗЛОУПОТРЕБЛЕНИИ КЕЛОТАНОМ", "РАДИАЦИОННОЙ ЗАЩИТЕ", "СВЯЩЕННОЙ ГЕОМЕТРИИ", "ТЕОРИИ СТРУН", "АБСТРАКТНОЙ МАТЕМАТИКЕ", "РИТУАЛАХ СПАРИВАНИЯ [pick("УНАТХОВ", "СКРЕЛЛОВ", "ДИОН", "КХААРМАНОВ", "ВОКСОВ", "СЕРПЕНТИДОВ")]", "ДРЕВНЕЙ КИТАЙСКОЙ МЕДЕЦИНЕ")]"
//		possible_titles += "A VERY [pick("CORPORATE", "NANOTRASEN", "FLEET", "HAPHAESTUS", "DAIS", "XENOLIFE", "EXPEDITIONARY", "DIONA", "PHORON", "MARTIAN", "SERPENTID")] [pick("CHRISTMAS", "EASTER", "HOLIDAY", "WEEKEND", "THURSDAY", "VACATION")]"
		possible_titles += "[pick("ПУШКИ, ПУШКИ ПОВСЮДУ", "МАЛЕНЬКИЙ АРМАЛИС", "ТО, ЧТО ПРОИСХОДИТ ЕСЛИ СМЕШАТЬ ОБСЛУЖИВАЮЩИХ ДРОНОВ С КОММЕРЧЕСКОЙ УПАКОВОЧНОЙ ПЕНОЙ", "В АТАКУ! В АТАКУ! В АТАКУ!", "СЕКС БОМБА", "ЛЕГЕНДА ИНОПЛАНЕТНОГО АРТЕФАКТА: ЧАСТЬ [pick("I","II","III","IV","V","VI","VII","VIII","IX", "X", "C","M","L")]")]"
		possible_titles += "[pick("ПОХОЖДЕНИЯ ", "СИЛА ", "ПРИКЛЮЧЕНИЯ ")] [pick("ДРАКОНА", "ЧЕРНОКНИЖНИКА", "УБОРОНОЙ", "ПУШКИ", "РЕКЛАМЫ", "ПСА", "МОНОКСИДА УГЛЕРОДА", "НИНДЗИ", "ВОЛШЕБНИКА", "СОКРАТА", "ПОЛИТИЧЕСКИ МОТИВИРОВАННЫХ ЧЛЕНОВ КОМАНДЫ")]"
		possible_titles += "[pick("ДЕНЬ В КОТОРЫЙ СТАНЦИЯ ПРОДОЛЖИЛА РЕЯТЬ НАД ПЛАНЕТОЙ", "ОХОТА ЗА ЗЕЛЁНЫМ СЛОНИКОМ", "ЧУЖОЙ ПРОТИВ РАЗДАТЧИКА", "КОСМИЧЕСКИЙ ПУТЬ")]"
		titles += "<center><h1>ЭПИЗОД [rand(1,1000)]<br>[pick(possible_titles)]<h1></h1></h1></center>"
	else
		titles += "<center><h1>ЭПИЗОД [rand(1,1000)]<br>[GLOB.end_credits_title]<h1></h1></h1></center>"

	for(var/mob/living/carbon/human/H in GLOB.living_mob_list_|GLOB.dead_mob_list_)
		if(findtext_char(H.real_name,"(mannequin)"))
			continue
		if(H.isMonkey() && findtext_char(H.real_name,"[lowertext(H.species.name)]")) //no monki
			continue
		if(H.timeofdeath && H.timeofdeath < 5 MINUTES) //don't mention these losers (prespawned corpses mostly)
			continue
		if(!cast.len && !chunksize)
			chunk += "В РОЛЯХ:"
		var/job = ""
		if(GetAssignment(H) != "Unassigned")
			job = ", [uppertext(GetAssignment(H))]"
		var/used_name = H.real_name
		var/datum/computer_file/report/crew_record/R = get_crewmember_record(H.real_name)
		if(R && R.get_rank())
			var/datum/mil_rank/rank = mil_branches.get_rank(R.get_branch(), R.get_rank())
			if(rank.name_short)
				used_name = "[rank.name_short] [used_name]"
		var/showckey = 0
		if(H.ckey && H.client)			
			if(H.client.get_preference_value(/datum/client_preference/show_ckey_credits) == GLOB.PREF_SHOW)
				showckey = 1
		var/decl/cultural_info/actor_culture = SSculture.get_culture(H.get_cultural_value(TAG_CULTURE))
		if(!actor_culture || !(H.species.spawn_flags & SPECIES_CAN_JOIN) || prob(10))
			actor_culture = SSculture.get_culture(CULTURE_HUMAN)
		if(!showckey)
			if(prob(90))
				chunk += "[actor_culture.get_random_name(H.gender)]\t \t \t \t[uppertext(used_name)][job]"
			else				
				var/datum/gender/G = gender_datums[H.gender]
				chunk += "[used_name]\t \t \t \t[uppertext(G.him)]SELF"
		else
			chunk += "[uppertext(actor_culture.get_random_name(H.gender))] a.k.a. '[uppertext(H.ckey)]'\t \t \t \t[uppertext(used_name)][job]"
		chunksize++
		if(chunksize > 2)
			cast += "<center>[jointext(chunk,"<br>")]</center>"
			chunk.Cut()
			chunksize = 0
	if(chunk.len)
		cast += "<center>[jointext(chunk,"<br>")]</center>"

	titles += cast

	var/list/corpses = list()
	var/list/monkies = list()
	for(var/mob/living/carbon/human/H in GLOB.dead_mob_list_)
		if(H.timeofdeath < 5 MINUTES) //no prespawned corpses
			continue
		if(H.isMonkey() && findtext_char(H.real_name,"[lowertext(H.species.name)]"))
			monkies[H.species.name] += 1
		else if(H.real_name)
			corpses += H.real_name
	for(var/spec in monkies)
		var/datum/species/S = all_species[spec]
		corpses += "[monkies[spec]] [lowertext(monkies[spec] > 1 ? S.name_plural : S.name)]"
	if(corpses.len)
		titles += "<center>ОСНОВАНО НА РЕАЛЬНЫХ СОБЫТИЯХ<br>В память о [english_list(corpses)].</center>"

	var/list/staff = list("ПРОИЗВОДСТВЕННЫЙ ПЕРСОНАЛ:")
	var/list/staffjobs = list("Разносчик кофе", "Оператор", "Злой Крикун", "Сидящий оператор", "Хореограф", "Исторический консультант", "Дизайнер костюмов", "Старший редактор", "Исполнительный Ассистент")
	var/list/goodboys = list()
	for(var/client/C)
		if(!C.holder)
			continue
		if(C.holder.rights & (R_DEBUG|R_ADMIN))
			var/decl/cultural_info/cult = SSculture.cultural_info_by_name[pick(SSculture.cultural_info_by_name)]
			staff += "[uppertext(pick(staffjobs))] - [cult.get_random_name(pick(MALE, FEMALE))] a.k.a. '[C.key]'"
		else if(C.holder.rights & R_MOD)
			goodboys += "[C.key]"

	titles += "<center>[jointext(staff,"<br>")]</center>"
	if(goodboys.len)
		titles += "<center>Хорошие мальчики:<br>[english_list(goodboys)]</center><br>"

	var/disclaimer = "<br>Спонсировано [GLOB.using_map.company_name].<br>Все права защищены.<br>\
					 Данное произведение защищено законом об авторских правах Центрального Правительства Сола<br> и других государств галактики.<br>\
					 Впервые опубликовано на [pick("Марсе", "Луне", "Земле", "Венере", "Фобосе", "Цересе", "Тиамате", "Сети Эпсилон", "Эосе", "Плетоне", "Оуере",\
					 "Лордании", "Кингстоне", "Цину", "Юклиде V", "Лорримане", "Терстене", "Гайе")].<br>"
	disclaimer += pick("Пародировать запрещено. ЗАПРЕЩЕНО.", 
					   "Все трюки были выполнены низкооплачиваемыми каскадёрами. НЕ ПЫТАТЬСЯ повторить дома.",
					   "[GLOB.using_map.company_name] не поддерживает показанного поведения и не несёт отвественности за лица, которые будут следовать увиденному.",
					   "Любое неавторизованное копирование, распространение или показ материала фильма (включая музыкальные композиции)<br>\
						может привести к вызову команды экстренного реагирования на ваш адрес с целью изъятия материала.",
						"История, личности фигурирующие в ней и запечатлённые события являются худежственным допущением и любые совпадения с реальными<br>\
						личностями (живими или мёртыми), местами, зданиями, и продуктами являются не предумышленными.<br>\
						Данный фильм основан на реальных событиях и все личности в нём имеют свои реальные прототипы.",
						"Ни один человек или субъект связанный с данным фидьмом не получил за него никаких срудств или другого вознаграждения, а также не вступал ни в какие соглашения<br>\
						связанные с запечатлением тобачных изделий, несмотря на большое количество показанного курения.<br>\
						(Данный дисклеймер спонсирован Канцероной - Канцерогены наше всё!(TM)).",
						"При съёмках данного произведения ни одно животное не пострадало, за исключением тех, что ранее были включены в список, как мёртвые. Не пытаться повторить дома.")
	titles += "<hr>"
	titles += "<center><span style='font-size:6pt;'>[JOINTEXT(disclaimer)]</span></center>"

	return titles