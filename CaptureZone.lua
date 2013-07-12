-- CaptureZone

CaptureZone = Sprite:extend
{
	class = "CaptureZone",

	props = {"gameId", "x", "y", "width", "height", "phase", "round", "round_start_time", "round_end_time", "next_xp_reset_time"},
	round = 0,
	owner = 0,
	
	gameId = 0,
	
	width = 1,
	height = 1,
	
	onNew = function (self)
		self.x = -1000
		self.y = -1000
		self.visible = false
		self:mixin(GameObject)
		the.app.view.layers.management:add(self)
	end,
	
	onUpdateLocal = function (self)
	end,

	onUpdateBoth = function (self, elapsed)
	end,
	
	onDieBoth = function (self)
		the.app.view.layers.management:remove(self)
	end,
	
	receiveBoth = function (self, message_name, ...)
		if message_name == "barrier_died" then
		elseif message_name == "reset_game" then
		elseif message_name == "set_phase" then
		elseif message_name == "ghost_all_players" then
		end
	end,
	
	receiveLocal = function (self, message_name, ...)
		if message_name == "reset_game" then
		elseif message_name == "force_next_phase" then
		end
	end,
}
