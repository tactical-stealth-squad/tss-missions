CUL_snowEmitter = objNull;
CUL_doSnow = {
    private _unit = ACE_player;
    if (alive _unit && {!([_unit] call ace_common_fnc_isInBuilding)}) then {
        if (isNull CUL_snowEmitter) then {
            CUL_snowEmitter = "#particlesource" createVehicleLocal getpos _unit;
            CUL_snowEmitter setParticleParams [
                ["\A3\data_f\ParticleEffects\Universal\Universal",16,12,13,1],
                "", //animationName
                "Billboard", //particleType
                0.1, //timerPeriod
                30, //lifeTime
                [0,0,0], //position
                [0,0,-2], //moveVelocity
                1/*rotationVelocity*/,3/*weight*/,1/*volume*/,1/*rubbing*/,
                [0.2,0.2,0.2,0.2,0], //size
                [[1,1,1,0.5], //color
                [1,1,1,0.5]], 
                [0,1], //animationSpeed
                0.25,   //randomDirectionPeriod
                1,  //randomDirectionIntensity
                "", //onTimerScript
                "", //beforeDestroyScript
                CUL_snowEmitter //object
            ];
            CUL_snowEmitter setParticleCircle [0.0,[0, 0, 0]];
            CUL_snowEmitter setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
            CUL_snowEmitter setDropInterval (0.000001 * ceil (random 4));
        };
        CUL_snowEmitter setPosASL (AGLToASL positionCameraToWorld [0,0,0]);
    } else {
        deleteVehicle CUL_snowEmitter;
    };
};
 
private _handleFrame = [{[] call CUL_doSnow}, 0.5] call cba_fnc_addPerFrameHandler;
 
sleep 1200;
[_handleFrame] call CBA_fnc_removePerFrameHandler;