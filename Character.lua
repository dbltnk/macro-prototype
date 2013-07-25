-- Character

Character = Tile:extend
{
	class = "Character",

	props = {"x", "y", "skillLevel", "XPLevel", "equipLevel", "currentPain", "maxPain", "elapsed", "dead", "name", "clan", "essencesCarried", "ressourcesCarried", "payload"},
	sync_high = {"x", "y", "skillLevel", "XPLevel", "equipLevel", "currentPain", "maxPain", "ressourcesCarried", "essencesCarried", "dead", "payload"},
	 
	image = "assets/graphics/player.png",
	
	skillLevel = 0,
	XPLevel = 0,
	equipLevel = 0,
	currentPain = 0,
	maxPain = 100,
	morale = 100,
	playTimePreferences = {},
	killedByPlayer = false,
	ganked = false,
	ingame = true,
	selected = false,
	targetX = 0, 
	targetY = 0, 
	pain_bar_size = 32,	
	dead = false,
	elapsed = 0,
	names = {},
	name = "noname",
	clan = "",
    -- local only for ui/input purpose
    nr = 0,
	ressourcesCarried = 0,
	essencesCarried = 0,
	logOutX = 0,
	logOutY = 0,
	loginTime = 0,
	logoutTime = 0,
	atHome = false,
	baseXP = 0,
	actionXP = 0,
	essenceXP = 0,
	payload = 0,
        
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
        
        -- needed for movement
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
		
		-- just a quick hack so the right amount of players is ingame when you start
		if self.logoutTime >= 16 and self.ingame then 
			self:logout()
		end
		
		-- base skill and XP gains over time
		self:every(1, function() 
			self:gainSkill(config.baseSkillGain)
			self.baseXP = self.baseXP + config.baseXPGain
		end)
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
		self:move(elapsed)
        self:collide(the.app.view.layers.characters)
        self:collide(the.camps)
        self:collide(the.ressources)  
      
        local aggregateLevel = self.skillLevel + self.XPLevel + self.equipLevel
        self.maxPain = config.baseHP * aggregateLevel  
         
        -- die when you have too much damage
        if self.currentPain >= self.maxPain * 0.95 and not self.dead then
			self:incapacitate()
        end		
        -- health regeneration
        if self.currentPain < self.maxPain and not self.dead  then
			local regAmount = self.currentPain * elapsed * config.healthReg
			self.currentPain = self.currentPain - regAmount
			print(self.currentPain, regAmount)
        end
        -- cap
		self.currentPain = utils.clamp(self.currentPain, 0, self.maxPain) 
		
		-- characters log in and out at set times
		if the.phaseManager then
			if the.phaseManager.fakeHours == self.logoutTime then
				self:logout()
			end
			if the.phaseManager.fakeHours == self.loginTime then
				self:login()
			end
		end
		
		-- updates the aggregated XPLevel so we can display and use it
		self.XPLevel = self.baseXP + self.actionXP + self.essenceXP
		
		-- select none
        if the.keys:justPressed(" ") then
			self.selected = false
			self:updateSelection()
        end

        -- select all
        if the.keys:justPressed("a") then
			if self.ingame then
				self.selected = true
				self:updateSelection()
			end
		end

		if self.nr and self.nr > 0 and the.keys:justPressed("" .. self.nr) then
			self.selected = not self.selected
			self:updateSelection()
			for character, _ in pairs(the.characters) do
				if character.nr ~= self.nr then
					character.selected = false
					character:updateSelection()
				end
			end
		end
		
		self.payload = self.equipLevel + self.ressourcesCarried + self.essencesCarried
	end,
	
	onUpdateBoth = function (self)

		-- color my characters in my clan color
		for k,v in pairs(the.clans) do
			if k.name == self.clan then 
				self.tint = k.color
			end
		end

		self.painBar.currentValue = self.currentPain
		self.painBar.maxValue = self.maxPain
		self.painBar.bar.alpha = self.alpha
		self.painBar.background.alpha = self.alpha
		--~ self.painBar.width = self.pain_bar_size * self.maxPainOverdrive
		self.painBar:updateBar()
		self.painBar.x = self.x - self.width / 2
		self.painBar.y = self.y + 5
		self.painBar.bar.visible = self.visible
		self.painBar.background.visible = self.visible
		self.nameLevel.x = self.x - self.width / 2
		self.nameLevel.y = self.y - 28
		self.nameLevel.skillLevel = utils.round(self.skillLevel,2)
		self.nameLevel.XPLevel = utils.round(self.XPLevel,2)
		self.nameLevel.equipLevel = utils.round(self.equipLevel,2)
		self.nameLevel.alpha = self.alpha
		self.nameLevel.name = self.name
		self.nameLevel.clan = self.clan
		self.nameLevel.visible = self.visible
	end,

       updateSelection = function (self)
           if self.selected then 
			self.image = "assets/graphics/player.png"
           else 
			self.image = "assets/graphics/character.png" 
           end
       end,

       clicked = function (self)
			if self:isLocal() then
				self.selected = not self.selected	
				self:updateSelection()
			end
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
		if not self.ingame then
			self.visible = true
			self.solid = true
			if self.logOutX and self.logOutY then
				self.x, self.y = self.logOutX, self.logOutY
			else
				self.x, self.y = the.clan.homeX + math.random(-50,50), the.clan.homeY + math.random(-50,50)
			end
			self.logOutX, self.logOutY = 0, 0 
			self.ingame = true
		end
	end,
	
	logout = function (self)
		if self.ingame then
			self.visible = false
			self.solid = false
			self.logOutX, self.logOutY = self.x, self.y
			self.x, self.y = -9999, -9999
			self.ingame = false
		end
	end,
	
	onCollide = function (self, other, xOverlap, yOverlap)
		if other.class == "Character" then
			if other.clan ~= self.clan and self.dead == false and other.dead == false then
				local dmg = config.combatDMG * (self.skillLevel + self.XPLevel + self.equipLevel) * self.elapsed
				-- dish out damage to the other character
				object_manager.send(other.oid, "damage", dmg, self.oid)
				-- give myself some combatSkill for fighting
				if not other.dead then self:gainSkill(config.combatSkillGain * self.elapsed) end
			end
			if other.clan == self.clan and self.dead == false and other.dead == false then
				-- when with a friendly player assume we're training and gain some skill
				self:gainSkill(config.trainingSkillGain * self.elapsed)
			end
			if other.dead and not self.dead then
				if self:calculateCapacity() > 0 then
					object_manager.send(other.oid, "give_me_all_your_stuff", self.oid, self:calculateCapacity())	
				end
			end
		elseif other.class == "Camp" then
			self:gainActionXP(other.level)
			if self:calculateCapacity() > 0 then
				self.essencesCarried = self.essencesCarried + config.essenceFarmGain * self.elapsed
			end
		elseif other.class == "Ressource" then
			if other.controllingFaction ~= self.clan then
				object_manager.send(other.oid, "damage", 1, self.oid)
			else
				if self:calculateCapacity() > 0 then
					object_manager.send(other.oid, "give_me_ressources", self:calculateCapacity(), self.oid)
				end
			end
		elseif other.class == "City" then
			object_manager.send(other.oid, "hello", self.oid)
			if other.controllingFaction == self.clan then
				object_manager.send(other.oid, "get_ressources", self.ressourcesCarried, self.oid)
				self.ressourcesCarried = 0
				object_manager.send(other.oid, "get_essences", self.essencesCarried, self.oid)
				self.essencesCarried = 0	
				object_manager.send(other.oid, "level_me", self.oid)	
				if self:calculateCapacity() > 0 then			
					object_manager.send(other.oid, "equip_me", self.oid)	
				end			
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
		elseif message_name == "give_me_all_your_stuff" then
			local source_oid = ...
			object_manager.send(source_oid, "change_value", "essencesCarried", self.essencesCarried, self.oid)
			self.essencesCarried = 0
			object_manager.send(source_oid, "change_value", "ressourcesCarried", self.ressourcesCarried, self.oid)
			self.ressourcesCarried = 0
			object_manager.send(source_oid, "change_value", "ressourcesCarried", self.equipLevel, self.oid)
			self.equipLevel = 0
		elseif message_name == "change_value" then
			local value, amount, source_oid = ...
			local capacity = self:calculateCapacity()
			if amount <= capacity then
				self[value] = self[value] + amount
			else
				self[value] = self[value] + capacity
				local overflow = amount - capacity				
				object_manager.send(source_oid, "change_value", value, overflow)
			end
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
		print("incapacit", self.oid)
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
	
	gainSkill = function (self, amount)
		self.skillLevel = self.skillLevel + amount
	end,
	
	gainActionXP = function (self, level)
		if the.phaseManager then
			self.actionXP = self.actionXP + config.actionXPGain * self.elapsed * level
			self.actionXP = math.min(self.actionXP, the.phaseManager.fakeDays)
		end
	end,					
	
	calculateCapacity = function (self)
		return config.maxPayload - self.payload
	end,
}

