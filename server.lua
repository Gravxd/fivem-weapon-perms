lib.callback.register(
    "WeaponRestrict:CheckPerms",
    function(source, hash)
        local src = source

        if IsPlayerAceAllowed(src, Config.BypassPermission) then
            return {
                allowed = true
            }
        elseif Config.Weapons[hash] then
            return {
                allowed = IsPlayerAceAllowed(src, Config.Weapons[hash].Ace),
                message = Config.Weapons[hash].Message or "This weapon is restricted!"
            }
        else
            return {
                allowed = Config.AllowByDefault,
                message = "This weapon is restricted!"
            }
        end
    end
)
