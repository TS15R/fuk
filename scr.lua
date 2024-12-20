local Players = game:GetService("Players")
local toolName = "tnt" -- เปลี่ยนชื่อ Tool ที่คุณต้องการให้ผู้เล่นได้รับ
local tool = game.ServerStorage:WaitForChild(toolName) -- Tool อยู่ใน ServerStorage

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		-- ให้ Tool กับผู้เล่นทุกครั้งที่มีการเข้าสู่เกม
		local toolClone = tool:Clone()
		toolClone.Parent = player.Backpack -- ย้าย Tool ไปที่ Backpack ของผู้เล่น
	end)
end)
