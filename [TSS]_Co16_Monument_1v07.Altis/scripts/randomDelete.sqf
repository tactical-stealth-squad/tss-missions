if (!(isServer)) exitWith {};

_randomDelete = selectrandom [1, 2, 3];

switch (_randomDelete) do {
    case 1: {deleteVehicle general_1};
    case 2: {deleteVehicle general_2};
	case 3: {deleteVehicle general_3}
};