local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window =q Rayfield:CreateWindow({
   Name = "Plant System UI",
   LoadingTitle = "Cargando Plant UI",
   LoadingSubtitle = "por Max",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "PlantUI"
   },
   Discord = {
      Enabled = false
   },
   KeySystem = false
}

local Tab = Window:CreateTab("Control de Planta", 4483362458)

Tab:CreateButton({
   Name = "🌱 Plantar Semilla",
   Callback = function()
       local plant = script.Parent
       local function plantSeed()
           local newPlant = plant:Clone()
           newPlant.CFrame = CFrame.new(0, 0, 0)
           newPlant.Parent = workspace
       end
       local plantButton = script.Parent:FindFirstChild("PlantButton")
       if plantButton then
           plantButton.Touched:Connect(plantSeed)
       en
   end,
})

Tab:CreateButton({
   Name = "🌿 Hacer Crecer Planta",
   Callback = function()
       local plant = script.Parent
       local growth = 0
       local maxGrowth = 10
       local function grow()
           growth = growth + 1
           plant.Size = Vector3.new(1 + growth / 10, 1 + growth / 10, 1 + growth / 10)
           if growth >= maxGrowth then
               print("The plant has fully grown")
           end
       end
       local growEvent = script.Parent:FindFirstChild("GrowEvent")
       if growEvent then
           growEvent:FireServer()
           grow()
       end
   end,
})
