function onInit()
	local items = game.surfaces["nauvis"].find_entities()
	for i, item in ipairs(items) do
		if item.type == "electric-pole" then
			item.destructible = false;
		end
	end
end

script.on_init( onInit );
script.on_event(
		{ defines.events.on_built_entity, defines.events.on_robot_built_entity },
		function(event) 
			if event.created_entity.type == "electric-pole" then
				event.created_entity.destructible = false 
			end
		end
	)