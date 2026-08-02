/obj/item/smartphone/examine(mob/user)
	. = ..()
	var/phone_number = sim_card?.phone_number
	if(phone_number)
		. += span_notice("Its phone number is [span_bold("[phone_number]")].")
