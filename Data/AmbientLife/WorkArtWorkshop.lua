-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PlaceObj('AmbientLife', {
	group = "Work",
	id = "WorkArtWorkshop",
	param1 = "unit",
	param2 = "bld",
	PlaceObj('XPrgDefineSlot', {
		'groups', "A",
		'spot_type', "Workpiano",
		'goto_spot', "Pathfind",
		'flags_missing', 4,
		'usable_by_child', false,
	}),
	PlaceObj('XPrgDefineSlot', {
		'groups', "A",
		'spot_type', "Workdraw",
		'goto_spot', "Pathfind",
		'flags_missing', 4,
		'usable_by_child', false,
	}),
	PlaceObj('XPrgDefineSlot', {
		'groups', "B",
		'spot_type', "Floor",
		'goto_spot', "LeadToSpot",
		'usable_by_child', false,
	}),
	PlaceObj('XPrgSelectSlot', {
		'unit', "unit",
		'bld', "bld",
		'group', "A",
		'var_spot', "spot",
		'var_slot_desc', "slotdata",
		'var_slot', "slot",
		'var_slotname', "slotname",
	}),
	PlaceObj('XPrgCheckExpression', {
		'expression', "spot",
	}, {
		PlaceObj('XPrgChangeSlotFlags', {
			'bld', "bld",
			'obj', "bld",
			'spot', "spot",
			'slotname', "slotname",
			'slot', "slot",
			'flags_add', 4,
			'dtor_flags_clear', 4,
		}),
		PlaceObj('XPrgSelectSlot', {
			'unit', "unit",
			'bld', "bld",
			'group', "B",
			'var_spot', "fspot",
			'var_slot_desc', "fslotdata",
			'var_slot', "fslot",
			'var_slotname', "fslotname",
		}),
		PlaceObj('XPrgLeadTo', {
			'unit', "unit",
			'spot_obj', "bld",
			'spot', "fspot",
		}),
		PlaceObj('XPrgVisitSelectedSlot', {
			'unit', "unit",
			'bld', "bld",
			'obj', "bld",
			'spot', "spot",
			'slot_desc', "slotdata",
			'slot', "slot",
			'slotname', "slotname",
		}),
		PlaceObj('XPrgChangeSlotFlags', {
			'bld', "bld",
			'obj', "bld",
			'spot', "spot",
			'slotname', "slotname",
			'slot', "slot",
			'flags_clear', 4,
		}),
		PlaceObj('XPrgCheckExpression', {
			'comment', "disable flags destructor",
			'form', "A=",
			'var', "slotname",
			'expression', '""',
		}),
		PlaceObj('XPrgSelectSlot', {
			'unit', "unit",
			'bld', "bld",
			'group', "B",
			'var_spot', "fspot",
			'var_slot_desc', "fslotdata",
			'var_slot', "fslot",
			'var_slotname', "fslotname",
			'var_pos', "fpos",
		}),
		PlaceObj('XPrgGoto', {
			'unit', "unit",
			'pos', "fpos",
		}),
		}),
	PlaceObj('XPrgLeadTo', {
		'loc', "Exit",
		'unit', "unit",
		'spot_obj', "bld",
	}),
	PlaceObj('XPrgCheckExpression', {
		'form', "else if <cond>",
	}),
})

