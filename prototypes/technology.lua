data:extend {
  {
    type = "technology",
    name = "big-mining-drill",
    icon = "__um-standalone-big-mining-drill__/graphics/technology/big-mining-drill.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "big-mining-drill"
      }
    },
    prerequisites = {"electric-engine", "electric-mining-drill"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30,
      count = 500
    }
  }
}