-- Sidebar

Sidebar = Tile:extend
{
	width = 1,
	height = 1,
	visible = false,
	frame = false,
	buttonExists = {},
	buttonTable = {},

	onNew = function (self)
		the.app.view.layers.ui:add(self)
		self.frame = loveframes.Create("frame")
		self.frame:SetSize(256 / inputScale, 1024 / inputScale)
		self.frame:SetPos(1024 / inputScale, 0 / inputScale, false)
		self.frame:SetDraggable(false)
		self.frame:SetScreenLocked(false)
		self.frame:ShowCloseButton(false)
	end,
	
	onUpdate = function (self, elapsed)
		local buttonHeight = 48
		for k, v in pairs(the.characters) do
			if not self.buttonExists[k] and k.clan == the.clan.name then
				self["button" .. k.oid] = loveframes.Create("imagebutton", self.frame)
				self["button" .. k.oid]:SetSize(256 / inputScale, buttonHeight / inputScale)
				self["button" .. k.oid]:SetImage("assets/graphics/button_on.png")
				self["button" .. k.oid].OnClick = function(object)
					object_manager.get(k.oid):clicked()
				end
				self.buttonExists[k] = true
				self.buttonTable[k] = self["button" .. k.oid]
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
			end
		end
		local counter = 0
		for k,v in pairs(self.buttonTable) do
			v:SetPos(0 / inputScale, 25 + counter * buttonHeight / inputScale)
			counter = counter + 1
			if not k.active then v:Remove() self.buttonTable[k] = nil end
		end
                
                self.frame:SetName("Clan " .. the.clan.name)
	end,
	
	onDie = function (self)
		frame:Remove()
		the.app.view.layers.ui:remove(self)
	end,
}


