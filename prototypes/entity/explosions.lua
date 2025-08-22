local explosion_animations = require("__base__/prototypes/entity/explosion-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend{
  {
    type = "explosion",
    name = "big-mining-drill-explosion",
    icon = "__um-standalone-big-mining-drill__/graphics/icons/big-mining-drill.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "extraction-machine-explosions",
    order = "b-b-b[big-mining-drill]",
    height = 0,
    animations = explosion_animations.big_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.large_explosion(0.7, 1.0),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 5,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-big",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.6,
            initial_height_deviation = 0.49,
            initial_vertical_speed = 0.088,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 38,
            probability = 1,
            particle_name = "oil-refinery-metal-particle-medium",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.098,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.07,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            probability = 1,
            particle_name = "foundry-metal-particle-big",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.8,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.075,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 20,
            particle_name = "foundry-metal-particle-small",
            offset_deviation = { { -1.5, -1.5 }, { 1.5, 1.5 } },
            initial_height = 0.5,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
        }
      }
    }
  }
}