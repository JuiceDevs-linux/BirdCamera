local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

camera.CameraType = Enum.CameraType.Scriptable

local RunService = game:GetService("RunService")
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local cameraHeight = 25

RunService.RenderStepped:Connect(function()
	if not rootPart or not rootPart.Parent then return end
	
	local camPosition = rootPart.Position + Vector3.new(0, cameraHeight, 0)
	
	local lookAt = rootPart.Position
	
	camera.CFrame = CFrame.new(camPosition, lookAt)
end)
