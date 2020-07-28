/datum/language/ling
	name = LANGUAGE_CHANGELING_GLOBAL
	desc = "Несмотря на то, что они крайне настороженно и с подозрением относятся друг к другу чейнджлинги имеют возможность коммуникации друг с другом на расстоянии."
	speech_verb = "говорит"
	colour = "changeling"
	key = "ч"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/datum/language/ling/broadcast(var/mob/living/speaker,var/message,var/speaker_mask)

	if(speaker.mind && speaker.mind.changeling)
		..(speaker,message,speaker.mind.changeling.changelingID)
	else
		..(speaker,message)

/datum/language/corticalborer
	name = LANGUAGE_BORER_GLOBAL
	desc = "Кортиковые паразиты имеют странную связь между собой."
	speech_verb = "поёт"
	ask_verb = "поёт"
	exclaim_verb = "поёт"
	colour = "alien"
	key = "к"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"
	hidden_from_codex = TRUE

/datum/language/corticalborer/broadcast(var/mob/living/speaker,var/message,var/speaker_mask)

	var/mob/living/simple_animal/borer/B

	if(istype(speaker,/mob/living/carbon))
		var/mob/living/carbon/M = speaker
		B = M.has_brain_worms()
	else if(istype(speaker,/mob/living/simple_animal/borer))
		B = speaker

	if(B)
		if(B.host)
			if(B.host.nutrition < 50 || B.host.stat)
				to_chat(speaker, SPAN_WARNING("Ваш носитель слишком слаб, чтобы передать ваше сообщение."))
				return FALSE
			B.host.nutrition -= rand(1, 3)
		speaker_mask = B.truename
	..(speaker,message,speaker_mask)

/datum/language/vox
	name = LANGUAGE_VOX
	desc = "Общий язык различных кораблей воксов, которые составляют Стаю. Для всех остальных этот язык подобен хотичным крикам."
	speech_verb = "вопит"
	ask_verb = "скрипит"
	exclaim_verb = "орёт"
	colour = "vox"
	key = "в"
	flags = WHITELISTED
	syllables = list("ti","ti","ti","hi","hi","ki","ki","ki","ki","ya","ta","ha","ka","ya","chi","cha","kah", \
	"SKRE","AHK","EHK","RAWK","KRA","AAA","EEE","KI","II","KRI","KA")
	machine_understands = 0
	shorthand = "Vox"

/datum/language/vox/can_speak_special(var/mob/speaker)
	if(!ishuman(speaker))
		return FALSE
	var/mob/living/carbon/human/H = speaker
	var/obj/item/organ/internal/hindtongue/tongue = H.internal_organs_by_name[BP_HINDTONGUE]
	if(!istype(tongue) || !tongue.is_usable())
		to_chat(speaker, SPAN_WARNING("You are not capable of speaking [name]!"))
		return FALSE
	return TRUE

/datum/language/vox/get_random_name()
	return ..(FEMALE,1,6)

/datum/language/cultcommon
	name = LANGUAGE_CULT
	desc = "Непостежимые оккультные пения."
	speech_verb = "читает"
	ask_verb = "читает"
	exclaim_verb = "скандирует"
	colour = "cult"
	key = "ф"
	flags = RESTRICTED
	space_chance = 100
	syllables = list("ира","эго","нахлизет","цертум","вери","джаактаа","мгар","балак", "каразет", "гиреи", \
		"оркан", "аллак", "сас'со", "с'артэ", "форбици", "тарем", "н'атх", "рет", "ш'иро", "эт", "д'раггхатноор", \
		"ма'вэй", "пдегх", "ат", "э'нтратх", "ток-лир", "рка'нар", "г'лт-улотф", "та'гх", "фара'гха", "фел", "д'амар дет", \
		"ю'кулар", "фарас", "десдае", "хавас", "митхум", "джавара", "уматар", "уф'кал", "тенар", "раш'тла", \
		"сектатх", "мал'зуа", "засса", "териум", "виортиа", "кла'ату", "барада", "никт'о", "фве'ш", "мах", "эрл", "ниаг", "р'иа", \
		"гал'х'рфикк", "харфрандит", "муд'гиб", "фуу", "ма'джин", "дедо", "ол'бтох", "н'атхз", "ретх", "щ'ииро", "етх", \
		"д'реккатхнор", "кхари'д", "гуал'те", "никка", "нект'о", "барарда", "кла'ату", "барх", "хара" ,"зар'гар")
	machine_understands = 0
	shorthand = "КТ"
	hidden_from_codex = TRUE

/datum/language/cult
	name = LANGUAGE_CULT_GLOBAL
	desc = "Посвящённые могут делиться своими мыслями способоми, не поддающимися никаким законам."
	speech_verb = "читает"
	ask_verb = "читает"
	exclaim_verb = "скандирует"
	colour = "cult"
	key = "и"
	flags = RESTRICTED | HIVEMIND
	shorthand = "ОКТ"
	hidden_from_codex = TRUE

/datum/language/alium
	name = LANGUAGE_ALIUM
	colour = "cult"
	speech_verb = "шипит"
	key = "а"
	flags = RESTRICTED
	syllables = list("ки","бок","мок","йок","ди","гли","рил","бил","док","форбици", "тарем", "н'атх", "ретх", "ш'иро", "этх", "д'раггхатноор","ниии",
	"д'раггхатноор", "кхари'д", "гуал'те", "ки","ки","ки","ки","йа","та","вэй","ним","ассах","квсса","ниесл","кина","шаффар",
	"эг","бог","войджс","неккс","болллос","коулсан","боррксаккья","кееман","ака","никка","куиго","шшафра","беолас","Бино")
	machine_understands = 0
	shorthand = "АЛ"
	hidden_from_codex = TRUE

/datum/language/alium/New()
	speech_verb = pick("шипит","рычит","свистит","ревёт","чирикает","визжит","грохочет","щёлкает")
	..()

/datum/language/alium/get_random_name()
	var/new_name = ""
	var/length = rand(1,3)
	for(var/i=0 to length)
		new_name += pick(syllables)
	return capitalize(new_name)