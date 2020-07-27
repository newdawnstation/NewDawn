//Human
#define LANGUAGE_HUMAN_EURO      "Всеобщий Язык Цюрихского Соглашения"
#define LANGUAGE_HUMAN_CHINESE   "Янгю"
#define LANGUAGE_HUMAN_ARABIC    "Прототип Стандартизированного Арабского"
#define LANGUAGE_HUMAN_INDIAN    "Новый Дехлавийский"
#define LANGUAGE_HUMAN_IBERIAN   "Иберийский"
#define LANGUAGE_HUMAN_RUSSIAN   "Пан-Славянский"
#define LANGUAGE_HUMAN_SELENIAN  "Селенийский"

//Human misc
#define LANGUAGE_GUTTER         "Гаттер"
#define LANGUAGE_LEGALESE       "Канцелярит"
#define LANGUAGE_SPACER         "Спэйсер"

//Alien
#define LANGUAGE_EAL               "Зашифрованый Аудио Язык"
#define LANGUAGE_UNATHI_SINTA      "Синта'Унатхский"
#define LANGUAGE_UNATHI_YEOSA      "Йоза'Унатхский"
#define LANGUAGE_SKRELLIAN         "Скрелльский"
#define LANGUAGE_ROOTLOCAL         "Локальный Рутспик"
#define LANGUAGE_ROOTGLOBAL        "Глобальный Рутспик"
#define LANGUAGE_ADHERENT          "Протокольный"
#define LANGUAGE_VOX               "Вокс-пиджин"
#define LANGUAGE_NABBER            "Серпентид"

//Antag
#define LANGUAGE_CULT              "Культистский"
#define LANGUAGE_CULT_GLOBAL       "Оккультный"
#define LANGUAGE_ALIUM             "Алиум"

//Other
#define LANGUAGE_PRIMITIVE         "Примитивный"
#define LANGUAGE_SIGN              "Язык Жестов"
#define LANGUAGE_ROBOT_GLOBAL      "Язык Роботов"
#define LANGUAGE_DRONE_GLOBAL      "Язык Дронов"
#define LANGUAGE_CHANGELING_GLOBAL "Чейнджлингский"
#define LANGUAGE_BORER_GLOBAL      "Корковая звязь"
#define LANGUAGE_MANTID_NONVOCAL   "Восхождение-Световой"
#define LANGUAGE_MANTID_VOCAL      "Восхождение-Звуковой"
#define LANGUAGE_MANTID_BROADCAST  "Ворлднет"

// Language flags.
#define WHITELISTED  1   // Language is available if the speaker is whitelisted.
#define RESTRICTED   2   // Language can only be acquired by spawning or an admin.
#define NONVERBAL    4   // Language has a significant non-verbal component. Speech is garbled without line-of-sight.
#define SIGNLANG     8   // Language is completely non-verbal. Speech is displayed through emotes for those who can understand.
#define HIVEMIND     16  // Broadcast to all mobs with this language.
#define NONGLOBAL    32  // Do not add to general languages list.
#define INNATE       64  // All mobs can be assumed to speak and understand this language. (audible emotes)
#define NO_TALK_MSG  128 // Do not show the "\The [speaker] talks into \the [radio]" message
#define NO_STUTTER   256 // No stuttering, slurring, or other speech problems
#define ALT_TRANSMIT 512 // Language is not based on vision or sound (Todo: add this into the say code and use it for the rootspeak languages)
