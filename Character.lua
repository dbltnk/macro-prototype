-- Character

Character = Tile:extend
{
	class = "Character",

	props = {"x", "y", "skillLevel", "XPLevel", "equipLevel", "currentHealth", "maxHealth", "morale", "currentAP", "maxAP", "playTimePreferences"},
	sync_high = {"x", "y", "currentHealth", "maxHealth"},
	sync_low = {"XPLevel", "equipLevel"},
	
	image = "assets/graphics/player.png",
	
	skillLevel = 1,
	XPLevel = 1,
	equipLevel = 1,
	currentHealth = 100,
	maxHealth = 100,
	morale = 100,
	currentAP = 10,
	maxAP = 10,
	playTimePreferences = {},
	killedByPlayer = false,
	ganked = false,
	ingame = false,
	selected = false,
	targetX = 0, 
	targetY = 0, 
        
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.characters[self] = true
        self:updateSelection()
        self.targetX = self.x
		self.targetY = self.y
	end,
	
	move = function (self, elapsed)
		local cx,cy = tools.object_center(self)
		local dx,dy = vector.fromToWithLen(cx,cy, self.targetX,self.targetY, config.charSpeed * elapsed)
		if math.floor(cx) ~= math.floor(self.targetX) then
			if math.floor(cy) ~= math.floor(self.targetY) then
				self.x, self.y = vector.add(self.x, self.y, dx,dy) 
			end
		end
	end,
	
	onUpdateLocal = function (self, elapsed)
		if self.morale < 100 then self.morale = self.morale + 0.001 * elapsed end
		if self.morale < 20 and self.ingame then self:logout() end
		self:move(elapsed)
	end,
	
	onUpdateBoth = function (self)

	end,

        updateSelection = function (self)
            if self.selected then self.image = "assets/graphics/player.png"
            else self.image = "assets/graphics/character.png" end
        end,
        
        clicked = function (self)
            self.selected = not self.selected
            self:updateSelection()
        end,

        unclicked = function (self)
            self.selected = false
            self:updateSelection()
        end,

        clickAction = function (self, mx, my)
            if self.selected then
                self.targetX = mx
                self.targetY = my
            end
        end,
	
	login = function (self)
		if self.morale > 0 then
			self.visible = false
			self.solid = false
			self.x, self.y = self.spawnpoint
			self.ingame = true
		end
	end,
	
	logout = function (self)
		self.visible = false
		self.solid = false
		self.x, self.y = -9999, -9999
		self.ingame = false
	end,
	
	receiveLocal = function (self, message_name, ...)
		if message_name == "moveTo" then

		elseif message_name == "pickup" then
			
		elseif message_name == "drop" then
			
		elseif message_name == "stay" then
		
		elseif message_name == "login" then
			self:login()
		elseif message_name == "logout" then
			self:logout()	
		elseif message_name == "damage" then
			
		end
	end,	
	
	incapacitate = function (self)
		self.visible = false
		self.solid = false		
		if self.killedByPlayer then
			self.ganked = true
			self.killedByPlayer = false
		else 
			self.ganked = false
		end
		self:after(10,function() self:respawn() end)
	end,
	
	respawn = function (self)
		self.visible = true
		self.solid = true
		if self.ganked then 
			self.x, self.y = self.spawnpoint
			self.currentHealth = self.maxHealth
		else
			self.currentHealth = self.maxHealth / 2
		end
			
	end,
		
	onDie = function (self)
		the.characters[self] = nil		
		the.app.view.layers.characters:remove(self)	
	end,
}
