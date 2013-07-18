-- Ressource

Ressource = Tile:extend
{
	class = "Ressource",

	props = {"x", "y", "controllingFaction", "ressources"},
	sync_high = {"controllingFaction", "ressources", "controlStatus"},
	
	image = "assets/graphics/ressource.png",
	width = 32,
	height = 64,
	controllingFaction = "unclaimed",
	ressources = 0,
	controlStatus = {},
	
	        
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
		for clan, number in pairs(self.controlStatus) do
			if number >= 100 then
				self.controllingFaction = clan
				for k, _ in pairs(self.controlStatus) do
					self.controlStatus[k] = 0
				end
				break
			end
		end	
		--~ for clan, number in pairs(self.controlStatus) do
			--~ print(clan, number)
		--~ end
	end,
	
	onUpdateBoth = function (self)
		self.controllerDisplay.faction = self.controllingFaction
		self.controllerDisplay.ressources = self.ressources
		for k,v in pairs (self.controlStatus) do
			if k ~= self.controllingFaction then
				self.statusBar.currentValue = v
			end
		end	
		for k,v in pairs(the.clans) do
			if k.name == self.controllingFaction then 
				self.statusBar.overrideColor = k.color
			end
		end
		if self.controllingFaction ~= "unclaimed" then
			if self.statusBar.currentValue == 0 then
				self.statusBar.currentValue = 100
			end
		end
	end,
	
	onCollide = function (self, other, xOverlap, yOverlap)

	end,
	
	receiveLocal = function (self, message_name, ...)	
		if message_name == "damage" then
			local str, source_oid = ...
			local status = self.controlStatus[object_manager.get_field(source_oid, "clan")]
			if not status then status = 0 end
			status = status + str
			status = utils.clamp(status,0,100)
			self.controlStatus[object_manager.get_field(source_oid, "clan")] = status
		elseif message_name == "give_me_ressources" then
			local str, source_oid = ...
			if self.ressources > 0 then
				object_manager.send(source_oid, "get_ressources", self.ressources, self.oid)
				self.ressources = 0
			end
		end
	end,	
	
	onDieBoth = function (self)
		the.ressources[self] = nil		
		the.app.view.layers.characters:remove(self)		
		self.controllerDisplay:die()
		self.statusBar:die()
	end,
}
