local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local levelExit = require "necro.game.tile.LevelExit"

customEntities.extend {
    name="Barista",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Barista"},
            CodaFlavors_menu={
                order = 2,
                explanation = "Bolt with Crystal Shield"
            },
			textCharacterSelectionMessage = { text = "Barista mode!\nWeak Dagger\nReflect incoming attacks!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Crysda/BaristaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Crysda/BaristaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Crysda/BaristaClone.png",
            },
            enemyBans = {
                types = {"Ghost","Monkey","Monkey2","Mole","Shovemonster","Shovemonster2","Sync_ShockMonkey","Monkey3","Monkey4","GoblinBomber","Sync_CoopThief","Sync_CoopMonkey","Sync_CoopGhost","Sync_CoopSpirit"},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponCrysda","CodaFlavors_CrysdaShield","Bomb3","CharmNazar"},
            },
            inventoryCursedSlots = {
                slots = {
                    shield = true;
                    weapon = true;
                }
            },
            bypassStairLock = {
                level = levelExit.StairLock.SARCOPHAGUS
            },
            itemBanWeaponlocked = {},
            shrineBanWeaponlocked = {},
            inventoryBannedItemTypes = {
                types = {
                    ArmorGi = itemBan.Type.FULL,
                    FeetBootsStrength = itemBan.Type.FULL,
                    HeadSpikedEars = itemBan.Type.FULL,
                    HeadSunglasses = itemBan.Type.FULL,
                    HeadGlassJaw = itemBan.Type.FULL,
                    CharmRisk = itemBan.Type.FULL,
                    CharmStrength = itemBan.Type.FULL,
                    RingMight = itemBan.Type.FULL,
                    RingPiercing = itemBan.Type.FULL,
                    RingRegeneration = itemBan.Type.FULL,
                    RingWar = itemBan.Type.FULL,
                    RingFrost = itemBan.Type.FULL,
                    Sync_CharmThrowing = itemBan.Type.FULL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Crystal Clear",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Barista.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Crysda/BaristaHead.png",
            },
        },
    },
}