local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Bush",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Bush"},
            CodaFlavors_menu={
                order = 12,
                explanation = "Bolt with Shove Shield"
            },
			textCharacterSelectionMessage = { text = "Bush mode!\nCrush enemies obstructing your path!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Shoveda/ShovedaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Shoveda/ShovedaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Shoveda/ShovedaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Shoveda/ShovedaClone.png",
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_ShovedaShield","Bomb3"},
            },
            inventoryCursedSlots = {
                slots = {
                    shield = true;
                    weapon = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingPiercing = itemBan.Type.FULL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "'Scuse me, coming through!",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Shoveda/ShovedaHead.png",
            },
        },
    },
}