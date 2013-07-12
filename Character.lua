-- Character

Character = Tile:extend
{
	class = "Character",

	props = {"x", "y", "skillLevel", "XPLevel", "equipLevel", "currentPain", "maxPain", "morale", "currentAP", "maxAP", "playTimePreferences", "elapsed"},
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
	elapsed = 0,
	names = {},
	name = "noname",
        
	onNew = function (self)
		-- here's a list of awesome fantasy names, pick one
		table.insert(self.names,"Atacuh Lowweasel")
		table.insert(self.names,"Ayosenu Diveshooter")
		table.insert(self.names,"Bilzu Witmaw")
		table.insert(self.names,"Corukner Cometpacer")
		table.insert(self.names,"Dalat Vileember")
		table.insert(self.names,"Dazunev Withawk")
		table.insert(self.names,"Durek Nightgrowl")
		table.insert(self.names,"Edole Ashpanther")
		table.insert(self.names,"Enile Spinenest")
		table.insert(self.names,"Esakito Battlecinder")
		table.insert(self.names,"Etdan Mightyshot")
		table.insert(self.names,"Idear Cattwister")
		table.insert(self.names,"Imonar Hopeflame")
		table.insert(self.names,"Karav Angrycaster")
		table.insert(self.names,"Keceraf Archersinger")
		table.insert(self.names,"Kerikoli Moontaker")
		table.insert(self.names,"Kicah Lonemark")
		table.insert(self.names,"Lafadnek Nightdrum")
		table.insert(self.names,"Lisob Earthwolf")
		table.insert(self.names,"Nivda Markstealer")
		table.insert(self.names,"Okanedut Earthsnake")
		table.insert(self.names,"Oritibur Arrowtracker")
		table.insert(self.names,"Sikuloid Dancesailor")
		table.insert(self.names,"Ukean Battleeater")
		table.insert(self.names,"Uxalyr Bonebeak")
		table.insert(self.names,"Aredato Rainbull")
		table.insert(self.names,"Arubymod Frosttracer")
		table.insert(self.names,"Derta Shinestealer")
		table.insert(self.names,"Enaniriz Grayseer")
		table.insert(self.names,"Foxozan Warworm")
		table.insert(self.names,"Fyrde Chaosfinder")
		table.insert(self.names,"Havinail Skydrum")
		table.insert(self.names,"Iduroni Catseer")
		table.insert(self.names,"Irsus Bravehunt")
		table.insert(self.names,"Kano Withand")
		table.insert(self.names,"Kudimlac Riftfletcher")
		table.insert(self.names,"Lizdu Wildtear")
		table.insert(self.names,"Maledbok Darkfang")
		table.insert(self.names,"Menorito Witmagus")
		table.insert(self.names,"Nolry Highmaker")
		table.insert(self.names,"Nutok Ironshade")
		table.insert(self.names,"Ovake Emberwhip")
		table.insert(self.names,"Saterasa Lizardmaster")
		table.insert(self.names,"Tanexraz Dreamvictor")
		table.insert(self.names,"Tired Starflute")
		table.insert(self.names,"Tori Swordbard")
		table.insert(self.names,"Torsa Dreamjackal")
		table.insert(self.names,"Ukokora Riftghoul")
		table.insert(self.names,"Uzoax Archertwister")
		table.insert(self.names,"Zakaduaf Spellnest")
		table.insert(self.names,"Brainshade The Crafty")
		table.insert(self.names,"Brainshroud")
		table.insert(self.names,"Claybrood")
		table.insert(self.names,"Duskmind")
		table.insert(self.names,"Earthbrain")
		table.insert(self.names,"Gloombrain The Smart")
		table.insert(self.names,"Gloomstealth The Black")
		table.insert(self.names,"Gravelshroud")
		table.insert(self.names,"Mindshade The Shadow")
		table.insert(self.names,"Mindshade The Witty")
		table.insert(self.names,"Mindshroud The Hidden")
		table.insert(self.names,"Murkdusk The Sly")
		table.insert(self.names,"Murkshroud The Evil")
		table.insert(self.names,"Rockshade The Evil")
		table.insert(self.names,"Shadowdusk The Sly")
		table.insert(self.names,"Shadowmurk")
		table.insert(self.names,"Shadowthought The Sneaky")
		table.insert(self.names,"Sharpshroud")
		table.insert(self.names,"Slyclay The Stealthy")
		table.insert(self.names,"Slyrock The Dark")
		table.insert(self.names,"Boneghoul")
		table.insert(self.names,"Boneshroud The Deadly")
		table.insert(self.names,"Bronzebone")
		table.insert(self.names,"Bronzebrood")
		table.insert(self.names,"Charnelrot")
		table.insert(self.names,"Coffinblade The Skeletal")
		table.insert(self.names,"Coffindeath")
		table.insert(self.names,"Coffinghoul The Cadaverous")
		table.insert(self.names,"Coffinkill")
		table.insert(self.names,"Corpsebrood")
		table.insert(self.names,"Deadbrood")
		table.insert(self.names,"Deadchain The Trapper")
		table.insert(self.names,"Evilkill The Ghoul")
		table.insert(self.names,"Evilsnare The Blade")
		table.insert(self.names,"Gravekill")
		table.insert(self.names,"Killrot")
		table.insert(self.names,"Rotspike")
		table.insert(self.names,"Rottrap")
		table.insert(self.names,"Shroudghoul")
		table.insert(self.names,"Steelkill")
		table.insert(self.names,"Betus Monstercrusher")
		table.insert(self.names,"Blas Badnugget")
		table.insert(self.names,"Chedl Hammerfighter")
		table.insert(self.names,"Cori Witchsmiter")
		table.insert(self.names,"Crar Bronzevictor")
		table.insert(self.names,"Hel Grayender")
		table.insert(self.names,"Hit Tunnelgrinder")
		table.insert(self.names,"Hiyeb Battleedge")
		table.insert(self.names,"Iera Bladehunter")
		table.insert(self.names,"Kahe Honortunnel")
		table.insert(self.names,"Korron Dragonkiller")
		table.insert(self.names,"Kror Godssmasher")
		table.insert(self.names,"Lefti Honorcairn")
		table.insert(self.names,"Mgehr Macefighter")
		table.insert(self.names,"Nokere Doomaxe")
		table.insert(self.names,"Oeha Quartzrunner")
		table.insert(self.names,"Ravom Deathbeard")
		table.insert(self.names,"Rerko Cairnbreaker")
		table.insert(self.names,"Ritrit Grandslasher")
		table.insert(self.names,"Rmoh Propfire")
		table.insert(self.names,"Ror Graydig")
		table.insert(self.names,"Rotul Pickbeard")
		table.insert(self.names,"Rrud Marblebullion")
		table.insert(self.names,"Soytif Firecut")
		table.insert(self.names,"Tageha Blackquarrier")
		table.insert(self.names,"Bsir Fatekiller")
		table.insert(self.names,"Dar Godbeard")
		table.insert(self.names,"Dernot Wargrinder")
		table.insert(self.names,"Dob Lowcarver")
		table.insert(self.names,"Gihra Veingrinder")
		table.insert(self.names,"Had Oathhelm")
		table.insert(self.names,"Hih Holyslayer")
		table.insert(self.names,"Iodo Oremaker")
		table.insert(self.names,"Karise Doomgrinder")
		table.insert(self.names,"Kid Holytracker")
		table.insert(self.names,"Ligat Keybreaker")
		table.insert(self.names,"Mokgid Greatminer")
		table.insert(self.names,"Nek Oathsmither")
		table.insert(self.names,"Nokete Godsvein")
		table.insert(self.names,"Rakad Enemysmasher")
		table.insert(self.names,"Rakhab Braveslayer")
		table.insert(self.names,"Rerkir Farmolder")
		table.insert(self.names,"Rked Farmace")
		table.insert(self.names,"Rkitm Flamehand")
		table.insert(self.names,"Ror Gravelsapper")
		table.insert(self.names,"Ruhrab Flamesmith")
		table.insert(self.names,"Sdig Blackender")
		table.insert(self.names,"Shen Cairnslayer")
		table.insert(self.names,"Tohro Bladesmelter")
		table.insert(self.names,"Tras Marblemountain")			
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
			local delta = other.level - self.XPLevel
			if delta > -3 then
				self.XPLevel = self.XPLevel + other.level * config.XPGain * self.elapsed
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
