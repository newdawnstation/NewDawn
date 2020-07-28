/datum/language/nabber
	name = LANGUAGE_NABBER
	desc = "Странный язык, который использует как речевые звуки, так и движения, воспроизводящие определённые дополнительные звуки для передачи информации."
	signlang_verb = list("стрекочет", "стучит жвалами", "стрекочет и стучит жвалами")
	key = "н"
	flags = WHITELISTED | SIGNLANG | NO_STUTTER | NONVERBAL
	colour = ".nabber_lang"
	shorthand = "СД"

/datum/language/nabber/get_random_name(var/gender)
	if(gender == FEMALE)
		return capitalize(pick(GLOB.first_names_female))
	else
		return capitalize(pick(GLOB.first_names_male))

