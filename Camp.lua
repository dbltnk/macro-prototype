-- Camp

Camp = Tile:extend
{
	class = "Camp",

	props = {"x", "y", "level"},
	sync_high = {},
	sync_low = {},
	
	image = "assets/graphics/camp.png",
	
	level = 1,
        
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.camps[self] = true
      	drawDebugWrapper(self)
		print(self.level, self.x,self.y,self.width,self.height)
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
		the.camps[self] = nil		
		the.app.view.layers.characters:remove(self)		
	end,
}
