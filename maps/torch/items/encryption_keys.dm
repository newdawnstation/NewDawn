/obj/item/device/encryptionkey/heads/torchexec
	name = "executive encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Командный" = 1, "Сб" = 1, "Инженерный" = 1, "Научный" = 1, "Медицинский" = 1, "Снабжение" = 1, "Сервис" = 1, "Экспедиция" = 1)

/obj/item/device/encryptionkey/headset_torchnt
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Научный" = 1)

/obj/item/device/encryptionkey/headset_torchrd
	name = "chief science officer radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Научный" = 1, "Командный" = 1, "Экспедиция" = 1)

/obj/item/device/encryptionkey/headset_torchcorp
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Сервис" = 1)

/obj/item/device/encryptionkey/headset_torchcl
	name = "corporate liaison radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Сервис" = 1, "Командный" = 1)

/obj/item/device/encryptionkey/headset_deckofficer
	name = "deck chief's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Снабжение" = 1, "Командный" = 1, "Экспедиция" = 1)

/obj/item/device/encryptionkey/bridgeofficer
	name = "bridge officer's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Командный" = 1, "Инженерный" = 1, "Экспедиция" = 1)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Командный" = 1, "Сб" = 1, "Инженерный" = 1, "Научный" = 1, "Медицинский" = 1, "Снабжение" = 1, "Сервис" = 1, "Экспедиция" = 1, "ИИ Приватный" = 1)

/obj/item/device/encryptionkey/exploration
	name = "exploration radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Экспедиция" = 1)

/obj/item/device/encryptionkey/headset_pilot
	name = "pilot radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Экспедиция" = 1, "Снабжение" = 1, "Научный" = 1)

/obj/item/device/encryptionkey/headset_mining
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Экспедиция" = 1, "Снабжение" = 1)

/obj/item/weapon/storage/box/encryptionkey/exploration
	name = "box of spare exploration radio keys"
	desc = "A box full of exploration department radio keys."
	startswith = list(/obj/item/weapon/screwdriver, /obj/item/device/encryptionkey/exploration = 5)

/obj/item/device/encryptionkey/pathfinder
	name = "pathfinder's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Экспедиция" = 1, "Командный" = 1, "Научный" = 1)

/obj/item/weapon/storage/box/radiokeys
	name = "box of radio encryption keys"
	desc = "A box full of assorted encryption keys."
	startswith = list(/obj/item/device/encryptionkey/headset_sec = 3,
					  /obj/item/device/encryptionkey/headset_med = 3,
					  /obj/item/device/encryptionkey/headset_cargo = 3,
					  /obj/item/device/encryptionkey/headset_sci = 3)

/obj/item/weapon/storage/box/radiokeys/Initialize()
	. = ..()
	make_exact_fit()

/obj/item/device/encryptionkey/heads/sea
	name = "senior enlisted advisor's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Командный" = 1, "Сб" = 1, "Инженерный" = 1, "Медицинский" = 1, "Снабжение" = 1, "Сервис" = 1, "Экспедиция" = 1)
