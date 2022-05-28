Events:Subscribe('Level:Loaded', function()
	local ruRecon  = ResourceManager:SearchForDataContainer('Gameplay/Kits/RURecon')
	if ruRecon == nil then
		print("RU Recon not found") 
		ruRecon = ResourceManager:SearchForDataContainer('Gameplay/Kits/RURecon_XP4')
		if ruRecon == nil then
			print("RU Recon XP4 also not found")
			return
		end
	end
	
	local ruAssault = ResourceManager:SearchForDataContainer('Gameplay/Kits/RUAssault')
	if ruAssault == nil then
		print("RU Assault not found") 
		ruAssault = ResourceManager:SearchForDataContainer('Gameplay/Kits/RUAssault_XP4')
		if ruAssault == nil then
			print("RU Assault XP4 also not found")
			return
		end
	end
	
	local ruEngineer = ResourceManager:SearchForDataContainer('Gameplay/Kits/RUEngineer')
	if ruEngineer == nil then
		print("RU Engineer not found") 
		ruEngineer = ResourceManager:SearchForDataContainer('Gameplay/Kits/RUEngineer_XP4')
		if ruEngineer == nil then
			print("RU Engineer XP4 also not found")
			return
		end
	end

	local ruSupport = ResourceManager:SearchForDataContainer('Gameplay/Kits/RUSupport')
	if ruSupport == nil then
		print("RU Support not found") 
		ruSupport = ResourceManager:SearchForDataContainer('Gameplay/Kits/RUSupport_XP4')
		if ruSupport == nil then
			print("RU Support XP4 also not found")
			return
		end
	end

	ruRecon = VeniceSoldierCustomizationAsset(ruRecon)
	ruAssault = VeniceSoldierCustomizationAsset(ruAssault)
        ruEngineer = VeniceSoldierCustomizationAsset(ruEngineer) 
        ruSupport = VeniceSoldierCustomizationAsset(ruSupport)
	
	CustomizationUnlockParts(CustomizationTable(ruAssault.weaponTable).unlockParts[1]):MakeWritable()
	for i,weapon in pairs(CustomizationUnlockParts(CustomizationTable(ruRecon.weaponTable).unlockParts[1]).selectableUnlocks) do 
		if i <= 11 then
			--print("Changed Assault")
		CustomizationUnlockParts(CustomizationTable(ruAssault.weaponTable).unlockParts[1]).selectableUnlocks:add(weapon)
		end
	end

	CustomizationUnlockParts(CustomizationTable(ruEngineer.weaponTable).unlockParts[1]):MakeWritable()
	for i,weapon in pairs(CustomizationUnlockParts(CustomizationTable(ruRecon.weaponTable).unlockParts[1]).selectableUnlocks) do 
		if i <= 11 then
			--print("Changed Engineer")
		CustomizationUnlockParts(CustomizationTable(ruEngineer.weaponTable).unlockParts[1]).selectableUnlocks:add(weapon)
		end
	end

	CustomizationUnlockParts(CustomizationTable(ruSupport.weaponTable).unlockParts[1]):MakeWritable()
	for i,weapon in pairs(CustomizationUnlockParts(CustomizationTable(ruRecon.weaponTable).unlockParts[1]).selectableUnlocks) do 
		if i <= 11 then
			--print("Changed Support")
		CustomizationUnlockParts(CustomizationTable(ruSupport.weaponTable).unlockParts[1]).selectableUnlocks:add(weapon)
		end
	end
	
	
	local usRecon = ResourceManager:SearchForDataContainer('Gameplay/Kits/USRecon')
	if usRecon == nil then
		print("US Recon not found")
		usRecon = ResourceManager:SearchForDataContainer('Gameplay/Kits/USRecon_XP4')
		if usRecon == nil then
			print("US Recon XP4 also not found")
			return
		end
	end
	
	local usAssault = ResourceManager:SearchForDataContainer('Gameplay/Kits/USAssault')
	if usAssault == nil then
		print("US Assault not found")
		usAssault = ResourceManager:SearchForDataContainer('Gameplay/Kits/USAssault_XP4')
		if usAssault == nil then
			print("US Assault XP4 also not found")
			return
		end
	end
	
	local usEngineer = ResourceManager:SearchForDataContainer('Gameplay/Kits/USEngineer')
	if usEngineer == nil then
		print("US Engineer not found")
		usEngineer = ResourceManager:SearchForDataContainer('Gameplay/Kits/USEngineer_XP4')
		if usEngineer == nil then
			print("US Engineer XP4 also not found")
			return
		end
	end
	
	local usSupport = ResourceManager:SearchForDataContainer('Gameplay/Kits/USSupport')
	if usSupport == nil then
		print("US Support not found")
		usSupport = ResourceManager:SearchForDataContainer('Gameplay/Kits/USSupport_XP4')
		if usSupport == nil then
			print("US Support XP4 also not found")
			return
		end
	end
	
	usRecon = VeniceSoldierCustomizationAsset(usRecon)
	usAssault = VeniceSoldierCustomizationAsset(usAssault)
        usEngineer = VeniceSoldierCustomizationAsset(usEngineer)
	usSupport = VeniceSoldierCustomizationAsset(usSupport)

	CustomizationUnlockParts(CustomizationTable(usAssault.weaponTable).unlockParts[1]):MakeWritable()
	for i,weapon in pairs(CustomizationUnlockParts(CustomizationTable(usRecon.weaponTable).unlockParts[1]).selectableUnlocks) do
		if i <= 11 then
			--print("Changed Assault")
		CustomizationUnlockParts(CustomizationTable(usAssault.weaponTable).unlockParts[1]).selectableUnlocks:add(weapon)
		end
	end
	
	CustomizationUnlockParts(CustomizationTable(usEngineer.weaponTable).unlockParts[1]):MakeWritable()
	for i,weapon in pairs(CustomizationUnlockParts(CustomizationTable(usRecon.weaponTable).unlockParts[1]).selectableUnlocks) do
		if i <= 11 then
			--print("Changed Engineer")
		CustomizationUnlockParts(CustomizationTable(usEngineer.weaponTable).unlockParts[1]).selectableUnlocks:add(weapon)
		end
	end

        CustomizationUnlockParts(CustomizationTable(usSupport.weaponTable).unlockParts[1]):MakeWritable()
	for i,weapon in pairs(CustomizationUnlockParts(CustomizationTable(usRecon.weaponTable).unlockParts[1]).selectableUnlocks) do
		if i <= 11 then
			--print("Changed Recon")
		CustomizationUnlockParts(CustomizationTable(usSupport.weaponTable).unlockParts[1]).selectableUnlocks:add(weapon)
		end
	end
	
end)