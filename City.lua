-- City

City = Tile:extend
{
	class = "City",

	props = {"x", "y"},
	sync_high = {},
	
	image = "assets/graphics/city.png",
	
        
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.cities[self] = true
      	drawDebugWrapper(self)
	end,
	
	onUpdateLocal = function (self, elapsed)

	end,
	
	onUpdateBoth = function (self)

	end,
	
	onCollide = function (self, other, xOverlap, yOverlap)

	end,
	
	receiveLocal = function (self, message_name, ...)

	end,	
	
		
	onDieBoth = function (self)
		the.cities[self] = nil		
		the.app.view.layers.characters:remove(self)	
	end,
}
