-- Required to load space-travel feature flag without space age
if not data.raw.tile["empty-space"] then
  local empty_space = table.deepcopy(data.raw.tile["out-of-map"])
  empty_space.name = "empty-space"
  data:extend{empty_space}
end

require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.big-mining-drill")
require("prototypes.entity.explosions")