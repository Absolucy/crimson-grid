/obj/darkpack_car/Initialize(mapload)
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_MAGICALLY_UNLOCKED = PROC_REF(on_magic_unlock),
	)
	AddElement(/datum/element/connect_loc, loc_connections)

/// Signal proc for [COMSIG_ATOM_MAGICALLY_UNLOCKED]. Unlock and open up when we get knock casted.
/obj/darkpack_car/proc/on_magic_unlock(datum/source, datum/spell, atom/caster)
	SIGNAL_HANDLER

	if(locked)
		return
	playsound(src, 'modular_darkpack/modules/cars/sounds/open.ogg', 50, TRUE)
	locked = FALSE
