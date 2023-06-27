local small_ruins = require("ruins/small") -- an array of ruins
local medium_ruins = require("ruins/medium") -- an array of ruins
local large_ruins = require("ruins/large") -- an array of ruins

local function make_ruin_set()
  remote.call("AbandonedRuins", "add_ruin_set", "factorio-openttd", small_ruins, medium_ruins, large_ruins)
end

-- The ruin set is always created when the game is loaded, since the ruin sets are not save/loaded by AbandonedRuins.
-- Since this is using on_load, we must be sure that it always produces the same result for everyone.
script.on_init(make_ruin_set)
script.on_load(make_ruin_set)