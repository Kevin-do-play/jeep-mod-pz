require "DAMN_Parts";
require "DAMN_Spawns";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

DAMN.Parts:processConfigV2("JP92", {
	["BumperFront"] = {
		partId = "JP92BumperFront",
		itemToModel = {
			["Base.92jeepYJBumperFront0"] = "BumperFront0",
            ["Base.92jeepYJBumperFront1"] = "BumperFront1",
			["Base.92jeepYJBullbarFrontA"] = "BullbarFrontA",
		},
        allowedForRandom = {
            "Base.92jeepYJBumperFront0", "Base.92jeepYJBumperFront1"
        },
		default = "trve_random",
		noPartChance = 5,
	},
	["BumperRear"] = {
		partId = "JP92BumperRear",
		itemToModel = {
			["Base.92jeepYJBumperRear0"] = "BumperRear0",
            ["Base.92jeepYJBumperRear1"] = "BumperRear1",
		},
		default = "trve_random",
		noPartChance = 5,
	},
    ["WindshieldArmor"] = {
		partId = "JP92WindshieldArmor",
		itemToModel = {
			["Base.92jeepYJWindshieldArmor"] = "JP92winda",
		},
	},
	["FrontLeftArmor"] = {
		partId = "JP92FrontLeftArmor",
		itemToModel = {
			["Base.92jeepYJFrontWindowArmor"] = "JP92leftwina",
		},
	},
	["FrontRightArmor"] = {
		partId = "JP92FrontRightArmor",
		itemToModel = {
			["Base.92jeepYJFrontWindowArmor"] = "JP92rightwina",
		},
	},
    ["RearLeftArmor"] = {
		partId = "JP92RearLeftArmor",
		itemToModel = {
			["Base.92jeepYJRearWindowArmor"] = "JP92leftrearwina",
		},
	},
	["RearRightArmor"] = {
		partId = "JP92RearRightArmor",
		itemToModel = {
			["Base.92jeepYJRearWindowArmor"] = "JP92rightrearwina",
		},
	},
	["WindshieldRearArmor"] = {
		partId = "JP92WindshieldRearArmor",
		itemToModel = {
			["Base.92jeepYJWindshieldRearArmor"] = "JP92windra",
		},
	},
	["SpareTire"] = {
		partId = "JP92SpareTire",
		itemToModel = {
			["Base.92jeepYJTire2"] = "SpareTire0",
            ["Base.84jeepXJTire2"] = "SpareTire1",
		},
		default = "trve_random",
		noPartChance = 33,
	},
	["Roofrack"] = {
		partId = "JP92Roofrack",
		itemToModel = {
			["Base.92jeepYJRoofrack2"] = "Roofrack0",
		},
	},
	["SoftTop"] = {
		partId = "JP92SoftTop",
		itemToModel = {
			["Base.92jeepYJSoftTop2"] = "softTop0",
		},
		default = "trve_random",
		noPartChance = 65,
	},
	["Rollbar"] = {
		partId = "JP92RollBar",
		itemToModel = {
			["Base.92jeepYJFamilyRollbar2"] = "rollbar0",
			["Base.92jeepYJSportRollbar2"] = "rollbar1",
		},
		default = "random",
	},
    ["Snorkel"] = {
		partId = "JP92Snorkel",
		itemToModel = {
			["Base.92jeepYJSnorkel2"] = "Snorkel0",
		},
		default = "trve_random",
		noPartChance = 50,
	},
    ["Jack"] = {
		partId = "JP92Jack",
		itemToModel = {
			["Base.Jack"] = "Jack0",
		},
		default = "trve_random",
		noPartChance = 75,
	},
    ["Winch"] = {
		partId = "JP92Winch",
		itemToModel = {
			["Base.92jeepYJWinch2"] = "Winch0",
		},
		default = "trve_random",
		noPartChance = 50,
	},
    ["Bodykit"] = {
		partId = "JP92Bodykit",
		itemToModel = {
			["Base.92jeepYJBodykitA2"] = {"Bodykit1L", "Bodykit1R"},
            ["Base.92jeepYJBodykitB2"] = {"Bodykit2L", "Bodykit2R"},
		},
		default = "trve_random",
		noPartChance = 50,
	},
    ["Lightbar"] = {
		partId = "JP92Lightbar",
		itemToModel = {
			["Base.92jeepYJLightbar2"] = "Lightbar0",
		},
		default = "trve_random",
		noPartChance = 50,
	},
    ["TireFrontLeft"] = {
		partId = "TireFrontLeft",
		itemToModel = {
			["Base.92jeepYJTire2"] = "wrangTireFL",
            ["Base.84jeepXJTire2"] = "wrangTire1FL",
		},
	},
	["TireFrontRight"] = {
		partId = "TireFrontRight",
		itemToModel = {
			["Base.92jeepYJTire2"] = "wrangTireFR",
            ["Base.84jeepXJTire2"] = "wrangTire1FR",
		},
	},
	["TireRearLeft"] = {
		partId = "TireRearLeft",
		itemToModel = {
			["Base.92jeepYJTire2"] = "wrangTireFL",
            ["Base.84jeepXJTire2"] = "wrangTire1FL",
		},
	},
	["TireRearRight"] = {
		partId = "TireRearRight",
		itemToModel = {
			["Base.92jeepYJTire2"] = "wrangTireFR",
            ["Base.84jeepXJTire2"] = "wrangTire1FR",
		},
	},
});


function JP92.ContainerAccess.Trunk(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 3 or seat == 2;
	elseif chr:getVehicle() then
		return false
	else
		if not vehicle:isInArea(part:getArea(), chr) then return false end
		local doorPart = vehicle:getPartById("TrunkDoor")
		if doorPart and doorPart:getDoor() and not doorPart:getDoor():isOpen() then
			return false
		end
		return true
	end
end

function JP92.ContainerAccess.Roofrack(vehicle, part, chr)
	if chr:getVehicle() then return false end
	if not vehicle:isInArea(part:getArea(), chr) then return false end
	return true
end