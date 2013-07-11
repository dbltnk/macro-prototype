local localconfig = {}
localconfig.skills = {}
localconfig.spectator = false
localconfig.adminPassword = "8ppec3ytggq4ycw3"
localconfig.is_bot = false


-- ### Step 1: Set up your screen resolution. ###
localconfig.fullscreen = false -- Set this to "true" for fullscreen.
localconfig.screenWidth = 400-- Choose your screen width in pixels.
localconfig.screenHeight = 400	 -- Choose your screen height in pixels.

-- ### Step 2: Set your player name and join one of the four teams. ###
localconfig.playerName = "dbltnk" -- Just type your nickname in between the "".
localconfig.accountPassword = "knonkn" -- Should you have a  pasword: enter it here. 
localconfig.team = "Core" -- You can pick "alpha", "beta", "gamma" or "delta".

-- ### Step 3: Pick your weapon of choice. ###
localconfig.weapon = "staff" -- You can use "bow", "scythe" or "staff".

-- ### Step 4: Now choose which skills you want to use in your selected weapon class. ###
-- ### The first four skills for each weapon have already been picked - you can change that. ###
-- ### To pick a skill, remove the two dashes (--) in front of the skills line. Add them if you want to un-pick it. ###
-- ### You can only have up to eight skills in total (1 weapon + 1 armor) so we advise to pick exactly four skills here. ###
-- ### You will pick your four armor skills in the next block after this one. ###

if localconfig.weapon == "bow" then -- The following lines are the six bow skills.
	table.insert(localconfig.skills,"bow_shot") -- Shoot a projectile that damages one target.
	table.insert(localconfig.skills,"bow_puncture") -- Shoot a fast projectile that pierces several targets and makes them bleed.
	table.insert(localconfig.skills,"bow_snare") -- Shoot a projectile that slows down one target.
	--~ table.insert(localconfig.skills,"bow_blunt_arrow") -- Shoot a projectile that pushes one target away from you.
	table.insert(localconfig.skills,"bow_root") -- Shoot a projectile that roots one target.
	-- table.insert(localconfig.skills,"bow_mark_target") -- Shoot a projectile that hightlights one target and exposes it so it receives more damage.

elseif localconfig.weapon == "scythe" then -- The following lines are the six scythe skills.
	table.insert(localconfig.skills,"scythe_sweep") -- Sweeping blow that hits several targets in front of you.
	table.insert(localconfig.skills,"scythe_pirouette") -- Sweeping blow that hits a lot of targets all around you.
	-- table.insert(localconfig.skills,"scythe_jump") -- Jump to your target location.
	-- table.insert(localconfig.skills,"scythe_harpoon") -- Shoots a projectile that pulls one target to your location. 
	table.insert(localconfig.skills,"scythe_stun") -- Stun one target in front of you.
	table.insert(localconfig.skills,"scythe_gank") -- Gank one target in front of you.

elseif localconfig.weapon == "staff" then -- The following lines are the six staff skills.
	table.insert(localconfig.skills,"staff_magic_bolt") -- Shoot a small projectile that explodes on impact and damages a few targets in a small area.
	table.insert(localconfig.skills,"staff_poison") -- Shoot a projectile that slowly decreases one targets life.
	table.insert(localconfig.skills,"staff_life_leech") -- Shoot a projectile that drains one targets life while healing you.
	table.insert(localconfig.skills,"staff_fireball") -- Shoot a projectile that explodes on impact and damages a lot of targets in the area.
	-- table.insert(localconfig.skills,"staff_healing_orb") -- Shoot a projectile that heals one target.
	-- table.insert(localconfig.skills,"staff_healing_breeze") -- Shoot a projectile that heals one target slowly over time.
	-- table.insert(localconfig.skills,"staff_mezz") -- Shoot a projectile that mesmerizes one target for some time. Breaks on damage.
end	

-- ### Step 5: Now pick your armor of choice. ###
localconfig.armor = "robe" -- You can decide between "robe", "hide_armor" and "splint_mail".

-- ### Step 6: Now choose which skills you want to use in your selected armor class. ###
-- ### Remember: You can only have up to eight skills in total so we advise to pick exactly four skills here, too. ###

if localconfig.armor == "robe" then -- The following lines are the six robe skills.
	table.insert(localconfig.skills,"robe_fade") -- Renders you invisible and invulnerable for a very short time.
	table.insert(localconfig.skills,"robe_quake") -- Damages a lot of targets in the area around you.
	-- table.insert(localconfig.skills,"robe_gust") -- Push away a lot of targets in the area around you.
	table.insert(localconfig.skills,"robe_bandage") -- Heal yourself instantly.
	-- table.insert(localconfig.skills,"robe_shrink") -- Decrease your body size for some time but makes you take more damage.
	table.insert(localconfig.skills,"robe_sonic_boom") -- Stuns a lot of targets in the area around you for a brief time.


elseif localconfig.armor == "hide_armor" then -- The following lines are the six hide armor skills.
	table.insert(localconfig.skills,"hide_armor_sprint") -- Increases your movement speed for a short time.
	--~ table.insert(localconfig.skills,"hide_armor_sneak") -- Renders you invisible for a short time even when moving.
	--~ table.insert(localconfig.skills,"hide_armor_freedom") -- Break all root and snare effects.
	table.insert(localconfig.skills,"hide_armor_mend_wounds") -- Break all damage-over-time effects.
	table.insert(localconfig.skills,"hide_armor_regenerate") -- Decreases your pain slowly over time.
	table.insert(localconfig.skills,"hide_armor_second_wind") -- Instantly decreases your fatigue a little.

elseif localconfig.armor == "splint_mail" then -- The following lines are the six splint mail skills.
	table.insert(localconfig.skills,"splint_mail_absorb") -- Drains the health of a lot of targets around you.
	table.insert(localconfig.skills,"splint_mail_ignore_pain") -- Increases your pain resistance for some time.
	table.insert(localconfig.skills,"splint_mail_clarity") -- Break all stun, mezz and powerblock effects in a large area around you.
	table.insert(localconfig.skills,"splint_mail_grow") -- Increase your body size for some time and decreases the damage you take.
	-- table.insert(localconfig.skills,"splint_mail_shout") -- Makes a lot of targets in the area around you unable to use actions for a brief time.
	-- table.insert(localconfig.skills,"splint_mail_invulnerability") -- Renders you invulnerable to damage for a short amount of time.
end

-- ### Step 7: Customize your keyboard layout (if you want). ###
-- ### Note: "l" means the left mouse button, "r" means the right one. You cannot use those keyboard keys. ###
-- ### Movement is hard-coded to WASD and they arrow keys for now. ###
localconfig.skillOne = "0" -- this is your default attack
localconfig.skillTwo = "1"
localconfig.skillThree = "2"
localconfig.skillFour = "3"
localconfig.skillFive = "4"
localconfig.skillSix = "5"
localconfig.skillSeven = "q"
localconfig.skillEight = "e"
localconfig.targetSelf = "shift"
localconfig.showHighscore = "f5"
localconfig.toggleFullscreen = "f10"
localconfig.quitGame = "escape"

localconfig.max_chat_lines = 10
localconfig.audioVolume = 20 -- 0 = off, 100 = very loud

return localconfig
