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
	end,
	
	onUpdateBoth = function (self)
		self.cityDisplay.name = self.name
		self.cityDisplay.level = self.level
		self.cityDisplay.ressources = math.floor(self.ressourcesStored)
		self.cityDisplay.essences = math.floor(self.essencesStored)
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
		elseif message_name == "hello" then
			local source_oid = ...
			if self.status == "destroyed" then
				self.controllingFaction = object_manager.get_field (source_oid, "clan")
			end
		end
	end,	
		
	onDieBoth = function (self)
		the.cities[self] = nil		
		the.app.view.layers.characters:remove(self)	
		self.ressourceDisplay:die()
	end,
	
	build = function (self)
		self.image = "assets/graphics/city.png"
		self.status = "intact"
		self.level = 1
		self.name = self.names[math.random(1,#self.names)]
	end,
	
	destroy = function (self)
		self.image = "assets/graphics/ruins.png"
		self.status = "destroyed"
		self.level = 0
		self.name = "ruin"
		self.controllingFaction = "unclaimed"
	end,
}
