-- Character

Character = Tile:extend
{
	class = "Character",

	props = {"x", "y", "skillLevel", "XPLevel", "equipLevel", "currentPain", "maxPain", "morale", "currentAP", "maxAP", "playTimePreferences"},
	sync_high = {"x", "y", "currentPain", "maxPain"},
	sync_low = {"XPLevel", "equipLevel"},
	
	image = "assets/graphics/player.png",
	
	skillLevel = 1,
	XPLevel = 1,
	equipLevel = 1,
	currentPain = 0,
	maxPain = 100,
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
	pain_bar_size = 32,	
	dead = false,
        
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.characters[self] = true
        self:updateSelection()
        self.targetX = self.x
		self.targetY = self.y
		self.painBar = UiBar:new{
			x = self.x, y = self.y, 
			dx = 0, dy = self.height,
			currentValue = self.currentPain, maxValue = self.maxPain, inc = false,
			width = self.pain_bar_size,
		}
		self.nameLevel = NameLevel:new{
			x = self.x, y = self.y, 
			skillLevel = self.skillLevel, XPLevel = self.XPLevel,
			equipLevel = self.equipLevel, 
			width = self.pain_bar_size * 2,
		}
		drawDebugWrapper(self)
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
		self.elapsed = elapsed
		--~ if self.morale < 100 then self.morale = self.morale + 0.001 * elapsed end
		--~ if self.morale < 20 and self.ingame then self:logout() end
		self:move(elapsed)
        self:collide(the.app.view.layers.characters)
        self:collide(the.camp)
        if self.currentPain >= self.maxPain and not self.dead then
			self:incapacitate()
        end		
        if self.currentPain < self.maxPain and not self.dead  then
			self.currentPain = self.currentPain - config.healthReg * elapsed
        end
		self.currentPain = utils.clamp(self.currentPain, 0, self.maxPain) 
	end,
	
	onUpdateBoth = function (self)
		self.painBar.currentValue = self.currentPain
		self.painBar.maxValue = self.maxPain
		self.painBar.bar.alpha = self.alpha
		self.painBar.background.alpha = self.alpha
		--~ self.painBar.width = self.pain_bar_size * self.maxPainOverdrive
		self.painBar:updateBar()
		self.painBar.x = self.x - self.width / 2
		self.painBar.y = self.y + 5
		self.nameLevel.x = self.x - self.width / 2
		self.nameLevel.y = self.y - 15
		self.nameLevel.skillLevel = self.skillLevel
		self.nameLevel.XPLevel = self.XPLevel
		self.nameLevel.equipLevel = self.equipLevel
		self.nameLevel.alpha = self.alpha
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
	
	onCollide = function (self, other, xOverlap, yOverlap)
		if other.class == "Character" then
			self.currentPain = self.currentPain + config.combatDMG * self.elapsed * (other.skillLevel + other.XPLevel + other.equipLevel)
		elseif other.class == "Camp" then
			self.XPLevel = self.XPLevel + other.level * self.elapsed
		end
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
		self.dead = true
		self:unclicked()	
		--~ self.targetX, self.targetY = self.x, self.y		
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
		self.dead = false		
		if self.ganked then 
			self.x, self.y = self.spawnpoint
			self.currentPain = 0
		else
			self.currentPain = self.maxPain / 2
		end
			
	end,
		
	onDieBoth = function (self)
		the.characters[self] = nil		
		the.app.view.layers.characters:remove(self)	
		self.painBar:die()		
	end,
}
