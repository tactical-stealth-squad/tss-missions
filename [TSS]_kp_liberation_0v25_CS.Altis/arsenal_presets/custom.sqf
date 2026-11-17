// Custom Arsenal Preset
private _tssitems = profilenamespace getVariable "tss_mods_units_weaponList";
_tssitems append (profilenamespace getVariable "tss_mods_units_gearList");
_tssitems append (profilenamespace getVariable "tss_mods_units_itemList");
_tssitems append (profilenamespace getVariable "tss_mods_units_magazineList");
_tssitems append (profilenamespace getVariable "tss_mods_units_attachmentList");
GRLIB_arsenal_weapons = _tssitems;

GRLIB_arsenal_magazines = [

];

GRLIB_arsenal_items = [

];

GRLIB_arsenal_backpacks = [

];