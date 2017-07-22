data:extend(
{
  {
    type = "projectile",
    name = "skan-fusion-robots-explosion",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "create-entity",
            entity_name = "massive-explosion"
            },
            {
            type = "create-entity",
            entity_name = "fire-flame",
            check_buildability = true
            }
          }
        }
      },
      {
        type = "cluster",
        cluster_count = 11,
        distance = 4,
        distance_deviation = 3,
        action_delivery =
        {
            type = "stream",
            stream = "flamethrower-fire-stream",
        }
      },
      {
        type = "area",
        perimeter = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "damage",
            damage = {amount = 50, type = "explosion"}
            },
            {
            type = "create-entity",
            entity_name = "explosion"
            }
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/cluster-grenade/cluster-grenade.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
      frame_count = 1,
      width = 24,
      height = 32,
      priority = "high"
    }
  }
})
