local ITEM = {}

ITEM.Name = "Pistol"
ITEM.Description = "A standard sidearm, effective at close to medium range."
ITEM.Category = "Weapons"
ITEM.Model = Model("models/weapons/w_pistol.mdl")

ITEM.Weight = 1.5

ITEM.Actions.Equip = {
    Name = "Equip",
    Description = "Equip the pistol.",
    OnRun = function(this, item, ply)
        if ( !IsValid(ply) ) then return end

        ply:Give("weapon_pistol")
        return true
    end,
    OnCanRun = function(this, item, ply)
        if ( !IsValid(ply) ) then return false end

        return !ply:HasWeapon("weapon_pistol")
    end
}

ITEM.Actions.EquipUn = {
    Name = "Unequip",
    Description = "Unequip the pistol.",
    OnRun = function(this, item, ply)
        if ( !IsValid(ply) ) then return end

        ply:StripWeapon("weapon_pistol")
        return true
    end,
    OnCanRun = function(this, item, ply)
        if ( !IsValid(ply) ) then return false end

        return ply:HasWeapon("weapon_pistol")
    end
}

ow.item:Register(ITEM)