local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "确认身份",
    Text = "正在验证....",
    Duration = 3, 
    wait(3)
})

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["DFTRQ24"] = true,
    ["Ruomesr"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕尊贵的白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
     loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-XIAOYE-www..lua"))()
else
    localPlayer:Kick("你没有被加入白名单，白名单5元，请加QQ3108792043购买")
end
