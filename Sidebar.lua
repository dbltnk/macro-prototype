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
		self.frame:SetSize(256, 1024)
		self.frame:SetPos(1024, 0, false)
		self.frame:SetName("Macro Gameplay Prototype")
		self.frame:SetDraggable(false)
		self.frame:SetScreenLocked(false)
		self.frame:ShowCloseButton(false)
	end,
	
	onUpdate = function (self, elapsed)
		for k, v in pairs(the.characters) do
			if not self.buttonExists[k] then
				local button = loveframes.Create("button", self.frame)
				--~ local button = loveframes.Create("button")				
				button:SetSize(256, 32)
				button:SetText(k.oid)
				button.OnClick = function(object)
					object_manager.get(k.oid):clicked()
				end
				self.buttonExists[k] = true
				self.buttonTable[k] = button
			end
		end
		local counter = 0
		for k,v in pairs(self.buttonTable) do
			v:SetPos(0, 32 + counter * 32)
			counter = counter + 1
		end
	end,
	
	onDie = function (self)
		frame:Remove()
		the.app.view.layers.ui:remove(self)
	end,
}


