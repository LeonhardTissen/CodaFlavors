local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local levelExit = require "necro.game.tile.LevelExit"

customEntities.extend {
    name="Crysda",
    template=customEntities.template.player(7),
    components = {
        {
            DynChar_dynamicCharacter = {
                slotMirrors = {},
                slotOffsets = {
                    action = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    base = { -1, 4, -1, 4, -1, 4, -1, 4 },
                    body = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    bomb = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    feet = { -0.5, 3, -0.5, 3, -0.5, 3, -0.5, 3 },
                    head = { -0.5, -1, -0.5, 1, -0.5, 3, -0.5, 1 },
                    hud = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    misc = { -0.5, 0, -0.5, 2, -0.5, 4, -0.5, 2 },
                    ring = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    shovel = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    spell = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    torch = { -2.5, 2, -3.5, 2, -4.5, 1, -2.5, 1 },
                    weapon = { 1.5, 2, 3.5, 2, 4.5, 1, 2.5, 2 }
                }
            },
            friendlyName={name="Crysda"},
            CodaFlavors_menu={
                order = 0,
                explanation = "Coda with Crystal Shield"
            },
			textCharacterSelectionMessage = { text = "Crysda mode!\nWeak Dagger\nReflect incoming attacks!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Crysda/CrysdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Crysda/CrysdaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Crysda/CrysdaClone.png",
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
                }
            },
            bypassStairLock = {
                level = levelExit.StairLock.SARCOPHAGUS
            },
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
                    friendlyName = "Crystalized",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Crysda.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Crysda/CrysdaHead.png",
            },
        },
    },
}