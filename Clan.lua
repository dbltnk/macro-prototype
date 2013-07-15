-- Clan

Clan = Sprite:extend
{
	class = "Clan",

	props = {"name", "color"},
	
	width = 1,
	height = 1,
	
	members = {},
	name = "",
	hometown = 0,
	color = {},
	
	onNew = function (self)
		self.x = -1000
		self.y = -1000
		self.visible = false
		self:mixin(GameObject)
		the.app.view.layers.management:add(self)
		the.clans[self] = true
		self.name = localconfig.team 
		self.hometown = the["spawnpoint" .. math.random(1,4)]
		self.color = {math.random(0,255),math.random(0,255),math.random(0,255)}
		local homeX, homeY = tools.object_center(self.hometown)
		
		if not self.created_via_network then		
			self.testChar1 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 3, XPLevel = 2, equipLevel = 2}
			table.insert(self.members, self.testChar1)
			self.testChar1.clan = self.name

			self.testChar2 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 1, XPLevel = 5, equipLevel = 5}
			table.insert(self.members, self.testChar2)
			self.testChar2.clan = self.name
			
			self.testChar3 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 1, XPLevel = 3, equipLevel = 1}	
			table.insert(self.members, self.testChar3)
			self.testChar3.clan = self.name
			
			self.testChar4 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 3, XPLevel = 3, equipLevel = 5}		
			table.insert(self.members, self.testChar4)
			self.testChar4.clan = self.name
		end
	end,
	
	onUpdateLocal = function (self)
	end,

	onUpdateBoth = function (self, elapsed)
	end,
	
	onDieBoth = function (self)
		the.app.view.layers.management:remove(self)
		the.clans[self] = false		
	end,
	
	receiveBoth = function (self, message_name, ...)

	end,
	
	receiveLocal = function (self, message_name, ...)

	end,
}
