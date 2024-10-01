local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "确认身份",
    Text = "正在验证....",
    Duration = 3, 
})

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["DFTRQ24"] = true,
    ["yyfhi114514"] = true,
    ["roblox_laoba"] = true,
    ["lishaoyushuai"] = true,
    ["yyfhi114514"] = true,
    ["yuhdtgvdhj"] = true,
    ["hfhchbch"] = true,
    ["qwe112233445566777"] = true,
    ["FengY4"] = true,
    ["hjxjfufudu"] = true,
    ["siwj114514szgg"] = true,
    ["shsjshs666"] = true,
    ["zbyd999"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
     loadstring(game:HttpGet("https://pastebin.com/raw/1syg13nW"))()
else
    localPlayer:Kick("你没有被加入白名单，请到QQ群515966991获得")
end
