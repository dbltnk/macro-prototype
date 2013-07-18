-- City

City = Tile:extend
{
	class = "City",

	props = {"x", "y", "name", "ressourcesStored"},
	sync_high = {"ressourcesStored"},
	
	image = "assets/graphics/city.png",
	names = {},
	ressourcesStored = 0,
	name = "",
        
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
		self.name = self.names[math.random(1,#self.names)]
		self.ressourceDisplay = RessourceText:new{
			x = self.x, y = self.y - 10, 
			faction = self.name,
		}
	end,
	
	onUpdateLocal = function (self, elapsed)

	end,
	
	onUpdateBoth = function (self)
		self.ressourceDisplay.ressources = self.ressourcesStored
	end,
	
	onCollide = function (self, other, xOverlap, yOverlap)

	end,
	
	receiveLocal = function (self, message_name, ...)
		if message_name == "get_ressources" then
			local str, source_oid = ...
			self.ressourcesStored = self.ressourcesStored + str
		end
	end,	
	
		
	onDieBoth = function (self)
		the.cities[self] = nil		
		the.app.view.layers.characters:remove(self)	
		self.ressourceDisplay:die()
	end,
}
