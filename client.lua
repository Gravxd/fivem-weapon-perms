local unarmed = GetHashKey("weapon_unarmed")

local function Disarm(data)
    SetCurrentPedWeapon(cache.ped, unarmed, true)
    RemoveWeaponFromPed(cache.ped, data.hash)
    lib.notify(
        {
            id = "weapon_restricted",
            type = "error",
            title = "Error",
            description = data.message,
            position = "center-right"
        }
    )
end

local cached = {
    hash = 0,
    message = "This Weapon Is Restricted!",
    allowed = false
}

lib.onCache(
    "weapon",
    function(value)
        if value then
            if cached.hash ~= value then
                local data = lib.callback.await("WeaponRestrict:CheckPerms", false, value)
                cached = {
                    hash = value,
                    message = data.message,
                    allowed = data.allowed
                }
                if not data.allowed then
                    Disarm(cached)
                end
            else
                if not cached.allowed then
                    Disarm(cached)
                end
            end
        end
    end
)
