-- Ressource

Ressource = Tile:extend
{
	class = "Ressource",

	props = {"x", "y", "controllingFaction", "ressources"},
	sync_high = {"controllingFaction", "ressources"},
	
	image = "assets/graphics/ressource.png",
	width = 32,
	height = 64,
	controllingFaction = "unclaimed",
	ressources = 0,
	        
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.ressources[self] = true
      	drawDebugWrapper(self)
		self.controllerDisplay = RessourceText:new{
			x = self.x, y = self.y - 10, 
			faction = self.controllingFaction,
		}
		self.statusBar = UiBar:new{
			x = self.x, y = self.y, 
			dx = 0, dy = self.height,
			currentValue = 0, maxValue = 100, inc = true,
			width = self.pain_bar_size
		}
	end,
	
	onUpdateLocal = function (self, elapsed)
		if self.controllingFaction ~= "unclaimed" then
			self.ressources = utils.clamp(self.ressources + 1 * elapsed,0,9)
		end
	end,
	
	onUpdateBoth = function (self)
		self.controllerDisplay.faction = self.controllingFaction
		self.controllerDisplay.ressources = self.ressources
	end,
	
	onCollide = function (self, other, xOverlap, yOverlap)

	end,
	
	receiveLocal = function (self, message_name, ...)

	end,	
	
		
	onDieBoth = function (self)
		the.ressources[self] = nil		
		the.app.view.layers.characters:remove(self)		
	end,
}
