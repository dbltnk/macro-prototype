-- Treasure

Treasure = Tile:extend
{
	class = "Treasure",

	props = {"x", "y"},
	sync_high = {"x", "y"},
	 
	image = "assets/graphics/treasure.png",
	
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.treasures[self] = true
	end,
	
	
	onUpdateLocal = function (self, elapsed)
		
	end,
	
	onUpdateBoth = function (self)
		
	end,
	
	onCollide = function (self, other, xOverlap, yOverlap)
		if other.class == "Character" then
			object_manager.send(self.oid, "die", other.oid)
		end
	end,
	
	receiveLocal = function (self, message_name, ...)
		if message_name == "die" and self.active then
			local source_oid = ...
			object_manager.send(source_oid, "get_ressources", config.treasureWorth, self.oid)
			self:die()
		end
	end,	
		
	onDieBoth = function (self, source_oid)
		the.treasures[self] = nil		
		the.app.view.layers.characters:remove(self)	
	end,
}
