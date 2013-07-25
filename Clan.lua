-- Clan

Clan = Sprite:extend
{
	class = "Clan",

	props = {"name", "color", "status"},
	sync_high = {"status"},
	
	width = 1,
	height = 1,
	
	members = {},
	name = "",
	hometown = nil,
	color = {},
	status = "hostile",
	
	onNew = function (self)
		self.x = -1000
		self.y = -1000
		self.visible = false
		self:mixin(GameObject)
		the.app.view.layers.management:add(self)
		the.clans[self] = true
		self.name = localconfig.team 
		self.color = {math.random(0,255),math.random(0,255),math.random(0,255)}
		local homeX, homeY = math.random(200,800), math.random(200,800)
		if not self.created_via_network then		
			self.testChar1 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 2, XPLevel = 0, equipLevel = 0, loginTime = 16, logoutTime = 22, owner = network.client_id}
			table.insert(self.members, self.testChar1)
			self.testChar1.clan = self.name
			self.testChar1.nr = 1
		
			self.testChar2 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 1, XPLevel = 0, equipLevel = 0, loginTime = 12, logoutTime = 23, owner = network.client_id}
			table.insert(self.members, self.testChar2)
			self.testChar2.clan = self.name
			self.testChar2.nr = 2
			
			self.testChar3 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 1, XPLevel = 0, equipLevel = 0, loginTime = 20, logoutTime = 15, owner = network.client_id}	
			table.insert(self.members, self.testChar3)
			self.testChar3.clan = self.name
			self.testChar3.nr = 3
			
			self.testChar4 = Character:new{x= homeX + math.random(-50,50),y = homeY + math.random(-50,50), skillLevel = 3, XPLevel = 0, equipLevel = 0, loginTime = 18, logoutTime = 15, owner = network.client_id}		
			table.insert(self.members, self.testChar4)
			self.testChar4.clan = self.name
			self.testChar4.nr = 4
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
