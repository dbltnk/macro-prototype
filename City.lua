-- City

City = Tile:extend
{
	class = "City",

	props = {"x", "y", "name", "ressourcesStored", "status", "level", "essencesStored", "controllingFaction"},
	sync_high = {"ressourcesStored", "status","level", "essencesStored", "controllingFaction"},
	
	image = "assets/graphics/ruins.png",
	names = {},
	name = "",
	status = "destroyed",
	level = 0,
	ressourcesStored = 0,
	essencesStored = 0,
	controllingFaction = "unclaimed",
        
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.cities[self] = true
      	drawDebugWrapper(self)
      	table.insert(self.names,"Northglass")
		table.insert(self.names,"Janwynne")
		table.insert(self.names,"Bellmarsh")
		table.insert(self.names,"Elfbridge")
		table.insert(self.names,"Wyvernston")
		table.insert(self.names,"Springhedge")
		table.insert(self.names,"Greenmoor")
		table.insert(self.names,"Lightwind")
		table.insert(self.names,"Marblefair")			
		self.name = "ruin"
		self.cityDisplay = CityDisplay:new{
			x = self.x, y = self.y - 10, 
			name = self.name, level = self.level, controller = self.controllingFaction,
			ressources = self.ressourcesStored, essences = self.essencesStored,
			width = self.width
		}
	end,
	
	onUpdateLocal = function (self, elapsed)
		if self.ressourcesStored > 10 and self.status == "destroyed" then
			self:build()
		end
		if self.level < the.phaseManager.fakeDays then
			self:upgrade()
		end
	end,
	
	onUpdateBoth = function (self)
		self.cityDisplay.name = self.name
		self.cityDisplay.level = self.level
		self.cityDisplay.ressources = self.ressourcesStored
		self.cityDisplay.essences = self.essencesStored
		self.cityDisplay.controller = self.controllingFaction
		if self.status == "destroyed" then
			self.image = "assets/graphics/ruins.png"
		else
			self.image = "assets/graphics/city.png"
		end
	end,
	
	onCollide = function (self, other, xOverlap, yOverlap)
		if self.status == "intact" and other.clan ~= self.controllingFaction then
			self:displace(other)
		end
	end,
	
	receiveLocal = function (self, message_name, ...)
		if message_name == "get_ressources" then
			local str, source_oid = ...
			self.ressourcesStored = self.ressourcesStored + str
		elseif message_name == "get_essences" then
			local str, source_oid = ...
			self.essencesStored = self.essencesStored + str
		elseif message_name == "hello" then
			local source_oid = ...
			if self.status == "destroyed" then
				self.controllingFaction = object_manager.get_field (source_oid, "clan")
			end
		elseif message_name == "level_me" then
			local source_oid = ...
			if self.essencesStored > 0 and object_manager.get(source_oid).essenceXP  < the.phaseManager.fakeDays then
				local need = math.min(the.phaseManager.fakeDays - object_manager.get(source_oid).essenceXP, self.level)
				local supply = math.min(need, self.essencesStored)
				if need > 0 and supply > 0 then
					object_manager.get(source_oid).essenceXP  = object_manager.get(source_oid).essenceXP  + supply
					self.essencesStored = self.essencesStored - supply
				end
			end
		elseif message_name == "equip_me" then
			local source_oid = ...
			if self.ressourcesStored > 0 and object_manager.get(source_oid).equipLevel  < the.phaseManager.fakeDays then
				local need = math.min(the.phaseManager.fakeDays - object_manager.get(source_oid).equipLevel, self.level) 
				local supply = math.min(need, self.ressourcesStored)
				if need > 0 and supply > 0 then
					object_manager.get(source_oid).equipLevel  = object_manager.get(source_oid).equipLevel  + supply
					self.ressourcesStored = self.ressourcesStored - supply
				end
			end	
		end
	end,	
		
	onDieBoth = function (self)
		the.cities[self] = nil		
		the.app.view.layers.characters:remove(self)	
		if self.ressourceDisplay then
			self.ressourceDisplay:die()
		end
	end,
	
	build = function (self)
		self.image = "assets/graphics/city.png"
		self.status = "intact"
		self.level = 1
		self.name = self.names[math.random(1,#self.names)]
		self.ressourcesStored = self.ressourcesStored - 10
	end,
	
	destroy = function (self)
		self.image = "assets/graphics/ruins.png"
		self.status = "destroyed"
		self.level = 0
		self.name = "ruin"
		self.controllingFaction = "unclaimed"
	end,
	
	upgrade = function (self) 
		local costs = (self.level + 1) * config.upgradeFactor
		if self.ressourcesStored >= costs and self.status == "intact" then
			self.level = self.level + 1
			self.ressourcesStored = self.ressourcesStored - costs
		end
	end,
}
