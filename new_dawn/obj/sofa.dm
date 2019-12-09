/obj/structure/bed/chair/sofa
	name = "leather sofa"
	desc = "A wide and comfy sofa - no one assistant was ate by it due production! It's made of steel and covered with synthetic leather."
	icon = 'new_dawn/icons/obj/furniture.dmi'
	icon_state = "sofa_right"
	buckle_dir = 0
	buckle_lying = 0

/obj/structure/bed/chair/sofa/left
	icon_state = "sofa_left"

/obj/structure/bed/chair/sofa/New(var/newloc)
	base_icon = icon_state
	..(newloc,MATERIAL_LEATHER_GENERIC)

/obj/structure/bed/chair/sofa/post_buckle_mob()
	update_icon()
	return ..()

/obj/structure/bed/chair/sofa/on_update_icon()
	overlays.Cut()
	var/image/I = image(src, "[base_icon]_over")
	I.plane = ABOVE_HUMAN_LAYER
	I.layer = ABOVE_HUMAN_LAYER
	overlays |= I
	if(buckled_mob)
		var/image/D = image(src, "[base_icon]_armrest")
		D.plane = ABOVE_HUMAN_LAYER
		D.layer = ABOVE_HUMAN_LAYER
		overlays |= D

/obj/structure/bed/chair/sofa/sofa/black
	icon_state = "couchblack_middle"

/obj/structure/bed/chair/sofa/black/left
	icon_state = "couchblack_left"

/obj/structure/bed/chair/sofa/black/right
	icon_state = "couchblack_right"

/obj/structure/bed/chair/sofa/beige
	icon_state = "couchbeige_middle"

/obj/structure/bed/chair/sofa/beige/left
	icon_state = "couchbeige_left"

/obj/structure/bed/chair/sofa/beige/right
	icon_state = "couchbeige_right"

/obj/structure/bed/chair/sofa/brown
	icon_state = "couchbrown_middle"

/obj/structure/bed/chair/sofa/brown/left
	icon_state = "couchbrown_left"

/obj/structure/bed/chair/sofa/brown/right
	icon_state = "couchbrown_right"
