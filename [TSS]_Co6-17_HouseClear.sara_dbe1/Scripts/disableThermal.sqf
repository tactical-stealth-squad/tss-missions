private _id = addMissionEventHandler ["Draw3D",
{
	if (currentVisionMode player isEqualTo 2) then
	{
		if (isNil "A3W_thermalOffline") then
		{
			"A3W_thermalOffline" cutText ["THERMAL IMAGING OFFLINE", "BLACK", 0.001, false];
			A3W_thermalOffline = true;
		};
	}
	else
	{
		if (!isNil "A3W_thermalOffline") then
		{
			"A3W_thermalOffline" cutText ["", "PLAIN", 0.001, false];
			A3W_thermalOffline = nil;
		};
	};
}];

nil