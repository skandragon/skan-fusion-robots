data:extend(
{
  {
    type = "technology",
    name = "skan-fusion-robotics",
    icon = "__skan-fusion-robots__/graphics/technology/fusion-robotics.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "skan-construction-robot-fusion"
      },
      {
        type = "unlock-recipe",
        recipe = "skan-logistic-robot-fusion"
      },
    },
    prerequisites = {"construction-robotics", "fusion-reactor-equipment", "logistic-robotics"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-b",
  },
})
