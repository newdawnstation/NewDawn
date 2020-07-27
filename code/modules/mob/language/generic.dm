// Noise "language", for audible emotes.
/datum/language/noise
	name = "Noise"
	desc = "Noises"
	key = ""
	flags = RESTRICTED|NONGLOBAL|INNATE|NO_TALK_MSG|NO_STUTTER
	hidden_from_codex = 1

/datum/language/noise/format_message(message, verb)
	return "<span class='message'><span class='[colour]'>[message]</span></span>"

/datum/language/noise/format_message_plain(message, verb)
	return message

/datum/language/noise/format_message_radio(message, verb)
	return "<span class='[colour]'>[message]</span>"

/datum/language/noise/get_talkinto_msg_range(message)
	// if you make a loud noise (screams etc), you'll be heard from 4 tiles over instead of two
	return (copytext(message, length(message)) == "!") ? 4 : 2

/datum/language/sign
	name = LANGUAGE_SIGN
	desc = "Язык жестов, который обычно используется глухими или немыми."
	signlang_verb = list("жестикулирует")
	colour = "say_quote"
	key = "s"
	flags = SIGNLANG | NO_STUTTER | NONVERBAL
	shorthand = "ЯЖ"