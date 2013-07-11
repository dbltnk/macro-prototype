-- Character

Character = Tile:extend
{
	class = "Character",

	props = {"x", "y", "skillLevel", "XPLevel", "equipLevel", "currentHealth", "maxHealth", "morale", "currentAP", "maxAP", "playTimePreferences"},
	sync_high = {"x", "y", "currentHealth", "maxHealth"},
	sync_low = {"XPLevel", "equipLevel"},
	
	image = "assets/graphics/character.png",
	
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
	
	onNew = function (self)
		self:mixin(GameObject)
		the.app.view.layers.characters:add(self)	
		object_manager.create(self)
		the.characters[self] = true
	end,
	
	onUpdateLocal = function (self, elapsed)
		if self.morale < 100 then self.morale = self.morale + 0.001 * elapsed end
		if self.morale < 20 and self.ingame then self:logout() end
	end,
	
	onUpdateBoth = function (self)

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
