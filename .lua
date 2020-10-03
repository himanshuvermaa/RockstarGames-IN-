– Calculate the moon’s gravity
local moonGravityRatio = 1.62 / 9.81
local defaultGravity = 196.2
local moonGravity = defaultGravity * moonGravityRatio
– Create a touch pad
local pad = Instance.new(“Part”)
pad.Size = Vector3.new(5, 1, 5)
pad.Position = Vector3.new(0, 0.5, 0)
pad.Anchored = true
pad.BrickColor = BrickColor.new(“Bright green”)
pad.Parent = workspace
– Listen for pad touch
local enabled = false
local debounce = false
pad.Touched:Connect(function(hit)
if not debounce then
debounce = true
– Toggle gravity between moon and default
enabled = not enabled
workspace.Gravity = enabled and moonGravity or defaultGravity
– Change pad color
pad.BrickColor = enabled and BrickColor.new(“Bright red”) or BrickColor.new(“Bright green”)
wait(1)
debounce = false
end
end)
