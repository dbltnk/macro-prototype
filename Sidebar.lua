-- Sidebar

Sidebar = Tile:extend
{
	width = 1,
	height = 1,
	visible = false,
	frame = false,
	characterButtonExists = {},
	characterButtonTable = {},
	clanButtonExists = {},
	clanButtonTable = {},

	onNew = function (self)
		the.app.view.layers.ui:add(self)
		self.outerframe = loveframes.Create("frame")
		self.outerframe:SetSize(256 / inputScale, 1024 / inputScale)
		self.outerframe:SetPos(1024 / inputScale, 0 / inputScale, false)
		self.outerframe:SetDraggable(false)
		self.outerframe:SetScreenLocked(false)
		self.outerframe:ShowCloseButton(false)
		
		self.characterframe = loveframes.Create("frame", self.outerframe)
		self.characterframe:SetSize(256 / inputScale, 487 / inputScale)
		self.characterframe:SetPos(0 / inputScale, 25 / inputScale, false)
		self.characterframe:SetDraggable(false)
		self.characterframe:SetScreenLocked(false)
		self.characterframe:ShowCloseButton(false)
		self.characterframe:MoveToTop()
		self.characterframe:SetName("Your Characters")
		
		self.clanframe = loveframes.Create("frame", self.outerframe)
		self.clanframe:SetSize(256 / inputScale, 487 / inputScale)
		self.clanframe:SetPos(0 / inputScale, 512 / inputScale, false)
		self.clanframe:SetDraggable(false)
		self.clanframe:SetScreenLocked(false)
		self.clanframe:ShowCloseButton(false)
		self.clanframe:MoveToTop()
		self.clanframe:SetName("Other Clans")
	end,
	
	onUpdate = function (self, elapsed)
		local buttonHeight = 48
		for k, v in pairs(the.characters) do
			if not self.characterButtonExists[k] and k.clan == the.clan.name then
				self["button" .. k.oid] = loveframes.Create("imagebutton", self.characterframe)
				self["button" .. k.oid]:SetSize(256 / inputScale, buttonHeight / inputScale)
				self["button" .. k.oid]:SetImage("assets/graphics/button_on.png")
				self["button" .. k.oid].OnClick = function(object)
					object_manager.get(k.oid):clicked()
				end
				self.characterButtonExists[k] = true
				self.characterButtonTable[k] = self["button" .. k.oid]
			end
		end
		for k, v in pairs(the.clans) do
			if not self.clanButtonExists[k] and k.name ~= the.clan.name then
				self["button" .. k.oid] = loveframes.Create("imagebutton", self.clanframe)
				self["button" .. k.oid]:SetSize(256 / inputScale, buttonHeight / inputScale)
				self["button" .. k.oid]:SetImage("assets/graphics/button_on.png")
				self["button" .. k.oid].OnClick = function(object)
					if k.status == "allied" then 
						k.status = "hostile"
					elseif k.status == "hostile" then 
						k.status = "war" 
					else
						k.status = "allied" 
					end
				end
				self.clanButtonExists[k] = true
				self.clanButtonTable[k] = self["button" .. k.oid]
			end
		end
		for k, v in pairs(the.characters) do
			if self["button" .. k.oid] then
				local hp = 1 - k.currentPain / k.maxPain
                --~ local selected = "[ ] "
                --~ if k.selected then selected = "[X] " end
                local ig = "on"
                if k.ingame == false then ig = "off" end
                local aggregateLevel = utils.round(k.skillLevel + k.XPLevel + k.equipLevel,1)
                local t = "[" .. k.nr .. "] " .. k.name .. " [" .. aggregateLevel .. "]" .. " [sl: " ..  utils.round(k.skillLevel,1) .. " | xl: " .. utils.round(k.XPLevel,1) .. " | el: " .. utils.round(k.equipLevel,1) .. "]\n" .. " (r:" .. utils.round(k.ressourcesCarried,0) .. ", e:" .. utils.round(k.essencesCarried,0) .. ", pl: " .. utils.round(k.payload) .. "/" .. config.maxPayload .. ", hp:" .. math.floor(hp * 100) .. "%)" .. " is " .. ig
                self["button" .. k.oid]:SetText(t)
                if k.selected then 
					self["button" .. k.oid]:SetImage("assets/graphics/button_selected.png")  
				else
					self["button" .. k.oid]:SetImage("assets/graphics/button_on.png")  
				end
				if k.dead then 
					self["button" .. k.oid]:SetImage("assets/graphics/button_dead.png")    
				end
                if not k.ingame then
					self["button" .. k.oid]:SetImage("assets/graphics/button_off.png")    
				end   
				self["button" .. k.oid]:MoveToTop()         
			end
		end
		for k, v in pairs(the.clans) do
			if self["button" .. k.oid] then
				local t = k.name .. " - " .. k.status
                self["button" .. k.oid]:SetText(t)            
				if k.status == "hostile" then 
					self["button" .. k.oid]:SetImage("assets/graphics/button_hostile.png")  
				elseif k.status == "allied" then 
					self["button" .. k.oid]:SetImage("assets/graphics/button_allied.png")  
				else
					self["button" .. k.oid]:SetImage("assets/graphics/button_war.png")  
				end 
				self["button" .. k.oid]:MoveToTop()
			end
		end
		local counter = 0
		for k,v in pairs(self.characterButtonTable) do
			v:SetPos(0 / inputScale, 25 + counter * buttonHeight / inputScale)
			counter = counter + 1
			if not k.active then v:Remove() self.characterButtonTable[k] = nil end
		end
        
        local otherCounter = 0
        for k,v in pairs(self.clanButtonTable) do
			v:SetPos(0 / inputScale, 25 + otherCounter * buttonHeight / inputScale)
			otherCounter = otherCounter + 1
			if not k.active then v:Remove() self.clanButtonTable[k] = nil end
		end
                
        self.outerframe:SetName("Clan " .. the.clan.name)
	end,
	
	onDie = function (self)
		frame:Remove()
		the.app.view.layers.ui:remove(self)
	end,
}


