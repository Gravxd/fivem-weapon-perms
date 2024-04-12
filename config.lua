Config = {
    AllowByDefault = true, -- if the weapon is not listed in the config below, should we let the user keep it?
    BypassPermission = "weapon.masterkey", -- what ace should bypass all weapon restrictions?
    Weapons = {
        [GetHashKey("WEAPON_MARKSMANRIFLE")] = {
            Ace = "weapon.marksmanrifle",
            Message = "This weapon is included with our sniper package!\nHead to our store to get it!"
        },
        [GetHashKey("WEAPON_CARBINERIFLE")] = {
            Ace = "weapon.carbinerifle"
        }
    }
}
