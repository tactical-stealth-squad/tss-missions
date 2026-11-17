// Thanks to commy2
// https://armaworld.de/forum/thread/4315-objekte-wie-haeuser-aus-einer-map-entfernen-mapping-noob/

private _marker = _this select 0;
private _size = getMarkerSize _marker;
_size sort false;
_size = (_size select 0) * sqrt 2;

private _terrainObjects = nearestTerrainObjects [getMarkerPos _marker, [], _size] select {_x inArea _marker};

{
    _x hideObjectGlobal true;
    _x enableSimulationGlobal false;
    _x allowDamage false;
} forEach _terrainObjects;

deleteMarker _marker;

nil