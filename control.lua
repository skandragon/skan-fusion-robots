script.on_event(defines.events.on_entity_died, function(event)
    if event.entity.name ~= 'construction-robot-fusion' and event.entity.name ~= 'logistic-robot-fusion' then return end
    event.entity.surface.create_entity({name = "fusion-robots-explosion", position = event.entity.position, target=event.entity.position, speed=1})
end)
