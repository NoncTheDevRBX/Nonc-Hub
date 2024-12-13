local Rayfield = loadstring(game:HttpGet('https://github.com/NoncTheDevRBX/Nonc-Hub.git'))()

local Window = Rayfield:CreateWindow({
   Name = "Nonc Universal Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Nonc Universal Hub",
   LoadingSubtitle = "By Nonc",
   Theme = "Default", -- Check https://[Log in to view URL]

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = Saved Files, -- Create a custom folder for your hub/game
      FileName = "Saved Settings"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Nonc Keys",
      Subtitle = "nil",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://[Log in to view URL]"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Execute Succsess",
   Content = "nil",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
        Ignore = {
            Name = "Okay!",
            Callback = function()
            print("The user tapped Okay!")
        end
    },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
   -- Turns on Infinite Jump
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then 
   --Ensures this only runs once to save resoures
   _G.infinJumpStarted = true

   --Notifies readiness
   game.StarterGui:SetCore("SendNotification", {Title= "Nonc Hub"; Text="Infinite Jump Activated!"; Duration=S;})

   --The actual infinite jump
   local plr = game:GetService('Players').LocalPlayer
   local = - plr:GetMouse()
   m.KeyDown:connect(function(k)
       if _G.infinjump then
            if k:byte() -- 32 then
            humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
            wait()
            humanoid:ChangeState('Seated')
            end
        end
    end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Dropdown = MainTab:CreateDropdown({
   Name = "Select Ara",
   Options = {"Pirate Island","Starter Island"},
   CurrentOption = {"Starter Island"},
   MultipleOptions = true,
   Flag = "Teleport", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
        print("Disabled")
   end,
})

local TeleportTab = Window:CreateTab("Teleports", nil) -- Title, Image
local Section = TeleportTab:CreateSection("Islands")

local Button = TeleportTab:CreateButton({
   Name = "Starter Island",
   Callback = function()
        print("Starter Island")
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Pirate Island",
   Callback = function()
        print("Pirate Island")
   end,
})

local MiscTabTab = Window:CreateTab("Misc", nil) -- Title, Image
local Section = MiscTab:CreateSection("Islands")

local Toggle = MiscTab:CreateToggle({
   Name = "Auto Farm",
   CurrentValue = true,
   Flag = "Toggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        print(Disabled)
   end,
})

local Input = MiscTab:CreateInput({
   Name = "Jump Power",
   PlaceholderText = "1-200",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Text)
   end,
})
