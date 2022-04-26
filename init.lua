
construct = {
    version = "1.0-dev"
}

-- Currently construct only supports Minetest Game and MineClone (2, 5, and MineClonia)
if minetest.get_modpath("default") ~= nil then
    construct.gamemode = "MTG"
elseif minetest.get_modpath("mcl_core") ~= nil then
    construct.gamemode = "MCL"
else
    construct.gamemode = "???"
end

construct.log = function (msg)
    if type(msg) == "table" then
        msg = minetest.serialize(msg)
    end
    minetest.log("action", "[construct] "..tostring(msg))
end

construct.dofile = function (dir, file)
    local mod = minetest.get_modpath("construct")
    if file == nil then
        dofile(mod .. DIR_DELIM .. dir .. ".lua")
    else
        dofile(mod .. DIR_DELIM .. dir .. DIR_DELIM .. file .. ".lua")
    end
end


construct.dofile("settings")
