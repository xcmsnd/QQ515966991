local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "确认身份",
    Text = "正在验证....",
    Duration = 3, 
    wait（“4”）
})

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["DFTRQ24"] = true,
    ["DuffyNB"] = true,
)

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
else StarterGui:SetCore("SendNotification", {
        Title = "未加入白名单",
        Text = "玩家:"..localPlayer.Name.."，未加入黑名单，自动加载公益版",
        Duration = 7,
    })
      loadstring(game:HttpGet("https://pastebin.com/raw/3rrU4cnx"))()
end
