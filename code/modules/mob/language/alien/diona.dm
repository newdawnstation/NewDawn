/datum/language/diona
	name = LANGUAGE_ROOTLOCAL
	desc = "Сложный инстинктивный язык дион, ег основной принцип заключается в испускании смодулированных радиоволн. Данная его версия использует высокочастотные волны для ускорения коммуникации на коротких расстояниях."
	speech_verb = "скрипит и шелестит"
	ask_verb = "скрипит"
	exclaim_verb = "шелестит"
	colour = "soghun"
	key = "q"
	flags = RESTRICTED
	syllables = list("хс","зт","кр","ст","шш")
	shorthand = "РТ"
	machine_understands = FALSE

/datum/language/diona/get_random_name()
	var/new_name = "[pick(list("To Sleep Beneath","Wind Over","Embrace of","Dreams of","Witnessing","To Walk Beneath","Approaching the"))]"
	new_name += " [pick(list("the Void","the Sky","Encroaching Night","Planetsong","Starsong","the Wandering Star","the Empty Day","Daybreak","Nightfall","the Rain"))]"
	return new_name

/datum/language/diona/global
	name = LANGUAGE_ROOTGLOBAL
	desc = "Сложный инстинктивный язык дион, ег основной принцип заключается в испускании смодулированных радиоволн. Данная версия использует низкочастотные волны для коммуникации на дальние расстояния за счёт скорости передачи информации."
	key = "w"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"