require "DAMN_Armor_Shared";

--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************
--v2.0.0

JP92 = JP92 or {};

function JP92.activeArmor(player, vehicle)
   
		--

			local protection = vehicle:getPartById("DAMNBumperFront")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("EngineDoor")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					if inventoryItem:getFullType() == "Base.92jeepYJBullbarFrontA" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 50 and ZombRandBetween(0,5) or 0);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
				elseif inventoryItem:getFullType() ~= "Base.92jeepYJBullbarFrontA" then
						local partCond = tonumber(part:getModData().saveCond)
						if protection:getCondition() > 0 and partCond
						then
							if part:getCondition() < partCond
							then
								DAMN.Armor:setPartCondition(part, partCond);
								local cond = protection:getCondition() - ZombRandBetween(0,10);
								DAMN.Armor:setPartCondition(protection, cond);
							end
						end
					end
				else
					local protection = vehicle:getPartById("DAMNBumperFront")
					local inventoryItem = protection:getInventoryItem();
					local part = vehicle:getPartById("Engine")
						if protection and inventoryItem and part and part:getModData()
						then
							if inventoryItem:getFullType() == "Base.92jeepYJBullbarFrontA" then
								local partCond = tonumber(part:getModData().saveCond)
								if protection:getCondition() > 0 and partCond
								then
									if part:getCondition() < partCond
									then
										DAMN.Armor:setPartCondition(part, partCond);
										local cond = protection:getCondition() - ZombRandBetween(0,3);
										DAMN.Armor:setPartCondition(protection, cond);
									end
								end
							end
						end
				end

		--

		local protection = vehicle:getPartById("DAMNBumperRear")
			local inventoryItem = protection:getInventoryItem();
			local part = vehicle:getPartById("TrunkDoor")
				if part and protection and part:getInventoryItem() and inventoryItem and part:getModData()
				then 
					local partCond = tonumber(part:getModData().saveCond)
					if protection:getCondition() > 0 and partCond
					then
						if part:getCondition() < partCond
						then
							DAMN.Armor:setPartCondition(part, partCond);
							local cond = protection:getCondition() - ZombRandBetween(0,7);
							DAMN.Armor:setPartCondition(protection, cond);
						end
					end
				end

		--

		for partId, armorPartId in pairs({
				["WindowFrontLeft"] = "DAMNFrontLeftArmor",
				["WindowFrontRight"] = "DAMNFrontRightArmor",
                ["WindowRearLeft"] = "DAMNRearLeftArmor",
				["WindowRearRight"] = "DAMNRearRightArmor",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
                        local cond = protection:getCondition() - ZombRandBetween(0,2)
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

		for partId, armorPartId in pairs({
				["HeadlightLeft"] = "DAMNBumperFront",
				["HeadlightRight"] = "DAMNBumperFront",
				["HeadlightRearLeft"] = "DAMNBumperRear",
				["HeadlightRearRight"] = "DAMNBumperRear",
			}) do
				local part = vehicle:getPartById(partId);
				local protection = vehicle:getPartById(armorPartId);
				if protection and protection:getInventoryItem() and part and part:getModData()
				then
					local partCond = tonumber(part:getModData().saveCond);
					if protection:getCondition() > 0 and partCond and part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
					end
				end
			end

		--

		local protection = vehicle:getPartById("DAMNWindshieldArmor")
			local part = vehicle:getPartById("Windshield")
			if protection and protection:getInventoryItem() and part and part:getModData()
			then
				local partCond = tonumber(part:getModData().saveCond)
				if protection:getCondition() > 0 and partCond
				then
					if part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
						local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 65 and ZombRandBetween(0,3) or 0)
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

		local protection = vehicle:getPartById("DAMNWindshieldRearArmor")
			local part = vehicle:getPartById("WindshieldRear")
			if protection and protection:getInventoryItem() and part and part:getModData()
			then
				local partCond = tonumber(part:getModData().saveCond)
				if protection:getCondition() > 0 and partCond
				then
					if part:getCondition() < partCond
					then
						DAMN.Armor:setPartCondition(part, partCond);
						local cond = protection:getCondition() - (ZombRandBetween(0,100) <= 65 and ZombRandBetween(0,3) or 0)
						DAMN.Armor:setPartCondition(protection, cond);
					end
				end
			end

		--

		for i, freezeState in ipairs ({"DAMNSpareTire", "JP92Lightbar", "JP92RollBar", "JP92SoftTop", "JP92HardTop", "JP92Winch"})
				do
					if vehicle:getPartById(freezeState) then
						local part = vehicle:getPartById(freezeState)
						local freezeCond = tonumber(part:getModData().saveCond)
					    	if freezeCond and part:getCondition() < freezeCond then
					    		DAMN.Armor:setPartCondition(part, freezeCond);
							end
					end
			end

end

DAMN.Armor:add("Base.92jeepYJs", JP92.activeArmor);
DAMN.Armor:add("Base.92jeepYJse", JP92.activeArmor);
DAMN.Armor:add("Base.92jeepYJjp", JP92.activeArmor);
DAMN.Armor:add("Base.92jeepYJranger", JP92.activeArmor);