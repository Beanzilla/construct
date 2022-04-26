
construct.enable_craft = minetest.settings:get_bool("construct.enable_craft")
if construct.enable_craft == nil then
    construct.enable_craft = true
    minetest.settings:set_bool("construct.enable_craft", true)
end

construct.max_size = minetest.settings:get("construct.max_size")
if construct.max_size == nil then
    construct.max_size = 49 -- about 3 map chunks (with a center)
    minetest.settings:set("construct.max_size", 49)
else
    construct.max_size = tonumber(construct.max_size)
end

construct.allow_file_storage = minetest.settings:get_bool("construct.allow_file_storage")
if construct.allow_file_storage == nil then
    construct.allow_file_storage = true
    minetest.settings:set_bool("construct.allow_file_storage", true)
end

construct.limit_file_storage = minetest.settings:get_bool("construct.limit_file_storage")
if construct.limit_file_storage == nil then
    construct.limit_file_storage = false
    minetest.settings:set_bool("construct.limit_file_storage", false)
end
