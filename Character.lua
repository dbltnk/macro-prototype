-- Character

Character = Tile:extend
{
	class = "Character",

	props = {"x", "y", "skillLevel", "XPLevel", "equipLevel", "currentPain", "maxPain", "morale", "currentAP", "maxAP", "playTimePreferences", "elapsed", "dead", "name", "clan", "ressources"},
	sync_high = {"x", "y", "currentPain", "maxPain", "ressourcesCarried"},
	 
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
	elapsed = 0,
	names = {},
	name = "noname",
	clan = "",
	ressourcesCarried = 0,
        
	onNew = function (self)
		-- here's a list of awesome fantasy names, pick one
		table.insert(self.names,"Lowweasel")
		table.insert(self.names,"Diveshooter")
		table.insert(self.names,"Witmaw")
		table.insert(self.names,"Cometpacer")
		table.insert(self.names,"Vileember")
		table.insert(self.names,"Withawk")
		table.insert(self.names,"Nightgrowl")
		table.insert(self.names,"Ashpanther")
		table.insert(self.names,"Spinenest")
		table.insert(self.names,"Battlecinder")
		table.insert(self.names,"Mightyshot")
		table.insert(self.names,"Cattwister")
		table.insert(self.names,"Hopeflame")
		table.insert(self.names,"Angrycaster")
		table.insert(self.names,"Archersinger")
		table.insert(self.names,"Moontaker")
		table.insert(self.names,"Lonemark")
		table.insert(self.names,"Nightdrum")
		table.insert(self.names,"Earthwolf")
		table.insert(self.names,"Markstealer")
		table.insert(self.names,"Earthsnake")
		table.insert(self.names,"Arrowtracker")
		table.insert(self.names,"Dancesailor")
		table.insert(self.names,"Battleeater")
		table.insert(self.names,"Bonebeak")
		table.insert(self.names,"Rainbull")
		table.insert(self.names,"Frosttracer")
		table.insert(self.names,"Shinestealer")
		table.insert(self.names,"Grayseer")
		table.insert(self.names,"Warworm")
		table.insert(self.names,"Chaosfinder")
		table.insert(self.names,"Skydrum")
		table.insert(self.names,"Catseer")
		table.insert(self.names,"Bravehunt")
		table.insert(self.names,"Withand")
		table.insert(self.names,"Riftfletcher")
		table.insert(self.names,"Wildtear")
		table.insert(self.names,"Darkfang")
		table.insert(self.names,"Witmagus")
		table.insert(self.names,"Highmaker")
		table.insert(self.names,"Ironshade")
		table.insert(self.names,"Emberwhip")
		table.insert(self.names,"Lizardmaster")
		table.insert(self.names,"Dreamvictor")
		table.insert(self.names,"Starflute")
		table.insert(self.names,"Swordbard")
		table.insert(self.names,"Dreamjackal")
		table.insert(self.names,"Riftghoul")
		table.insert(self.names,"Archertwister")
		table.insert(self.names,"Spellnest")
		table.insert(self.names,"The Crafty")
		table.insert(self.names,"Brainshroud")
		table.insert(self.names,"Claybrood")
		table.insert(self.names,"Duskmind")
		table.insert(self.names,"Earthbrain")
		table.insert(self.names,"The Smart")
		table.insert(self.names,"The Black")
		table.insert(self.names,"Gravelshroud")
		table.insert(self.names,"The Shadow")
		table.insert(self.names,"The Witty")
		table.insert(self.names,"The Hidden")
		table.insert(self.names,"The Sly")
		table.insert(self.names,"The Evil")
		table.insert(self.names,"Rockshade")
		table.insert(self.names,"Shadowdusk ")
		table.insert(self.names,"Shadowmurk")
		table.insert(self.names,"Shadowthought")
		table.insert(self.names,"Sharpshroud")
		table.insert(self.names,"Slyclay")
		table.insert(self.names,"Slyrock")
		table.insert(self.names,"Boneghoul")
		table.insert(self.names,"The Deadly")
		table.insert(self.names,"Bronzebone")
		table.insert(self.names,"Bronzebrood")
		table.insert(self.names,"Charnelrot")
		table.insert(self.names,"The Skeletal")
		table.insert(self.names,"Coffindeath")
		table.insert(self.names,"The Cadaverous")
		table.insert(self.names,"Coffinkill")
		table.insert(self.names,"Corpsebrood")
		table.insert(self.names,"Deadbrood")
		table.insert(self.names,"The Trapper")
		table.insert(self.names,"The Ghoul")
		table.insert(self.names,"The Blade")
		table.insert(self.names,"Gravekill")
		table.insert(self.names,"Killrot")
		table.insert(self.names,"Rotspike")
		table.insert(self.names,"Rottrap")
		table.insert(self.names,"Shroudghoul")
		table.insert(self.names,"Steelkill")
		table.insert(self.names,"Monstercrusher")
		table.insert(self.names,"Badnugget")
		table.insert(self.names,"Hammerfighter")
		table.insert(self.names,"Witchsmiter")
		table.insert(self.names,"Bronzevictor")
		table.insert(self.names,"Grayender")
		table.insert(self.names,"Tunnelgrinder")
		table.insert(self.names,"Battleedge")
		table.insert(self.names,"Bladehunter")
		table.insert(self.names,"Honortunnel")
		table.insert(self.names,"Dragonkiller")
		table.insert(self.names,"Godssmasher")
		table.insert(self.names,"Honorcairn")
		table.insert(self.names,"Macefighter")
		table.insert(self.names,"Doomaxe")
		table.insert(self.names,"Quartzrunner")
		table.insert(self.names,"Deathbeard")
		table.insert(self.names,"Cairnbreaker")
		table.insert(self.names,"Grandslasher")
		table.insert(self.names,"Propfire")
		table.insert(self.names,"Graydig")
		table.insert(self.names,"Pickbeard")
		table.insert(self.names,"Marblebullion")
		table.insert(self.names,"Firecut")
		table.insert(self.names,"Blackquarrier")
		table.insert(self.names,"Fatekiller")
		table.insert(self.names,"Godbeard")
		table.insert(self.names,"Wargrinder")
		table.insert(self.names,"Lowcarver")
		table.insert(self.names,"Veingrinder")
		table.insert(self.names,"Oathhelm")
		table.insert(self.names,"Holyslayer")
		table.insert(self.names,"Oremaker")
		table.insert(self.names,"Doomgrinder")
		table.insert(self.names,"Holytracker")
		table.insert(self.names,"Keybreaker")
		table.insert(self.names,"Greatminer")
		table.insert(self.names,"Oathsmither")
		table.insert(self.names,"Godsvein")
		table.insert(self.names,"Enemysmasher")
		table.insert(self.names,"Braveslayer")
		table.insert(self.names,"Farmolder")
		table.insert(self.names,"Farmace")
		table.insert(self.names,"Flamehand")
		table.insert(self.names,"Gravelsapper")
		table.insert(self.names,"Flamesmith")
		table.insert(self.names,"Blackender")
		table.insert(self.names,"Cairnslayer")
		table.insert(self.names,"Bladesmelter")
		table.insert(self.names,"Marblemountain")			
		self.name = self.names[math.random(1,#self.names)]

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
			width = self.pain_bar_size *1.5, name = self.name, clan = self.clan
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
        self:collide(the.camps)
        self:collide(the.ressources)        
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
		self.nameLevel.y = self.y - 28
		self.nameLevel.skillLevel = self.skillLevel
		self.nameLevel.XPLevel = self.XPLevel
		self.nameLevel.equipLevel = self.equipLevel
		self.nameLevel.alpha = self.alpha
		self.nameLevel.name = self.name
		self.nameLevel.clan = self.clan

                -- select none
                if the.keys:justPressed(" ") then
                    self.selected = false
                    self:updateSelection()
                end

                -- select all
                if the.keys:justPressed("a") then
                    self.selected = true
                    self:updateSelection()
                end
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
       --    self.selected = false
         --  self:updateSelection()
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
			if other.clan ~= self.clan and not self.dead then
				local dmg = config.combatDMG * (self.skillLevel + self.XPLevel + self.equipLevel)
				object_manager.send(other.oid, "damage", dmg, self.oid)
			end
		elseif other.class == "Camp" then
			local delta = other.level - self.XPLevel
			if delta > -3 then
				self.XPLevel = self.XPLevel + other.level * config.XPGain * self.elapsed
			end
		elseif other.class == "Ressource" then
			if other.controllingFaction ~= self.clan then
				object_manager.send(other.oid, "damage", 1, self.oid)
			else
				object_manager.send(other.oid, "give_me_ressources", 1, self.oid)
			end
		elseif other.class == "City" then
			if self.ressourcesCarried > 0 then
				object_manager.send(other.oid, "get_ressources", self.ressourcesCarried, self.oid)
				self.ressourcesCarried = 0
			end
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
			local str, source_oid = ...
			self.currentPain = self.currentPain + str
			self.currentPain = utils.clamp(self.currentPain,0,self.maxPain)
		elseif message_name == "get_ressources" then
			local str, source_oid = ...
			self.ressourcesCarried = self.ressourcesCarried + str
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
		self.nameLevel:die()	
	end,
}
