-- Clan

Clan = Sprite:extend
{
	class = "Clan",

	props = {},
	sync_low = {},
	
	width = 1,
	height = 1,
	
	members = {},
	name = "",
	
	onNew = function (self)
		self.x = -1000
		self.y = -1000
		self.visible = false
		self:mixin(GameObject)
		the.app.view.layers.management:add(self)
		
		self.name = localconfig.team 
		
		self.testChar1 = Character:new{x= 600,y = 600, skillLevel = 3, XPLevel = 2, equipLevel = 2}
		table.insert(self.members, self.testChar1)
		self.testChar1.clan = self.name
		
		self.testChar2 = Character:new{x= 400,y = 600, skillLevel = 1, XPLevel = 5, equipLevel = 5}
		table.insert(self.members, self.testChar2)
		self.testChar2.clan = self.name
		
		self.testChar3 = Character:new{x= 600,y = 500, skillLevel = 1, XPLevel = 3, equipLevel = 1}	
		table.insert(self.members, self.testChar3)
		self.testChar3.clan = self.name
		
		self.testChar4 = Character:new{x= 300,y = 700, skillLevel = 3, XPLevel = 3, equipLevel = 5}		
		table.insert(self.members, self.testChar4)
		self.testChar4.clan = self.name
	end,
	
	onUpdateLocal = function (self)
	end,

	onUpdateBoth = function (self, elapsed)
	end,
	
	onDieBoth = function (self)
		the.app.view.layers.management:remove(self)
	end,
	
	receiveBoth = function (self, message_name, ...)

	end,
	
	receiveLocal = function (self, message_name, ...)

	end,
}
