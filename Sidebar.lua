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
		local i = 0
		for k, v in pairs(the.characters) do
			if not self.buttonExists[k] and k.clan == the.clan.name then
				self["button" .. i] = loveframes.Create("button", self.frame)
				self["button" .. i]:SetSize(256 / inputScale, 32 / inputScale)
				self["button" .. i]:SetText(k.name .. " (" .. k.ressourcesCarried .. ")")
				self["button" .. i].OnClick = function(object)
					object_manager.get(k.oid):clicked()
				end
				self.buttonExists[k] = true
				self.buttonTable[k] = self["button" .. i]
				i = i + 1
			end
		end
		local j = 0
		for k, v in pairs(the.characters) do
                        if self["button" .. j] then
                            self["button" .. j]:SetText(k.name .. " (" .. k.ressourcesCarried .. ")")
                            j = j + 1
                        end
		end
		local counter = 0
		for k,v in pairs(self.buttonTable) do
			v:SetPos(0 / inputScale, 32 / inputScale + counter * 32 / inputScale)
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


