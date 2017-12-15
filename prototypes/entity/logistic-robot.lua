data:extend(
{
    -- entity
    {
        type = "logistic-robot",
        name = "skan-logistic-robot-fusion",
        icon = "__skan-fusion-robots__/graphics/icons/logistic-robot-fusion.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {hardness = 0.1, mining_time = 0.1, result = "skan-logistic-robot-fusion"},
        resistances = { { type = "fire", percent = 85 } },
        max_health = 200,
        dying_explosion = "massive-explosion",
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        max_payload_size = 1,
        speed = 0.07,
        transfer_distance = 0.5,
        max_energy = "1.5MJ",
        energy_per_tick = "0kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "0kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        idle = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = {0.015625, -0.09375},
            direction_count = 16,
            y = 42
        },
        idle_with_cargo = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = {0.015625, -0.09375},
            direction_count = 16
        },
        in_motion = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = {0.015625, -0.09375},
            direction_count = 16,
            y = 126
        },
        in_motion_with_cargo = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = {0.015625, -0.09375},
            direction_count = 16,
            y = 84
        },
        shadow_idle = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = {0.96875, 0.609375},
            direction_count = 16,
            y = 23
        },
        shadow_idle_with_cargo = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = {0.96875, 0.609375},
            direction_count = 16
        },
        shadow_in_motion = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = {0.96875, 0.609375},
            direction_count = 16,
            y = 23
        },
        shadow_in_motion_with_cargo = {
            filename = "__skan-fusion-robots__/graphics/entity/logistic-robot/logistic-robot-fusion-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = {0.96875, 0.609375},
            direction_count = 16
        },
        working_sound = flying_robot_sounds(),
        cargo_centered = {0.0, 0.2},
    },
    -- recipe
    {
        type = "recipe",
        name = "skan-logistic-robot-fusion",
        enabled = false,
        ingredients =
        {
            {"logistic-robot", 1},
            {"advanced-circuit", 2},
            {"processing-unit", 5},
            {"fusion-reactor-equipment", 1}
        },
        result = "skan-logistic-robot-fusion"
    },
    -- item
    {
        type = "item",
        name = "skan-logistic-robot-fusion",
        icon = "__skan-fusion-robots__/graphics/icons/logistic-robot-fusion.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "logistic-network",
        order = "a[robot]-b[logistic-robot]-c[fusion]",
        place_result = "skan-logistic-robot-fusion",
        stack_size = 50
    },
})