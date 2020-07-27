/datum/language/binary
	name = LANGUAGE_ROBOT_GLOBAL
	desc = "Большинство учереждений людей поддерживает свободное использование протоколов коммуникации и маршрутизаторов для синтетиков."
	colour = "say_quote"
	speech_verb = "утверждает"
	ask_verb = "вопрашает"
	exclaim_verb = "восклицает"
	key = "b"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	var/drone_only

/datum/language/binary/broadcast(var/mob/living/speaker,var/message,var/speaker_mask)

	if(!speaker.binarycheck())
		return

	if (!message)
		return

	var/message_start = "<i><span class='game say'>[name], <span class='name'>[speaker.name]</span>"
	var/message_body = "<span class='message'>[speaker.say_quote(message)], \"[message]\"</span></span></i>"

	for (var/mob/observer/ghost/O in GLOB.ghost_mob_list)
		O.show_message("[message_start] ([ghost_follow_link(speaker, O)]) [message_body]", 2)

	for (var/mob/M in GLOB.dead_mob_list_)
		if(!istype(M,/mob/new_player) && !istype(M,/mob/living/carbon/brain)) //No meta-evesdropping
			M.show_message("[message_start] ([ghost_follow_link(speaker, M)]) [message_body]", 2)

	for (var/mob/living/S in GLOB.living_mob_list_)
		if(drone_only && !istype(S,/mob/living/silicon/robot/drone))
			continue
		else if(istype(S , /mob/living/silicon/ai))
			message_start = "<i><span class='game say'>[name], <a href='byond://?src=\ref[S];track2=\ref[S];track=\ref[speaker];trackname=[html_encode(speaker.name)]'><span class='name'>[speaker.name]</span></a></span></i>"
		else if (!S.binarycheck())
			continue

		S.show_message("[message_start] [message_body]", 2)

	var/list/listening = hearers(1, src)
	listening -= src

	for (var/mob/living/M in listening)
		if(istype(M, /mob/living/silicon) || M.binarycheck())
			continue
		M.show_message("<i><span class='game say'><span class='name'>синтезированный голос</span> <span class='message'>пищит, \"бип бип бип\"</span></span></i>",2)

	//robot binary xmitter component power usage
	if (isrobot(speaker))
		var/mob/living/silicon/robot/R = speaker
		var/datum/robot_component/C = R.components["comms"]
		R.cell_use_power(C.active_usage)

/datum/language/binary/drone
	name = LANGUAGE_DRONE_GLOBAL
	desc = "Крайне зашифрованный поток данных для координации ремонтных работ."
	speech_verb = "передаёт"
	ask_verb = "передаёт"
	exclaim_verb = "передаёт"
	colour = "say_quote"
	key = "d"
	flags = RESTRICTED | HIVEMIND
	drone_only = 1
	shorthand = "N/A"

/datum/language/machine
	name = LANGUAGE_EAL
	desc = "Эффективный зашифрованный язык разработаный синтетиками и киборгами."
	speech_verb = "свистит"
	ask_verb = "щебечет"
	exclaim_verb = "нромко свистит"
	colour = "changeling"
	key = "6"
	flags = NO_STUTTER
	syllables = list("бип","бип","бип","бип","бип","буп","буп","буп","буп","биип","биип","боп","бибуп","туу","тууу","шшш","сс","бззт","пшш","вшиу","пип","пуп")
	space_chance = 10
	shorthand = "ЗАЯ"

/datum/language/machine/can_speak_special(var/mob/living/speaker)
	return speaker.isSynthetic()

/datum/language/machine/get_random_name()
	if(prob(70))
		return "[pick(list("АРМА","НИУ","АРЕ","ИИО","ОССЗ"))] - [rand(100, 999)]"
	return pick(GLOB.ai_names)

