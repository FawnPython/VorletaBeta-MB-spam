getgenv().ParryAttempt = false;


local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Vorleta")

local b = w:CreateFolder("Mobile")


b:Toggle("Spam",function(bool)
    getgenv().ParryAttempt = bool
    print('Auto Spam is: ', bool);
    if bool then    
       parry();
    end
end)

b:Slider("Slider",10,30,true,function(value) --MinValue,MaxValue,Precise
    print(value)
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color)
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGUI()

b:GuiSettings() -- Use it if you want to let people customize toggles,buttons and sliders color

--Example of refresh

--[[local label = b:Label("Hi",Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0))

label:Refresh("Not epic")

local dropdown = b:Dropdown("Hi",{"A","B"})

dropdown:Refresh({"A","B","C"})
]]

function Parry()
    spawn(function()
        while getgenv().ParryAttempt == true do
            local args = {
            [1] = 0.5,
            [2] = CFrame.new(-157.66162109375, 17.132680892944336, -114.03600311279297, 0.8926612734794617, 0.2507196366786957, -0.37456053495407104, 1.3797912146173985e-08, 0.831011950969696, 0.5562545657157898, 0.45072823762893677, -0.4965468943119049, 0.7418121099472046),
            [3] = {
                ["4675595282"] = Vector3.new(4100.13037109375, -178.11021423339844, -27.53596305847168),
                ["4045483214"] = Vector3.new(1673.994384765625, -99.8792724609375, -55.72044372558594),
                ["4427788537"] = Vector3.new(550.6527709960938, 135.8743438720703, -326.3763427734375),
                ["4006637351"] = Vector3.new(-3296.85693359375, 126.59255981445312, 22.543682098388672),
                ["4981400696"] = Vector3.new(468.5943603515625, -132.18478393554688, -39.16593933105469),
                ["1736314840"] = Vector3.new(-72175.125, 5617.4375, 0.7549800872802734),
                ["4171500425"] = Vector3.new(2099.12060546875, -144.21734619140625, -35.26369094848633),
                ["5004132130"] = Vector3.new(741.5830078125, -80.25965881347656, -74.96371459960938),
                ["548378598"] = Vector3.new(784.1610717773438, -56.25201416015625, -126.20997619628906),
                ["5058918692"] = Vector3.new(605.9993286132812, 287.0490417480469, 13.334383010864258),
                ["4427650101"] = Vector3.new(-1056.7149658203125, 121.0830078125, 28.357467651367188),
                ["4985120486"] = Vector3.new(958.1361083984375, -54.519309997558594, -137.06591796875),
                ["4843561193"] = Vector3.new(503.23944091796875, 164.13787841796875, -302.6827392578125)
            },
            [4] = {
                [1] = 1135,
                [2] = 207
            }
        }
        
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ParryAttempt"):FireServer(unpack(args))
                wait()
             end
        end)
    end
    
    Parry()
