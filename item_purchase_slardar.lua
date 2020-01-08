----------------------------------------------------------------------------
--	Ranked Matchmaking AI v1.6b
--	Author: adamqqq		Email:adamqqq@163.com
----------------------------------------------------------------------------
local ItemPurchaseSystem = dofile(GetScriptDirectory() .. "/util/ItemPurchaseSystem")

local ItemsToBuy =
{
	"item_tango",
	"item_flask",
	"item_quelling_blade",
	"item_bracer",
	"item_magic_wand", --大魔棒7.14
	"item_power_treads",
	"item_blink", --跳刀
	"item_echo_sabre", --连击刀
	"item_black_king_bar", --bkb
	"item_assault", --强袭
	"item_heart" --龙心7.20
}

local Transfered = ItemPurchaseSystem.Transfer(ItemsToBuy)
ItemPurchaseSystem.checkItemBuild(Transfered)

function ItemPurchaseThink()
	ItemPurchaseSystem.ItemPurchase(Transfered)
	ItemPurchaseSystem.BuyCourier()
	ItemPurchaseSystem.BuySupportItem()
end
