
/obj/item/device/encryptionkey/
	name = "standard encryption key"
	desc = "An encryption key for a radio headset. Contains cypherkeys."
	icon = 'icons/obj/radio.dmi'
	icon_state = "cypherkey"
	item_state = ""
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_EARS
	var/translate_binary = 0
	var/translate_hive = 0
	var/syndie = 0
	var/list/channels = list()

/obj/item/device/encryptionkey/attackby(obj/item/weapon/W as obj, mob/user as mob)

/obj/item/device/encryptionkey/syndicate
	icon_state = "cypherkey"
	channels = list("Наёмники" = 1)
	origin_tech = list(TECH_ESOTERIC = 3)
	syndie = 1//Signifies that it de-crypts Syndicate transmissions

/obj/item/device/encryptionkey/raider
	icon_state = "cypherkey"
	channels = list("Рэйдер" = 1)
	origin_tech = list(TECH_ESOTERIC = 2)
	syndie = 1

/obj/item/device/encryptionkey/binary
	icon_state = "cypherkey"
	translate_binary = 1
	origin_tech = list(TECH_ESOTERIC = 3)

/obj/item/device/encryptionkey/headset_sec
	name = "security radio encryption key"
	icon_state = "sec_cypherkey"
	channels = list("Сб" = 1)

/obj/item/device/encryptionkey/headset_eng
	name = "engineering radio encryption key"
	icon_state = "eng_cypherkey"
	channels = list("Инженерный" = 1)

/obj/item/device/encryptionkey/headset_rob
	name = "robotics radio encryption key"
	icon_state = "rob_cypherkey"
	channels = list("Инженерный" = 1, "Научный" = 1)

/obj/item/device/encryptionkey/headset_med
	name = "medical radio encryption key"
	icon_state = "med_cypherkey"
	channels = list("Медицинский" = 1)

/obj/item/device/encryptionkey/headset_sci
	name = "science radio encryption key"
	icon_state = "sci_cypherkey"
	channels = list("Научный" = 1)

/obj/item/device/encryptionkey/headset_medsci
	name = "medical research radio encryption key"
	icon_state = "medsci_cypherkey"
	channels = list("Медицинский" = 1, "Научный" = 1)

/obj/item/device/encryptionkey/headset_com
	name = "command radio encryption key"
	icon_state = "com_cypherkey"
	channels = list("Командный" = 1)

/obj/item/device/encryptionkey/heads/captain
	name = "captain's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Командный" = 1, "Сб" = 1, "Инженерный" = 0, "Научный" = 0, "Медицинский" = 0, "Снабжение" = 0, "Сервис" = 0)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Командный" = 1, "Сб" = 1, "Инженерный" = 1, "Научный" = 1, "Медицинский" = 1, "Снабжение" = 1, "Сервис" = 1, "ИИ Приватный" = 1)

/obj/item/device/encryptionkey/heads/rd
	name = "chief science officer's encryption key"
	icon_state = "rd_cypherkey"
	channels = list("Научный" = 1, "Командный" = 1)

/obj/item/device/encryptionkey/heads/hos
	name = "head of security's encryption key"
	icon_state = "hos_cypherkey"
	channels = list("Сб" = 1, "Командный" = 1)

/obj/item/device/encryptionkey/heads/ce
	name = "chief engineer's encryption key"
	icon_state = "ce_cypherkey"
	channels = list("Инженерный" = 1, "Командный" = 1)

/obj/item/device/encryptionkey/heads/cmo
	name = "chief medical officer's encryption key"
	icon_state = "cmo_cypherkey"
	channels = list("Медицинский" = 1, "Командный" = 1)

/obj/item/device/encryptionkey/heads/hop
	name = "head of personnel's encryption key"
	icon_state = "hop_cypherkey"
	channels = list("Снабжение" = 1, "Сервис" = 1, "Командный" = 1, "Сб" = 0)

/obj/item/device/encryptionkey/headset_cargo
	name = "supply radio encryption key"
	icon_state = "cargo_cypherkey"
	channels = list("Снабжение" = 1)

/obj/item/device/encryptionkey/headset_service
	name = "service radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Сервис" = 1)

/obj/item/device/encryptionkey/ert
	name = "\improper ERT radio encryption key"
	channels = list("Команда Реагирования" = 1, "Научный" = 1, "Командный" = 1, "Медицинский" = 1, "Инженерный" = 1, "Сб" = 1, "Снабжение" = 1, "Сервис" = 1)

/obj/item/device/encryptionkey/specops //for events
	name = "special operations radio encryption key"
	icon_state = "bin_cypherkey"
	channels = list("Спец Операции" = 1)
	origin_tech = list(TECH_ESOTERIC = 2)

/obj/item/device/encryptionkey/entertainment
	name = "entertainment radio key"
	channels = list("Развлекательный" = 1)

/obj/item/device/encryptionkey/headset_mining
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Снабжение" = 1)