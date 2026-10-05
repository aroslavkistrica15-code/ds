local unpack_fn = unpack or table.unpack
local floor_fn = math.floor
local random_fn = math.random
local lookup = {}
local remove_fn = table.remove
local items = {}
local char_fn = string.char
for i = 1, 256, 1 do
    lookup[i] = i
end
repeat
    local pick_index = random_fn(1, #lookup)
    local picked = remove_fn(lookup, pick_index)
    items[picked] = char_fn(picked - 1)
until #lookup == 0
local prng_bytes = {}
local prng_seed = 0
local prng_state8 = 2
local next_prng_byte = function()
    if #prng_bytes == 0 then
        prng_seed = (prng_seed * 37 + 30151477114583) % 35184372088832
        repeat
            prng_state8 = (prng_state8 * 155) % 257
        until prng_state8 ~= 1
        local remainder = prng_state8 % 32
        local shift = 13 - ((prng_state8 - remainder) / 32)
        local n = floor_fn(prng_seed / 2 ^ shift)
        local mixed = floor_fn((((n % 4294967296) / 2 ^ remainder) % 1) * 4294967296) + floor_fn((n % 4294967296) / 2 ^ remainder)
        local low = mixed % 65536
        local high = (mixed - low) / 65536
        local b1 = low % 256
        local b2 = (low - b1) / 256
        local b3 = high % 256
        local b4 = (high - b3) / 256
        prng_bytes = { b1, b2, b3, b4 }
    end
    return remove_fn(prng_bytes)
end
local decoded_cache = {}
local r26_value = setmetatable({}, { __index = decoded_cache })
local decode_runtime_string = function(encoded_text, cache_key)
    if not decoded_cache[cache_key] then
        local input_len = string.len(encoded_text)
        local decoded_text = ""
        for i = 1, input_len, 1 do
            local byte_value = string.byte(encoded_text, i)
            local lookup_index = (byte_value + next_prng_byte() + 19) % 256 + 1
            decoded_text = decoded_text .. items[lookup_index]
        end
        decoded_cache[cache_key] = decoded_text
    end
    return decoded_cache[cache_key]
end
random_fn = env[character_2]
ui_node_2 = v1(local_player_5_ref,ui_node_4)
remove_fn = v0[local_player_5_ref_2]
character_2 = character_2(random_fn,remove_fn)
char_fn = v0[local_player_5_ref]
remove_fn = character_2:GetService(char_fn)
ui_node = game:IsLoaded()
if character_2 then
    local_player_5_ref_11_ref = 13756578109701
    ui_node_4 = local_player_5_ref(v5,local_player_5_ref_11_ref)
char_fn = character_2:Wait()
end
char_fn = not character_2
if char_fn then
    ui_node = nil
    if local_player_5_ref then
        local_player_5_ref_11_ref = v5()
        char_fn = local_player_5_ref
    end
    if char_fn then
    local_player_5_ref_11_ref = v5(local_player_5_ref_11_ref,floor_fn_3_ref)
    ui_node_2 = local_player_5_ref_2[local_player_5_ref](local_player_5_ref)
    else
        goto block_9333620
    end
    ::block_9333620::
    local_player_5_ref_11_ref = 11031809692689
    ui_node_2 = 3784088
    local_player_5_ref = v1(floor_fn_3_ref,local_player_5_ref_11_ref)
    ui_node_4 = v5[local_player_5_ref_11_ref]
    ui_node_3 = remove_fn[ui_node_4]
    if local_player_5_ref then goto block_11395901 else goto block_3179257 end
    ::block_11395901::
    character_2 = char_fn
    character = local_player_5_ref_2
    ::block_12617159::
    local_player_5_ref_11_ref = ui_node < local_player_5_ref_11_ref
    ui_node_4 = local_player_5_ref_11_ref
    if ui_node_4 then goto block_10195514 else goto block_2952674 end
    ::block_10195514::
    ui_node_4 = 1
    text_label = function()
        local character, ui_node_5, local_player_5_ref, event_connection_2, ui_node_3, random_fn
        random_fn = v11
        local_player_5_ref = {game.HttpGet(game,random_fn)}
        event_connection_2 = loadstring(unpack_fn(local_player_5_ref))
        character = {event_connection_2()}
        event_connection_2 = {unpack_fn(character)}
        return unpack_fn(event_connection_2)
    end
    local_player_5_ref_11_ref = {v5(floor_fn_3_ref)}
    local_player_5_ref_11_ref = local_player_5_ref_11_ref[1]
    if local_player_5_ref_11_ref then goto block_66436 else goto block_66436 end
    ::block_66436::
    if v5 then
    local v10 = v5
    goto block_12617159
    else
        goto block_6361320
    end
    ::block_6361320::
    local_24 = tostring(local_player_5_ref_11_ref)
    goto block_12617159
    ::block_2952674::
    character = 13827966
    local_player_5_ref = floor_fn_3_ref
    ui_node = v10
    local_9 = Color3.fromHex
    local_4 = "#2d1b2e"
    math_lib_9 = local_9(local_4)
    hN[21] = 8567374303125
    local_4 = Color3.fromHex
    local_player_5_ref_11_ref = "#1a0f1e"
    local_25 = local_4(local_player_5_ref_11_ref)
    hN[37] = 8228715581175
    local_player_5_ref_11_ref = Color3.fromHex
    local_20 = "#f9a8d4"
    local_24 = local_player_5_ref_11_ref(local_20)
    local_20 = Color3.fromHex
    local_6 = "#fce7f3"
    local_16 = local_20(local_6)
    local_6 = Color3.fromHex
    local r11_value = "#c084fc"
    local r28_value = local_6(r11_value)
    r11_value = Color3.fromHex
    hN[8] = "\251\131\207\209.p\001\\\173"
    local r50_value = "#6b2d6b"
    local r70_value = r11_value(r50_value)
    r50_value = Color3.fromHex
    local local_10 = "#f0abfc"
    local r31_value = r50_value(local_10)
local_player_5_ref_11_ref = ui_node:AddTheme(local_player_5_ref_11_ref)
    ui_node = v10
    hN[28] = 26565019021394
    hN[9] = 29619536164320
    r28_value = 420
    local_20 = UDim2.fromOffset
    local_6 = 500
    local_16 = local_20(local_6,r28_value)
local_player_5_ref_11_ref = ui_node:CreateWindow(local_player_5_ref_11_ref)
    local run_background_task_ref_2 = local_player_5_ref_11_ref
    local_player_5_ref_11_ref = run_background_task_ref_2
    local_25 = Color3.fromHex
    local_24 = "#ffb6d9"
    local_player_5_ref_11_ref = local_25(local_24)
    hN[22] = 17811725803622
    local_player_5_ref_11_ref = 8272768192268
    local_player_5_ref = local_player_5_ref_11_ref(local_player_5_ref_11_ref,floor_fn_3_ref)
    local_player_5_ref_11_ref = run_background_task_ref_2
    local_25 = ""
    local_4 = v1(local_25,local_player_5_ref_11_ref)
    local_25 = UDim.new
    local_24 = 0
    local_20 = 420
    local_player_5_ref_11_ref = local_25(local_24,local_20)
    local_16 = ColorSequence.new
    r28_value = Color3.fromHex
    r70_value = "FF6EB4"
    r11_value = r28_value(r70_value)
    r28_value = Color3.fromHex
    r50_value = "FFE4F0"
    r70_value = {r28_value(r50_value)}
    local_6 = local_16(r11_value,unpack_fn(r70_value))
    hN[38] = 3821470746355
    local_player_5_ref = local_player_5_ref_11_ref(local_player_5_ref_11_ref,floor_fn_3_ref)
    local_player_5_ref_11_ref = run_background_task_ref_2
    hN[34] = "#\199\232\220"
    local_player_5_ref = local_player_5_ref_11_ref(local_player_5_ref_11_ref,floor_fn_3_ref)
    hN[26] = 6911635344530
    local event_connection = 50
    r70_value = Color3.fromRGB
    local_10 = 200
    r31_value = 255
    r50_value = r70_value(r31_value,local_10,event_connection)
    local local_26 = function(arg1, arg2, arg3, arg4)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, local_player_5_ref, event_connection_2, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, random_fn
        ui_node_5 = "https://guns.lol/scriptdlc"
        event_connection_2 = setclipboard(ui_node_5)
        character = v10
        random_fn = v0
        local_player_5_ref = random_fn["\194\161\195\178\194\129\194\128\194\174\194\182\195\1574\0005r\194\170z\005%\195\151\000|v\195\168}\tK\195\183\016\195\186"]
        char_fn = 9
        ui_node_3 = v0
        ui_node_4 = v1
        ui_node_5 = {[local_player_5_ref] = "ThX youu <33", [ui_node_3] = "rrawr", Duration = 9,Icon = "paw-print"}
event_connection_2 = character:Notify(ui_node_5)
        character = env["7zNitS9CCdGw"]
        return
    end
    local_player_5_ref_11_ref = local_player_5_ref_11_ref["d.0i\195\188\195\154\194\154\195\158T"]
    local local_player_3 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, local_player_5_ref, event_connection_2, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, random_fn
        ui_node_5 = "https://discord.gg/sJRH8xtsa"
        event_connection_2 = setclipboard(ui_node_5)
        character = v10
        local_player_5_ref = 15392751967231
        char_fn = 9
        ui_node_3 = v0
        ui_node_4 = v1
        local_player_5_ref_11_ref = "paw-print"
        ui_node_5 = {[local_player_5_ref] = "ThX youu <33",[ui_node_3] = "rrawr",Duration = 9, Icon = "paw-print"}
event_connection_2 = character:Notify(ui_node_5)
        return
    end
    local_player_5_ref_11_ref = local_player_5_ref_11_ref(local_player_5_ref_11_ref,floor_fn_3_ref)
local_player_5_ref_11_ref = local_player_5_ref_11_ref:Select()
    local_player_5_ref_11_ref = run_background_task_ref_2
    local_24 = 23817385765714
    local_player_5_ref_11_ref = ""
    math_lib_9 = v0
    local_25 = v1(local_player_5_ref_11_ref,local_24)
    local_9 = math_lib_9[local_25]
    hN[11] = "?\202u\183\241\247\234"
    local_player_5_ref_11_ref = UDim.new
    local_20 = 0
    local_16 = 16
    local_24 = local_player_5_ref_11_ref(local_20,local_16)
    local_6 = ColorSequence.new
    r11_value = Color3.fromHex
    r50_value = "FFE3F1"
    r70_value = r11_value(r50_value)
    r11_value = Color3.fromHex
    r31_value = "FF8FBF"
    r50_value = {r11_value(r31_value)}
    r28_value = local_6(r70_value,unpack_fn(r50_value))
    r11_value = false
    r50_value = true
    local_10 = true
    local_player_5_ref_11_ref = {[decoded_cache_2] = local_9, Icon = "monitor",CornerRadius = local_24,StrokeThickness = 2, Color = r28_value, OnlyMobile = r11_value,Enabled = r50_value, Draggable = local_10}
    text_label = floor_fn_3_ref(local_player_5_ref_11_ref,local_player_5_ref_11_ref)
    local_player_5_ref_11_ref = run_background_task_ref_2
    local_player_5_ref_11_ref = false
    local_player_5_ref_11_ref = {[decoded_cache_2] = "ChangeLog", Icon = "github", Locked = local_player_5_ref_11_ref}
    text_label = floor_fn_3_ref(local_player_5_ref_11_ref,local_player_5_ref_11_ref)
    hN[24] = 19774382924792
    local r71_value = 180
    r50_value = Color3.fromRGB
    event_connection = 180
    local_10 = 180
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "1.0",Desc = "The first version!", Image = "cat",ImageSize = 26, Thumbnail = "rbxassetid://139798731050086",ThumbnailSize = 196, Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    hN[13] = "\128f|_\168\127\162"
    r50_value = Color3.fromRGB
    r71_value = 180
    local_10 = 180
    event_connection = 180
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "2.0", Desc = "+ Mobile\n+ Fixed ESP", Image = "cat",ImageSize = 26, Thumbnail = "rbxassetid://82625564944382", ThumbnailSize = 196, Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    r50_value = Color3.fromRGB
    event_connection = 180
    r71_value = 180
    local_10 = 180
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "2.2",Desc = "+ FIXED BUGS\n+ 6.7", Image = "cat", ImageSize = 26,Thumbnail = "rbxassetid://82625564944382", ThumbnailSize = 196,Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    r71_value = 255
    event_connection = 220
    r50_value = Color3.fromRGB
    local_10 = 180
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "6.8",Desc = "+ Optimized ESP & Music", Image = "cat", ImageSize = 26, Thumbnail = "rbxassetid://82625564944382", ThumbnailSize = 196, Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    hN[19] = 5320355432877
    r71_value = 180
    r50_value = Color3.fromRGB
    local_10 = 150
    event_connection = 255
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "6.9",Desc = "+ Fixed ESP toggle bugs\n+ Fixed self-highlight\n+ Real-time transparency",Image = "cat",ImageSize = 26, Thumbnail = "rbxassetid://82625564944382",ThumbnailSize = 196,Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    r71_value = 180
    event_connection = 255
    r50_value = Color3.fromRGB
    local_10 = 150
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "7.5",Desc = "+ Fixed maybe\n+ Fixed Stamina\n+ generator esp puzzle",Image = "cat",ImageSize = 26,Thumbnail = "rbxassetid://82625564944382", ThumbnailSize = 196,Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    hN[36] = "|\025\156\253\138\163i\213"
    hN[41] = 22132359604290
    r71_value = 180
    event_connection = 255
    r50_value = Color3.fromRGB
    local_10 = 150
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "9.67", Desc = "+ Fixed ESP BUGS\n+ Fixed Many Bugs\n+ ADDED AUTOBLOCK",Image = "cat", ImageSize = 26, Thumbnail = "rbxassetid://82625564944382", ThumbnailSize = 196,Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    hN[32] = "\242\000\204\253~]\n\209"
    r50_value = Color3.fromRGB
    event_connection = 255
    local_10 = 150
    r71_value = 180
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "11.5", Desc = "+ Better AutoBlock\n+ Hitbox no longer caught by ESP", Image = "cat",ImageSize = 26, Thumbnail = "rbxassetid://82625564944382",ThumbnailSize = 196,Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    r50_value = Color3.fromRGB
    local_10 = 150
    r71_value = 180
    event_connection = 255
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "13.0", Desc = "+ Fixed Autoblock\n+ Fixed any bugs with stamina\n+ Added auto solve puzzle\n+ soon killer and survivor tab...", Image = "cat",ImageSize = 26,Thumbnail = "rbxassetid://82625564944382",ThumbnailSize = 196,Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    r50_value = Color3.fromRGB
    r71_value = 180
    local_10 = 150
    hN[25] = 28543330923499
    event_connection = 255
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "19.2",Desc = "+ Fixed Autoblock (added new funcions)\n+ Fixed Stamina (for mobile)\n+ Added Survivors Tab!\n+ Added HDT for Guest1337\n+ Added Items ESP\n+ soon killer tab...", Image = "cat",ImageSize = 26,Thumbnail = "rbxassetid://82625564944382", ThumbnailSize = 196,Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    hN[20] = 9322693054709
    hN[44] = 25861723696906
    r50_value = Color3.fromRGB
    event_connection = 255
    local_10 = 150
    r71_value = 180
    r31_value = r50_value(local_10,event_connection,r71_value)
    local_player_5_ref_11_ref = {[decoded_cache_2] = "19.6",Desc = "+ Optimized Visual AutoBlock for madium\n+ Added Config Tab\n+ Fixed Mobile fuckest bug sprinting nigga (maybe)", Image = "cat", ImageSize = 26, Thumbnail = "rbxassetid://82625564944382", ThumbnailSize = 196, Color = r31_value}
local_player_5_ref_11_ref = floor_fn_3_ref:Paragraph(local_player_5_ref_11_ref)
    local_player_5_ref_11_ref = run_background_task_ref_2
local_player_5_ref_11_ref = local_player_5_ref_11_ref:Section(decoded_cache_2)
    local_27 = function()
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, local_player_5_ref, event_connection_2, character_2, char_fn, ui_node_2, random_fn
        character_2 = v1
        ui_node_5 = game.Players
        random_fn = v0
        local_player_5_ref = random_fn[character_2]
        event_connection_2 = ui_node_5[local_player_5_ref]
        character = event_connection_2.Character
        ui_node_5 = character
        if not ui_node_5 then
            return
        else
            event_connection_2 = "Humanoid"
character = ui_node_5:FindFirstChild(event_connection_2)
            local_player_5_ref = character
            random_fn = not local_player_5_ref
            if not random_fn then
                ui_node_3 = local_player_5_ref.Health
                character_2 = 0
                random_fn = ui_node_3 <= character_2
                event_connection_2 = random_fn
            end
            if event_connection_2 then
                return "Health"
            else
                ui_node_3 = ui_node_5.Parent
                random_fn = tostring(ui_node_3)
                ui_node = 18067837165789
                ui_node_3 = v0
                character_2 = v1
                event_connection_2 = "Spectating"
                if random_fn == event_connection_2 then
                    return
                else
                    character = false
                    event_connection_2 = {character}
                    return
                end
            end
        end
    end
    local_player_5_ref_11_ref = run_background_task_ref_2
    local local_28 = function(arg1, arg2, arg3, arg4)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, local_player_5_ref, event_connection_2, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, random_fn
        lookup = function(arg1, arg2)
                local character, ui_node_3, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, random_fn
                ui_node_3 = v1(ui_node_4,local_player_5_ref_11_ref)
                char_fn = ui_node[ui_node_3]
remove_fn = character_2:GetService(char_fn)
                ui_node_4 = 29286388184389
                ui_node_3 = 31008451885159
                random_fn = ui_node_3.Character
                ui_node_2 = 18686609957373
                lookup = random_fn.Game
                ui_node = 31047236073593
                character_2 = v1
                ui_node_5 = lookup.Sprinting
                return character(ui_node_5)
            end
        random_fn = {pcall(lookup)}
        ui_node_5 = random_fn[2]
        event_connection_2 = random_fn[1]
        lookup = event_connection_2
        if lookup then
            random_fn = ui_node_5
        end
        character = W7UcfbMY78KRH
        ui_node_3 = nil
        event_connection_2 = random_fn or ui_node_3
        event_connection_2 = {event_connection_2}
        return "7\019\131\195[Y"
    end
local_player_5_ref_11_ref = local_player_5_ref_11_ref:Tab(decoded_cache_2)
    local_6 = 25199899749846
    local_16 = "\177z\129"
    local_player_5_ref_11_ref = v0
    local_24 = v1
    local_20 = "zap"
local_player_5_ref_11_ref = local_player_5_ref_11_ref:Section(decoded_cache_2)
    local_player_5_ref_11_ref = nil
    local local_29 = function(arg1)
        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, char_fn, random_fn
        local v30 = arg1
        character = v30
        character.StaminaLoss = decoded_cache_2
        character = v30
        character.StaminaGain = decoded_cache_2
        character = v30
        character.MinStamina = decoded_cache_2
        character = v30
        character.MaxStamina = decoded_cache_2
        character = v30
        character.SprintSpeed = decoded_cache_2
        character = v30
        character.StaminaLossDisabled = decoded_cache_2
        if decoded_cache_2 then
            character = v30
            character.Stamina = decoded_cache_2
            event_connection_2 = v30
            random_fn = v0
            char_fn = 33716908129620
            ui_node_3 = v1
            lookup = random_fn["\001\194\165\029X\195\162\029\029"]
            if event_connection_2[lookup] then
                lookup = function(arg1)
                        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, random_fn
                        event_connection_2 = v30
                        lookup = v0
                        random_fn = v1
                        remove_fn = 3538674140783
                        character = event_connection_2.__staminaChangedEvent
event_connection_2 = character:Fire(decoded_cache_2)
                        return
                    end
                event_connection_2 = pcall(lookup)
            end
        end
        return
    end
    local v29 = local_27
    local v31 = local_28
    local v32 = local_29
    local local_30 = function(arg1)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, ui_node_4, random_fn
        if decoded_cache_2 then
event_connection_2 = decoded_cache_2:Disconnect()
        end
        if decoded_cache_2 then
event_connection_2 = decoded_cache_2:Disconnect()
        end
        char_fn = 21405475825391
        character = wS9ViEBL9lpLQ
        ui_node_5 = character_2
        random_fn = v0
        ui_node_3 = v1
        lookup = random_fn[",\005\007\195\164\195\142+\194\136q\195\166iVQ\194\172\025\195\149\195\172l\007\195\161\195\141\195\152"]
        event_connection_2 = ui_node_5[lookup]
        lookup = function(arg1, arg2, arg3, arg4)
                local character, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, ui_node_3, character_2, char_fn, random_fn
                event_connection_2 = v29()
                if event_connection_2 then
                    return
                else
                    event_connection_2 = v31()
                    ui_node_5 = event_connection_2
                    if ui_node_5 then
                        lookup = ui_node_5.DefaultsSet
                        character = 2158514
                        event_connection_2 = lookup
                    end
                    if event_connection_2 then
                        event_connection_2 = v32(ui_node_5)
                    end
                    return
                end
            end
        ui_node = 8185011670755
        ui_node_5 = event_connection_2[ui_node_5]
        ui_node_5 = ui_node_5(event_connection_2,lookup)
        lookup = character_2
        ui_node_3 = v0
        character_2 = v1
        event_connection_2 = lookup.Heartbeat
        lookup = event_connection_2.Connect
        character_3 = function(arg1, arg2)
                local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, ui_node_4, character_3
                character = v29
                ui_node_5 = arg1
                event_connection_2 = character()
                if event_connection_2 then
                    return xIlwHoAbtLoBd
                else
                    lookup = nil
                    if not decoded_cache_2 then
                        character_2 = 0
                        character_3 = decoded_cache_2 >= character_2
                        event_connection_2 = character_3
                    end
                    if event_connection_2 then
                        return
                    else
                        character_3 = v31()
                        local math_lib_3_ref = character_3
                        ui_node = math_lib_3_ref
                        if ui_node then
                            ui_node_2 = math_lib_3_ref
                            ui_node = ui_node_2.DefaultsSet
                            remove_fn = ui_node
                        end
                        character_2 = not remove_fn
                        if not character_2 then
                            ui_node = local_player_5_ref_11_ref.Stamina
                            char_fn = type(ui_node)
                            remove_fn = "number"
                            character_2 = char_fn ~= remove_fn
                            character_3 = character_2
                        end
                        if character_3 then
                            return
                        else
                            ui_node_3 = math_lib_3_ref
                            character_3 = ui_node_3.Stamina
                            character_2 = 0
                            ui_node_3 = character_3 > character_2
                            if ui_node_3 then
                                return
                            else
                                char_fn = game.Players
                                remove_fn = char_fn.LocalPlayer
                                character_2 = remove_fn.Character
                                if character_2 then
                                    ui_node_2 = "Humanoid"
ui_node = character_2:FindFirstChildOfClass(ui_node_2)
                                    remove_fn = ui_node
                                end
                                ui_node_3 = nil
                                ui_node_2 = remove_fn ~= ui_node_3
                                if ui_node_2 then
                                    ui_node_4 = remove_fn.MoveDirection
                                    ui_node_3 = ui_node_4.Magnitude
                                    ui_node_4 = .05
                                    ui_node_2 = ui_node_3 > ui_node_4
                                    char_fn = ui_node_2
                                end
                                ui_node_4 = 0
                                ui_node = ui_node_3 or ui_node_4
                                ui_node_4 = 0
                                local_player_5_ref_11_ref = ui_node
                                ui_node_3 = local_player_5_ref_11_ref
                                ui_node = ui_node_3 > ui_node_4
                                if ui_node then
                                    character = 6682226
                                    ui_node = 0
                                end
                                if char_fn then
                                    local_player_5_ref_20 = .016666666666667
                                    local_player_5_ref = ui_node_5 or local_player_5_ref_20
                                    ui_node_4 = 0
                                    local_player_5_ref_11_ref = decoded_cache_2 * local_player_5_ref
                                    ui_node_3 = ui_node_4 - local_player_5_ref_11_ref
                                    local_player_5_ref_11_ref = ui_node_3
                                else
                                    local_player_5_ref_18 = .016666666666667
                                    text_label = ui_node_5 or local_player_5_ref_18
                                    local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                    local_player_5_ref_11_ref = decoded_cache_2 * text_label
                                    ui_node_4 = local_player_5_ref_11_ref + local_player_5_ref_11_ref
                                    local_player_5_ref_11_ref = ui_node_4
                                end
                                local_player_5_ref_11_ref = math.clamp
                                local_player_5_ref = local_player_5_ref_11_ref
                                local_player_5_ref_11_ref = local_player_5_ref_11_ref(local_player_5_ref,decoded_cache_2,decoded_cache_2)
                                local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                local_player_5_ref_11_ref = math_lib_3_ref
                                local_player_5_ref_11_ref = 18430555742598
                                text_label = local_player_5_ref_11_ref
                                local_player_5_ref_11_ref.Stamina = text_label
                                local_player_5_ref = math_lib_3_ref
                                local_player_5_ref_20 = v0
                                local_player_5_ref_18 = v1
                                local_player_5_ref_11_ref = local_player_5_ref.__staminaChangedEvent
                                if local_player_5_ref_11_ref then
                                    text_label = function()
                                                local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, character_3
                                                event_connection_2 = math_lib_3_ref
                                                character = event_connection_2.__staminaChangedEvent
                                                ui_node_5 = local_player_5_ref_11_ref
event_connection_2 = character:Fire(ui_node_5)
                                                return
                                            end
                                    local_player_5_ref = pcall(text_label)
                                end
                                return
                            end
                        end
                    end
                end
            end
        return
    end
    local v33 = local_30
    local character_added_event = function(arg1, arg2, arg3, arg4)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, character_2, char_fn, ui_node_2, ui_node_4, character_3
        event_connection_2 = v29()
        if event_connection_2 then
            return
        else
            event_connection_2 = v31()
            local local_player_5_ref_3 = event_connection_2
            event_connection_2 = local_player_5_ref_3
            if not event_connection_2 then
                return
            else
                lookup = local_player_5_ref_3
                event_connection_2 = lookup.DefaultsSet
                if not event_connection_2 then
                    lookup = 0
                    ui_node_3 = local_player_5_ref_3
                    remove_fn = v0
                    character_3 = ui_node_3.DefaultsSet
                    if not character_3 then
                        ui_node_3 = 10
                    end
character = pcall
                    character_3 = function(arg1, arg2, arg3, arg4)
                            local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, character_3
                            event_connection_2 = local_player_5_ref_3
                            character_3 = v1
                            character = event_connection_2.Init
                            ui_node_5 = local_player_5_ref_3
                            event_connection_2 = character(ui_node_5)
                            return "Init"
                        end
                    event_connection_2 = character(character_3)
                    character = task.wait
                    character_3 = .3
                    event_connection_2 = character(character_3)
                    ui_node_4 = 932365468082
                    character_2 = local_player_5_ref_3
                    ui_node_3 = character_2.DefaultsSet
                    if not ui_node_3 then
                        character_2 = 10
                    end
                    return
                end
                character = a1ihEnmVSRIZ
                event_connection_2 = v32
                character_3 = local_player_5_ref_3
                lookup = event_connection_2(character_3)
                lookup = v33()
                return
            end
        end
    end
    local v36 = character_added_event
    character_added_event = {}
    local v19 = character_added_event
    character_added_event = v19
    local local_31 = function(arg1, arg2)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        event_connection_2 = tonumber(ui_node_5)
        lookup = event_connection_2
        if lookup then
            character_3 = v36()
            event_connection_2 = v10
            local_player_5_ref_18 = 3688230864565
            ui_node_2 = "max: "
            ui_node = ui_node_2 .. lookup
            local_player_5_ref_11_ref = v0
            local_player_5_ref = v1
            ui_node_3 = {Title = "Stamina", Content = ui_node,Duration = 3,Icon = "zap"}
            character = 8480601
character_3 = event_connection_2:Notify(ui_node_3)
        end
        return "zap"
    end
    local local_15 = {Title = "Max Stamina", Value = "100", InputIcon = "zap",Type = "Input",Placeholder = "100",Callback = local_31}
r71_value = local_player_5_ref_11_ref:Input(local_15)
    character_added_event.maxStam = r71_value
    character_added_event = v19
    local_31 = function(arg1)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        event_connection_2 = tostring(ui_node_5)
        character_3 = v0
        ui_node = 5117831924047
        lookup = character_3.Title
        ui_node_3 = v0
        char_fn = ""
        remove_fn = v1(char_fn,ui_node)
        character_3 = ui_node_3[remove_fn]
character = event_connection_2:gsub(lookup,character_3)
        ui_node_5 = character
        lookup = tonumber(ui_node_5)
        if lookup then
            character = 10435444
            ui_node_3 = v36()
            character_3 = v10
            local_player_5_ref_13_ref_ref = 33311689587863
            ui_node_3 = "min: "
            ui_node_2 = ui_node_3 .. lookup
            ui_node_4 = 3
            local_player_5_ref = v0
            text_label = v1
            ui_node_3 = character_3.Notify
            local_player_5_ref_11_ref = "minus"
            character_2 = {Title = "Stamina", Content = ui_node_2, [ui_node_3] = 3, Icon = "minus"}
        end
        return
    end
    local_15 = {Title = "Min Stamina", Value = "0",InputIcon = "minus", Type = "Input",Placeholder = "\195\150\195\154\195\153\195\153\195\137\195\145yeygy_yfyg\195\137yeyayfz,z*\195\146",Callback = local_31}
r71_value = local_player_5_ref_11_ref:Input(local_15)
    character_added_event.minStam = r71_value
    character_added_event = v19
    hN[29] = 3976789182267
    local_31 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        event_connection_2 = tonumber(ui_node_5)
        lookup = event_connection_2
        if lookup then
            character_3 = v36()
            event_connection_2 = v10
            ui_node_2 = "loss: "
            ui_node = ui_node_2 .. lookup
            local_player_5_ref_18 = 21816909768623
            local_player_5_ref_11_ref = v0
            local_player_5_ref = v1
            ui_node_3 = {Title = "Stamina", Content = ui_node,Duration = 3, Icon = "trending-down"}
character_3 = event_connection_2:Notify(ui_node_3)
        end
        return
    end
    local_15 = {Title = "Stamina Loss",Value = "10",InputIcon = "trending-down", Type = "Input", Placeholder = "10",Callback = local_31}
    hN[35] = 15517386529849
r71_value = local_player_5_ref_11_ref:Input(local_15)
    character_added_event.lossStam = r71_value
    character_added_event = v19
    local_31 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        event_connection_2 = tonumber(ui_node_5)
        lookup = event_connection_2
        if lookup then
            character_3 = v36()
            event_connection_2 = v10
            character_2 = "Title"
            ui_node_2 = "gain: "
            ui_node = ui_node_2 .. lookup
            local_player_5_ref_18 = 12683007678225
            local_player_5_ref_11_ref = v0
            local_player_5_ref = v1
            ui_node_3 = {Title = "Stamina",Content = ui_node,Duration = 3, Icon = "trending-up"}
character_3 = event_connection_2:Notify(ui_node_3)
        end
        return
    end
    local_15 = {Title = "Stamina Gain",Value = "20",InputIcon = "trending-up", Type = "Input",Placeholder = "20",Callback = local_31}
r71_value = local_player_5_ref_11_ref:Input(local_15)
    character_added_event.gainStam = r71_value
    character_added_event = v19
    hN[43] = "\163\142>\195\215F\016"
    local_3 = "\023\146\173%\168+J\140"
    local_31 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        event_connection_2 = tonumber(ui_node_5)
        lookup = event_connection_2
        if lookup then
            character_3 = v36()
            event_connection_2 = v10
            local_player_5_ref_18 = 717681705294
            ui_node_2 = "speed: "
            ui_node = ui_node_2 .. lookup
            local_player_5_ref_11_ref = v0
            character = 12591986
            local_player_5_ref = v1
            ui_node_3 = {Title = "Sprint",Content = ui_node,Duration = 3,Icon = "bird"}
character_3 = event_connection_2:Notify(ui_node_3)
        end
        return
    end
    local_15 = {Title = "Sprint Speed", Value = "26", InputIcon = "bird", Type = "Input", Placeholder = "26",Callback = local_31}
r71_value = local_player_5_ref_11_ref:Input(local_15)
    character_added_event.sprintStam = r71_value
    character_added_event = v19
    hN[23] = 14084184185246
    local local_18 = false
    local local_32 = function(arg1, arg2, arg3, arg4)
        local character, ui_node_5, lookup, event_connection_2
        ui_node_5 = nil
        character = TfHuxOGvcRRuDv
        lookup = v36()
        return TfHuxOGvcRRuDv
    end
    local_15 = {Title = "Infinite Stamina",Icon = "infinity", Value = local_18, Callback = local_32}
r71_value = local_player_5_ref_11_ref:Toggle(local_15)
    character_added_event.infinite = r71_value
    r71_value = game.Players
    event_connection = r71_value.LocalPlayer
    character_added_event = event_connection.CharacterAdded
    local local_33 = function(arg1, arg2, arg3)
        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, character_3
        remove_fn = 10827050275761
        lookup = v0
        character_3 = v1
        character = task.wait
        ui_node_5 = 1
        event_connection_2 = character(ui_node_5)
        event_connection_2 = v36()
        return
    end
event_connection = character_added_event:Connect(local_33)
    character_added_event = task.spawn
    local_33 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, character_3
        remove_fn = 18178566824209
        event_connection_2 = character_2
        lookup = v0
        character_3 = v1
        character = event_connection_2.RenderStepped
event_connection_2 = character:Wait()
        event_connection_2 = v36()
        event_connection_2 = v33()
        return
    end
    event_connection = character_added_event(local_33)
    character_added_event = run_background_task_ref_2
    local_33 = {Title = "ESP",Icon = "eye"}
event_connection = character_added_event:Tab(local_33)
    local_33 = {Title = "Player ESP", Icon = "users"}
character_added_event = event_connection:Section(local_33)
    local_15 = {Title = "Killer ESP Settings", Icon = "skull"}
local_33 = event_connection:Section(local_15)
    local local_23 = {Title = "Survivor ESP Settings", Icon = "users"}
local_15 = event_connection:Section(local_23)
    local local_11 = {Title = "Generator ESP",Icon = "zap"}
local_23 = event_connection:Section(local_11)
    local_26 = {Title = "Generator ESP Settings",Icon = "settings"}
local_11 = event_connection:Section(local_26)
    local_player_3 = {Title = "Items ESP",Icon = "package"}
local_26 = event_connection:Section(local_player_3)
    local v45 = nil
    local_player_3 = {}
    local v49 = local_player_3
    local_player_3 = {}
    local v48 = local_player_3
    local_player_3 = {}
    local v44 = local_player_3
    local_player_3 = {}
    local v42 = local_player_3
    local_player_3 = {}
    local v50 = local_player_3
    local_player_3 = {}
    local v39 = local_player_3
    local v41 = nil
    local v40 = nil
    local_player_3 = .1
    local v18 = local_player_3
    local_player_3 = 0.5
    local v15 = 0.5
    local local_8 = Color3.fromRGB
    local local_13 = 255
    local r81_value = 50
    local r53_value = 50
    local local_17 = local_8(local_13,r81_value,r53_value)
    local r96_value = 0
    local_13 = Color3.fromRGB
    local r72_value = 0
    r53_value = 255
    r81_value = local_13(r53_value,r72_value,r96_value)
    r53_value = .3
    r96_value = true
    local r57_value = true
    local r79_value = false
    local r1_value = false
    local r92_value = 80
    local r65_value = 80
    local r49_value = Color3.fromRGB
    local r22_value = 255
    local r51_value = r49_value(r22_value,r65_value,r92_value)
    hN[17] = "\002\001u|\173"
    r22_value = Color3.fromRGB
    r92_value = 255
    local r18_value = 200
    local r23_value = 200
    r65_value = r22_value(r92_value,r23_value,r18_value)
    local r17_value = 255
    r92_value = Color3.fromRGB
    r18_value = 255
    local r61_value = 100
    r23_value = r92_value(r18_value,r17_value,r61_value)
    r18_value = 0.5
    local_player_3 = {fillColor = local_17, outlineColor = r81_value, fillTrans = r53_value,showBillboard = r96_value,showName = r57_value,showHP = r79_value,showDist = r1_value,nameColor = r51_value, hpColor = r65_value,distColor = r23_value,billboardBgTrans = r18_value, maxDistance = 1000,textSize = 13,billboardWidth = 140, billboardHeight = 0}
    local v51 = local_player_3
    r72_value = 100
    r53_value = 255
    local_17 = Color3.fromRGB
    r81_value = 50
    local_13 = local_17(r81_value,r53_value,r72_value)
    local r20_value = 50
    r81_value = Color3.fromRGB
    r96_value = 200
    r72_value = 0
    r53_value = r81_value(r72_value,r96_value,r20_value)
    r72_value = .3
    r20_value = true
    local r40_value = true
    local r38_value = false
    local r5_value = false
    r51_value = Color3.fromRGB
    r23_value = 150
    r65_value = 100
    r92_value = 255
    r22_value = r51_value(r65_value,r92_value,r23_value)
    r18_value = 255
    r65_value = Color3.fromRGB
    r17_value = 100
    r23_value = 100
    r92_value = r65_value(r23_value,r18_value,r17_value)
    r23_value = Color3.fromRGB
    local r21_value = 100
    r61_value = 255
    r17_value = 255
    r18_value = r23_value(r17_value,r61_value,r21_value)
    hN[27] = "\214\031\250\155[#\246\226"
    r17_value = 0.5
    local_player_3 = {fillColor = local_13,outlineColor = r53_value, fillTrans = r72_value, showBillboard = r20_value,showName = r40_value,showHP = r38_value,showDist = r5_value, nameColor = r22_value, hpColor = r92_value, distColor = r18_value,billboardBgTrans = r17_value, maxDistance = 1000,textSize = 13,billboardWidth = 140, billboardHeight = 0}
    local v52 = local_player_3
    r96_value = 50
    hN[12] = 1914511901563
    local_13 = Color3.fromRGB
    r53_value = 255
    r72_value = 220
    r81_value = local_13(r53_value,r72_value,r96_value)
    r53_value = Color3.fromRGB
    r20_value = 160
    r57_value = 0
    r96_value = 200
    r72_value = r53_value(r96_value,r20_value,r57_value)
    r96_value = .4
    r57_value = true
    r79_value = true
    r49_value = false
    r1_value = true
    r23_value = 230
    r22_value = Color3.fromRGB
    r92_value = 255
    r18_value = 80
    r65_value = r22_value(r92_value,r23_value,r18_value)
    hN[15] = 10750669804430
    r61_value = 180
    r17_value = 255
    r92_value = Color3.fromRGB
    r18_value = 100
    r23_value = r92_value(r18_value,r17_value,r61_value)
    hN[33] = 13583643416757
    r21_value = 255
    r18_value = Color3.fromRGB
    local r58_value = 100
    r61_value = 255
    r17_value = r18_value(r61_value,r21_value,r58_value)
    r61_value = 0.5
    local_player_3 = {fillColor = r81_value, outlineColor = r72_value, fillTrans = r96_value, showBillboard = r57_value,showLabel = r79_value, showProgress = r1_value,showDist = r49_value,labelColor = r65_value,progressColor = r23_value, distColor = r17_value,billboardBgTrans = r61_value,maxDistance = 1000, textSize = 13, billboardWidth = 160, billboardHeight = 0}
    local local_34 = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, ui_node_4, character_3
        char_fn = arg7
        character_2 = arg5
        lookup = arg2
        ui_node_3 = arg4
        remove_fn = arg6
        character_3 = arg3
        ui_node_5 = arg1
        character = Instance.new
        ui_node = "BillboardGui"
        event_connection_2 = character(ui_node)
        ui_node = event_connection_2
        event_connection_2 = character_3
        ui_node.Name = event_connection_2
ui_node_2 = UDim2
        ui_node_2 = ui_node_2.fromOffset(ui_node_3,character_2)
        ui_node.Size = ui_node_2
        character = "StudsOffset"
        ui_node_2 = character
        if not char_fn then
            local_player_5_ref = 0
            ui_node_3 = Vector3.new
            local_player_5_ref_11_ref = 0
            local_player_5_ref_11_ref = 1.5
            ui_node_4 = ui_node_3(local_player_5_ref_11_ref,local_player_5_ref_11_ref,local_player_5_ref)
            event_connection_2 = ui_node_4
        end
        character = ui_node_2
        ui_node[character] = event_connection_2
        event_connection_2 = true
        ui_node.AlwaysOnTop = event_connection_2
        event_connection_2 = false
        ui_node.ResetOnSpawn = event_connection_2
        event_connection_2 = 0
        ui_node.LightInfluence = event_connection_2
        event_connection_2 = ui_node_5
        ui_node.Adornee = event_connection_2
        event_connection_2 = lookup
        ui_node.Parent = event_connection_2
        character = Instance.new
        ui_node_2 = "Frame"
        event_connection_2 = character(ui_node_2)
        ui_node_2 = event_connection_2
        event_connection_2 = "_ESPBg"
        ui_node_2.Name = event_connection_2
        event_connection_2 = UDim2.fromScale
        ui_node_4 = 1
        local_player_5_ref_11_ref = 1
        ui_node_3 = event_connection_2(ui_node_4,local_player_5_ref_11_ref)
        ui_node_2.Size = ui_node_3
        event_connection_2 = Color3.new
        local_player_5_ref_11_ref = 0
        local_player_5_ref_11_ref = 0
        ui_node_4 = 0
        ui_node_3 = event_connection_2(ui_node_4,local_player_5_ref_11_ref,local_player_5_ref_11_ref)
        ui_node_2.BackgroundColor3 = ui_node_3
        event_connection_2 = remove_fn
        ui_node_2.BackgroundTransparency = event_connection_2
        event_connection_2 = 0
        ui_node_2.BorderSizePixel = event_connection_2
        event_connection_2 = ui_node
        ui_node_2.Parent = event_connection_2
        character = Instance.new
        ui_node_3 = "UICorner"
        event_connection_2 = character(ui_node_3)
        ui_node_3 = event_connection_2
        event_connection_2 = UDim.new
        local_player_5_ref_11_ref = 0
        local_player_5_ref_11_ref = 5
        ui_node_4 = event_connection_2(local_player_5_ref_11_ref,local_player_5_ref_11_ref)
        ui_node_3.CornerRadius = ui_node_4
        event_connection_2 = ui_node_2
        ui_node_3.Parent = event_connection_2
        character = Instance.new
        ui_node_4 = "UIListLayout"
        event_connection_2 = character(ui_node_4)
        ui_node_4 = event_connection_2
        local_player_5_ref_11_ref = Enum.SortOrder
        event_connection_2 = local_player_5_ref_11_ref.LayoutOrder
        ui_node_4.SortOrder = event_connection_2
        local_player_5_ref_11_ref = Enum.FillDirection
        event_connection_2 = local_player_5_ref_11_ref.Vertical
        ui_node_4.FillDirection = event_connection_2
        local_player_5_ref_11_ref = 27408028627418
        local_player_5_ref_11_ref = Enum.HorizontalAlignment
        event_connection_2 = local_player_5_ref_11_ref.Center
        ui_node_4.HorizontalAlignment = event_connection_2
        local_player_5_ref_11_ref = Enum.VerticalAlignment
        local_player_5_ref_13_ref_ref = 7818331229752
        event_connection_2 = local_player_5_ref_11_ref.Center
        ui_node_4.VerticalAlignment = event_connection_2
        text_label = 18879078277719
        event_connection_2 = UDim.new
        local_player_5_ref = 2
        local_player_5_ref_11_ref = 0
        local_player_5_ref_11_ref = event_connection_2(local_player_5_ref_11_ref,local_player_5_ref)
        ui_node_4.Padding = local_player_5_ref_11_ref
        local_player_5_ref_11_ref = v1
        event_connection_2 = ui_node_2
        ui_node_4.Parent = event_connection_2
        event_connection_2 = {ui_node, ui_node_2}
        return
    end
    local v53 = local_player_3
    local local_35 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, r26_value, text_label, remove_fn, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        character_3 = ui_node_5.showName
        lookup = tostring(character_3)
        character_2 = ui_node_5.showHP
        ui_node_3 = tostring(character_2)
        local_9 = 22877058722204
        char_fn = ui_node_5.showDist
        remove_fn = tostring(char_fn)
        ui_node_2 = ui_node_5.textSize
        ui_node = tostring(ui_node_2)
        ui_node_4 = ui_node_5.maxDistance
        ui_node_3 = tostring(ui_node_4)
        local_player_5_ref_11_ref = ui_node_5.billboardWidth
        local_player_5_ref_11_ref = tostring(local_player_5_ref_11_ref)
        text_label = ui_node_5.billboardHeight
        local_player_5_ref = tostring(text_label)
        local_player_5_ref_13_ref_ref = v0
        local_player_5_ref_11_ref = v1
        local_player_5_ref_20 = ui_node_5.showBillboard
        text_label = tostring(local_player_5_ref_20)
        ui_node_4 = local_player_5_ref .. text_label
        ui_node_2 = local_player_5_ref_11_ref .. ui_node_4
        char_fn = ui_node_3 .. ui_node_2
        character_2 = ui_node .. char_fn
        character_3 = remove_fn .. character_2
        event_connection_2 = ui_node_3 .. character_3
        character = lookup .. event_connection_2
        event_connection_2 = {character}
        return UCnNiENoojWus
    end
    hN[14] = 11180781229142
    local local_36 = function(arg1, arg2, arg3, arg4)
        local character, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, ui_node_3, character_2, char_fn, character_3
        lookup = function()
                local character, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, ui_node_3, character_2, char_fn, character_3
                return
            end
        character_3 = {pcall(lookup)}
        ui_node_5 = character_3[2]
        event_connection_2 = character_3[1]
        lookup = event_connection_2
        if lookup then
            character_3 = ui_node_5
        end
        character = G8R8cfEaUiOEjF
        ui_node_3 = nil
        event_connection_2 = character_3 or ui_node_3
        event_connection_2 = {event_connection_2}
        return "7\019\131\195[Y"
    end
    local local_37 = function(arg1, arg2, arg3, arg4)
        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, char_fn, character_3
        local v54 = arg1
character = pcall
        lookup = function(arg1, arg2)
                local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, char_fn, character_3
                character = v54
                ui_node_5 = "_ESPHighlight"
event_connection_2 = character:FindFirstChild(ui_node_5)
                ui_node_5 = event_connection_2
                if ui_node_5 then
character = ui_node_5:Destroy()
                end
                char_fn = 10233909908125
                character = v54
                character_3 = v0
                ui_node_3 = v1
                lookup = character_3["B\194\129\194\137\011R\195\191[9\195\180v(z\195\135"]
event_connection_2 = character:FindFirstChild(lookup)
                lookup = event_connection_2
                if lookup then
character = lookup:Destroy()
                end
                return
            end
        ui_node_5 = v54
        event_connection_2 = character(lookup)
        character = env["2Wi8lYhdQ62nj"]
        return
    end
    local_13 = game.Players
    local local_38 = function(arg1, arg2)
        local character, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, ui_node_3, character_2, char_fn, character_3
        event_connection_2 = v39
        ui_node_5 = arg1
        character = event_connection_2[ui_node_5]
        local_player_5_ref_2 = character
        if character then
            event_connection_2 = local_player_5_ref_2
            ui_node_3 = v0
            character_2 = v1
            if event_connection_2.died then
                character_3 = function(arg1, arg2, arg3)
                        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, character_3
                        event_connection_2 = local_player_5_ref_2
                        lookup = v0
                        character_3 = v1
                        character = event_connection_2.died
event_connection_2 = character:Disconnect()
                        return
                    end
                event_connection_2 = pcall(character_3)
            end
            ui_node = 30764418349045
            event_connection_2 = local_player_5_ref_2
            ui_node_3 = v0
            character_2 = v1
            if event_connection_2.respawn then
                character_3 = function(arg1, arg2, arg3, arg4)
                        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, character_2, character_3
                        event_connection_2 = local_player_5_ref_2
                        character_3 = v1
                        remove_fn = 5724609006185
                        character = event_connection_2.respawn
event_connection_2 = character:Disconnect()
                        return
                    end
                event_connection_2 = pcall(character_3)
            end
        end
        return
    end
    local local_39 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, ui_node_4, character_3
        character_3 = arg3
        lookup = arg2
        ui_node_5 = arg1
        char_fn = {ipairs(lookup)}
        remove_fn = char_fn[3]
        character_2 = char_fn[2]
        event_connection_2 = char_fn[1]
        char_fn = event_connection_2
        while true do
            remove_fn,ui_node_2 = char_fn(character_2,remove_fn)
            if not remove_fn then
                break
            end
            ui_node = remove_fn
            character = Instance.new
            ui_node_4 = "TextLabel"
            ui_node_3 = character(ui_node_4)
            local_player_5_ref_11_ref = "_ESPLine"
            ui_node_4 = local_player_5_ref_11_ref .. ui_node
            ui_node_3.Name = ui_node_4
            ui_node_4 = UDim2.new
            text_label = 0
            local_player_5_ref = 0
            local_player_5_ref_11_ref = 1
            local_player_5_ref_11_ref = ui_node_4(local_player_5_ref_11_ref,local_player_5_ref,text_label,ui_node_3)
            ui_node_3.Size = local_player_5_ref_11_ref
            ui_node_4 = 1
            ui_node_3.BackgroundTransparency = ui_node_4
            local_player_5_ref_11_ref = 23042458872297
            ui_node_4 = ui_node_2.color
            ui_node_3.TextColor3 = ui_node_4
            ui_node_4 = .4
            ui_node_3.TextStrokeTransparency = ui_node_4
            ui_node_4 = Color3.new
            local_player_5_ref = 0
            text_label = 0
            local_player_5_ref_11_ref = 0
            local_player_5_ref_11_ref = ui_node_4(local_player_5_ref_11_ref,local_player_5_ref,text_label)
            ui_node_3.TextStrokeColor3 = local_player_5_ref_11_ref
            local_player_5_ref_13_ref_ref = 15388064111613
            ui_node_3.Font = Enum.Font.GothamBold
            local_player_5_ref_18 = 11177626063956
            ui_node_4 = character_3
            ui_node_3.TextSize = ui_node_4
            ui_node_4 = ui_node_2.text
            ui_node_2 = nil
            ui_node_3.Text = ui_node_4
            ui_node_4 = ui_node
            text_label = 34147390897693
            ui_node_3.LayoutOrder = ui_node_4
            local_player_5_ref_11_ref = v1
            ui_node_4 = ui_node_5
            ui_node_3.Parent = ui_node_4
            ui_node = nil
        end
        return
    end
    local_player_3 = local_13.LocalPlayer
    local local_40 = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, lookup, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, character_2, char_fn, ui_node_2, ui_node_4, character_3
        local v58 = arg1
        local v57 = arg2
        local v59 = arg3
        character = v58
        ui_node_3 = v57
event_connection_2 = character:FindFirstChild(ui_node_3)
        local local_player_5_ref_6 = event_connection_2
        remove_fn = local_player_5_ref_6
        character_2 = not remove_fn
        if not character_2 then
            remove_fn = character
            ui_node = local_player_5_ref_6
            ui_node_3 = "Highlight"
ui_node_2 = ui_node:IsA(ui_node_3)
            char_fn = not ui_node_2
            if not char_fn then
                text_label = 34346969480826
                ui_node_2 = local_player_5_ref_6
                ui_node = ui_node_2.Parent
                char_fn = not ui_node
                character_2 = char_fn
            end
            event_connection_2 = character_2
            character = remove_fn
        end
        if event_connection_2 then
            event_connection_3 = function()
                    local character, event_connection_2
                    if local_player_5_ref_6 then
                        character = local_player_5_ref_6
event_connection_2 = character:Destroy()
                    end
                    return
                end
            event_connection_2 = pcall(event_connection_3)
character = pcall
            event_connection_3 = function(arg1)
                    local character, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, ui_node_3, event_connection_3, char_fn, ui_node_2, character_3
                    character = Instance.new
                    ui_node_5 = "Highlight"
                    event_connection_2 = character(ui_node_5)
                    ui_node_5 = event_connection_2
                    event_connection_2 = v57
                    ui_node_5.Name = event_connection_2
                    lookup = v59
                    event_connection_2 = lookup.fillColor
                    ui_node_5.FillColor = event_connection_2
                    lookup = v59
                    event_connection_2 = lookup.outlineColor
                    ui_node_5.OutlineColor = event_connection_2
                    lookup = v59
                    event_connection_2 = lookup.fillTrans
                    ui_node_5.FillTransparency = event_connection_2
                    ui_node_5.OutlineTransparency = 0
                    lookup = Enum.HighlightDepthMode
                    event_connection_2 = lookup.AlwaysOnTop
                    event_connection_3 = 29193606657306
                    ui_node_5.DepthMode = event_connection_2
                    character = "Parent"
                    event_connection_2 = v58
                    ui_node_5.Parent = event_connection_2
                    return "Parent"
                end
            event_connection_2 = character(event_connection_3)
        else
            character = local_player_5_ref_6
            remove_fn = v59
            event_connection_3 = remove_fn.fillColor
            character.FillColor = event_connection_3
            character = local_player_5_ref_6
            remove_fn = v59
            event_connection_3 = remove_fn.outlineColor
            character.OutlineColor = event_connection_3
            character = local_player_5_ref_6
            local_player_5_ref_11_ref = 23734616599340
            remove_fn = v59
            ui_node = v0
            ui_node_2 = v1
            event_connection_3 = remove_fn.fillTrans
            character.FillTransparency = event_connection_3
        end
        return aRcFIYOacgYM
    end
    local local_41 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, local_player_5_ref_11_ref, event_connection_3, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        character = v56
        lookup = character
        character_3 = lookup.Character
        if character_3 then
            ui_node_3 = lookup.Character
            character_3 = ui_node_5 == ui_node_3
            event_connection_2 = character_3
        end
        if event_connection_2 then
            return character
        else
            event_connection_2 = ui_node_5.Name
            character_3 = lookup.Name
            if event_connection_2 == character_3 then
                character = game.Players
                character_3 = ui_node_5.Name
event_connection_2 = character:FindFirstChild(character_3)
                character_3 = event_connection_2
                if character_3 then
                    local_player_5_ref_11_ref = 14301421869571
                    event_connection_3 = character_3.UserId
                    ui_node = v0
                    ui_node_2 = v1
                    remove_fn = lookup.UserId
                    ui_node_3 = event_connection_3 == remove_fn
                    event_connection_2 = ui_node_3
                end
                if event_connection_2 then
                return
                else
                    goto block_9408691
                end
                ::block_9408691::
                character_3 = nil
            end
            character = false
            event_connection_2 = {character}
            return character
        end
    end
    local v56 = local_player_3
    local local_42 = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, ui_node_5, remove_fn, lookup, event_connection_2, ui_node_3, event_connection_3, char_fn, character_3
        ui_node_5 = arg1
        char_fn = 15628770237549
        character_3 = v0
        ui_node_3 = v1
        lookup = character_3[event_connection_3]
event_connection_2 = workspace:FindFirstChild(lookup)
        lookup = event_connection_2
        if lookup then
character = lookup:FindFirstChild(ui_node_5)
            return "FindFirstChild"
        end
        event_connection_2 = {workspace.FindFirstChild(workspace,ui_node_5)}
        character = env["07bLDeQDqnqLTR"]
        event_connection_2 = {unpack_fn(event_connection_2)}
        return
    end
    local local_43 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, event_connection_3, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        character_3 = v0
        lookup = character_3[event_connection_3]
        character = game[lookup]
        lookup = ui_node_5.Name
event_connection_2 = character:FindFirstChild(lookup)
        lookup = event_connection_2
        if lookup then
            return
        else
            event_connection_3 = game.Players
            char_fn = "GetPlayers"
            remove_fn = {event_connection_3.GetPlayers(event_connection_3)}
            event_connection_3 = {ipairs(unpack_fn(remove_fn))}
            character_3 = event_connection_3[2]
            ui_node_3 = event_connection_3[3]
            event_connection_2 = event_connection_3[1]
            event_connection_3 = event_connection_2
            while true do
                ui_node_3,char_fn = event_connection_3(character_3,ui_node_3)
                if not ui_node_3 then
                    break
                end
                ui_node_3 = v0
                ui_node_4 = v1
                local_player_5_ref = 28202755486540
                ui_node = char_fn.Character
                if ui_node == ui_node_5 then
                return char_fn
                else
                    goto block_13971469
                end
                ::block_13971469::
                char_fn = nil
                remove_fn = nil
            end
            character = nil
            event_connection_2 = {character}
            return character
        end
    end
    local v61 = local_41
    local local_44 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, local_player_5_ref_11_ref, event_connection_3, char_fn, ui_node_2, ui_node_4, character_3
        event_connection_2 = v56
        ui_node_5 = arg1
        character_3 = v0
        lookup = character_3[event_connection_3]
        character = event_connection_2[lookup]
        lookup = character
        if not lookup then
            return
        else
            character_3 = v0
            event_connection_2 = character_3[event_connection_3]
character = lookup:FindFirstChild(event_connection_2)
            character_3 = character
            if not character_3 then
                return character
            else
                local_player_5_ref_11_ref = 952658526651
                character = math.floor
                ui_node_4 = 16684309175897
                remove_fn = character_3.Position
                event_connection_3 = ui_node_5 - remove_fn
                char_fn = v0
                ui_node = v1
                ui_node_3 = event_connection_3.Magnitude
                event_connection_2 = {character(ui_node_3)}
                character = bj5Y5PDCJHU0gp
                event_connection_2 = {unpack_fn(event_connection_2)}
                return unpack_fn(event_connection_2)
            end
        end
    end
    local v62 = local_42
    local v63 = local_43
    local local_45 = function(arg1, arg2, arg3, arg4)
        local character, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, ui_node_3, event_connection_3, char_fn, ui_node_2, character_3
        ui_node_5 = arg1
        character_3 = "HumanoidRootPart"
lookup = ui_node_5:FindFirstChild(character_3)
        if not lookup then
            character_3 = "BasePart"
lookup = ui_node_5:FindFirstChildWhichIsA(character_3)
            event_connection_2 = lookup
        end
        lookup = event_connection_2
        if lookup then
            event_connection_3 = v0
            ui_node_2 = 3406604748338
            remove_fn = v1
            character_3 = lookup.Position
            event_connection_2 = character_3
        end
        character = wc0ihvEZLzu9g
        event_connection_2 = {event_connection_2}
        return "7\019\131\195[Y"
    end
    local local_46 = function(arg1, arg2)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, event_connection_3, char_fn, ui_node_2, ui_node_4, character_3
        character = v63
        ui_node_5 = arg1
        event_connection_2 = character(ui_node_5)
        lookup = event_connection_2
        if lookup then
            ui_node_4 = 28920173065371
            event_connection_3 = lookup.Name
            character_3 = event_connection_3
        end
        if not character_3 then
            event_connection_3 = v0
            remove_fn = v1
            ui_node_2 = 17116692389666
            character_3 = ui_node_5.Name
            event_connection_2 = character_3
        end
        character = env["8jKJNLPTKc3pH"]
        event_connection_2 = {event_connection_2}
        return
    end
    local v64 = local_46
    local local_47 = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, ui_node_3, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, event_connection_3, char_fn, ui_node_2, character_3
        ui_node_5 = arg1
        event_connection_2 = "Humanoid"
character = ui_node_5:FindFirstChildWhichIsA(event_connection_2)
        lookup = character
        if lookup then
            character = math.floor
            character_3 = lookup.Health
            event_connection_2 = character(character_3)
            character = math.floor
            remove_fn = v0
            char_fn = v1
            ui_node_3 = lookup.MaxHealth
            character_3 = {character(ui_node_3)}
            event_connection_2 = {event_connection_2, unpack_fn(character_3)}
            return
        else
            character = nil
            event_connection_2 = {character,event_connection_2}
            return
        end
    end
    local v65 = local_47
    local v66 = local_44
    local local_48 = function(arg1, arg2, arg3, arg4)
        local character, ui_node_5, event_connection_2
        ui_node_5 = v44
        event_connection_2 = next(ui_node_5)
        if event_connection_2 then
            return
        else
            if v41 then
event_connection_2 = character:Disconnect()
                character = nil
                v41 = nil
            end
            return
        end
    end
    local v67 = local_45
    local local_49 = function(arg1, arg2, arg3, arg4, arg5)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, event_connection_3, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        lookup = arg2
        character = {}
        character_3 = character
        if lookup.showName then
            character = table.insert
            char_fn = v64(ui_node_5)
            ui_node = lookup.nameColor
            ui_node_3 = {text = char_fn,color = ui_node}
            event_connection_2 = character(character_3,ui_node_3)
        end
        if lookup.showHP then
            event_connection_3 = {v65(ui_node_5)}
            ui_node_3 = event_connection_3[2]
            event_connection_2 = event_connection_3[1]
            event_connection_3 = event_connection_2
            if event_connection_3 then
                local_player_5_ref_18 = 5512575715846
                character = table.insert
                ui_node_2 = "HP: "
                local_player_5_ref_11_ref = "/"
                ui_node_4 = local_player_5_ref_11_ref .. ui_node_3
                ui_node_3 = event_connection_3 .. ui_node_4
                ui_node = ui_node_2 .. ui_node_3
                ui_node_3 = lookup.hpColor
                remove_fn = {text = ui_node,color = ui_node_3}
                event_connection_2 = character(character_3,remove_fn)
            end
        end
        if lookup.showDist then
            event_connection_2 = v67(ui_node_5)
            ui_node_3 = event_connection_2
            if ui_node_3 then
                remove_fn = v66(ui_node_3)
                event_connection_2 = remove_fn
            end
            event_connection_3 = event_connection_2
            if event_connection_3 then
                character = table.insert
                local_player_5_ref_20 = 17448073027516
                ui_node_2 = " studs"
                ui_node = event_connection_3 .. ui_node_2
                local_player_5_ref_11_ref = v0
                local_player_5_ref_11_ref = v1
                ui_node_3 = lookup.distColor
                remove_fn = {text = ui_node, color = ui_node_3}
                event_connection_2 = character(character_3,remove_fn)
            end
            ui_node_3 = nil
            event_connection_3 = nil
        end
        character = nr6Ufm227bmiL
        event_connection_2 = {character_3}
        return "FindFirstChild"
    end
    local local_50 = function(arg1, arg2, arg3, arg4, arg5)
        local character, event_connection_2
        if v40 then
event_connection_2 = character:Disconnect()
            v40 = nil
        end
        character = env["7DzHfzGfGjSP1Y"]
        return
    end
    local v68 = local_34
    local v69 = local_39
    local v70 = local_40
    local v71 = local_49
    local v72 = local_35
    local local_51 = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        local character, ui_node_3, ui_node_5, ui_node, text_label, remove_fn, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, event_connection_3, char_fn, ui_node_2, ui_node_4, character_3
        ui_node_5 = arg1
        character = v62
        lookup = arg2
        event_connection_2 = character(ui_node_5)
        character_3 = event_connection_2
        if not character_3 then
            return OpODTKxXKIFQM
        else
            remove_fn = {character_3.GetChildren(character_3)}
            char_fn = {ipairs(unpack_fn(remove_fn))}
            event_connection_2 = char_fn[1]
            remove_fn = event_connection_2
            event_connection_3 = char_fn[3]
            ui_node_3 = char_fn[2]
            while true do
                event_connection_3,ui_node = remove_fn(ui_node_3,event_connection_3)
                if not event_connection_3 then
                    break
                end
                local_player_5_ref_11_ref = v1
                local_player_5_ref_20 = 22121797183549
                ui_node_4 = "Model"
ui_node_3 = ui_node:IsA(ui_node_4)
                if ui_node_3 then
                    local_player_5_ref_11_ref = v61(ui_node)
                    ui_node_3 = not local_player_5_ref_11_ref
                    ui_node_2 = ui_node_3
                end
                if ui_node_2 then
                    character = v49
                    ui_node_2 = v73(ui_node,lookup)
                end
                ui_node = nil
                char_fn = nil
            end
            return
        end
    end
    local local_52 = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        local character, ui_node_3, ui_node_5, ui_node, r26_value, text_label, remove_fn, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, local_player_5_ref_11_ref, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, local_3, ui_node_4, character_3
        local v74 = arg1
        local v75 = arg2
        ui_node_3 = v74
        character_3 = not ui_node_3
        if not character_3 then
            ui_node_4 = 18165968757003
            ui_node_2 = local_player_5_ref_11(local_player_5_ref_12,ui_node_4)
            event_connection_2 = local_player_5_ref_9
        end
        if event_connection_2 then
            return
        else
            character = v70
            character_3 = v74
            ui_node_3 = "_ESPHighlight"
            event_connection_3 = v75
            event_connection_2 = character(character_3,ui_node_3,event_connection_3)
            character_3 = v75
            event_connection_2 = character_3.showBillboard
            if not event_connection_2 then
                character = v74
                character_3 = "_ESPBillboard"
event_connection_2 = character:FindFirstChild(character_3)
                local local_player_5_ref_8 = event_connection_2
                if event_connection_2 then
                    ui_node_6 = function()
                            local character, event_connection_2
                            character = local_player_5_ref_8
event_connection_2 = character:Destroy()
                            return
                        end
                    event_connection_2 = pcall(ui_node_6)
                end
                return
            else
                character = v71
                character_3 = v74
                ui_node_6 = v75
                event_connection_2 = character(local_player_5_ref_8,ui_node_6)
                local local_player_5_ref_9 = event_connection_2
                ui_node_6 = v75
                event_connection_2 = ui_node_6.textSize
                ui_node_6 = 4
                character = event_connection_2 + ui_node_6
                ui_node_2 = 0
                ui_node_6 = character
                char_fn = ui_node > ui_node_2
                if char_fn then
                    ui_node = v75
                    char_fn = ui_node.billboardHeight
                    event_connection_3 = char_fn
                end
                if not event_connection_3 then
                    char_fn = local_player_5_ref_11.max
                    ui_node_2 = 1
                    ui_node = char_fn(ui_node_2,local_player_5_ref_12)
                    char_fn = 6
                    event_connection_3 = local_player_5_ref_2 + char_fn
                    event_connection_2 = local_player_5_ref_10
                end
                local local_player_5_ref_10 = event_connection_2
                event_connection_2 = v75
                character = event_connection_2.billboardWidth
                local_player_5_ref_2 = character
                character = v72
                char_fn = v75
                event_connection_2 = character(char_fn)
                character = v74
                char_fn = event_connection_2
                ui_node = "_ESPBillboard"
event_connection_2 = character:FindFirstChild(ui_node)
                local local_player_5_ref_11 = event_connection_2
                ui_node_3 = local_player_5_ref_11
                ui_node_2 = not ui_node_3
                if not ui_node_2 then
                    local_player_5_ref_11_ref = local_player_5_ref_11
                    local_player_5_ref = "BillboardGui"
local_player_5_ref_11_ref = local_player_5_ref_11_ref:IsA(local_player_5_ref)
                    ui_node_4 = not local_player_5_ref_11_ref
                    if not ui_node_4 then
                        text_label = local_player_5_ref_11
                        r26_value = 24603844242625
                        local_player_5_ref = text_label.Parent
                        local_player_5_ref_11_ref = not local_player_5_ref
                        if not local_player_5_ref_11_ref then
                            text_label = v49
                            local_player_5_ref_20 = v74
                            local_player_5_ref = text_label[local_player_5_ref_20]
                            local_player_5_ref_11_ref = local_player_5_ref ~= char_fn
                            ui_node_4 = local_player_5_ref_11_ref
                        end
                        ui_node_2 = ui_node_4
                    end
                    character = 3650687
                    event_connection_2 = ui_node_2
                end
                ui_node_2 = event_connection_2
                if ui_node_2 then
                    local_player_5_ref_11_ref = function(arg1)
                            local character, event_connection_2
                            if local_player_5_ref_11 then
                                character = local_player_5_ref_11
event_connection_2 = character:Destroy()
                            end
                            return
                        end
                    event_connection_2 = pcall(local_player_5_ref_11_ref)
                    character = v49
                    event_connection_2 = v74
                    local_player_5_ref_11_ref = char_fn
                    character[event_connection_2] = local_player_5_ref_11_ref
                    local_player_5_ref_11_ref = v74
                    local_player_5_ref_11_ref = "Head"
ui_node_4 = local_player_5_ref_11_ref:FindFirstChild(local_player_5_ref_11_ref)
                    if not ui_node_4 then
                        local_player_5_ref_11_ref = v74
                        local_player_5_ref = "HumanoidRootPart"
local_player_5_ref_11_ref = local_player_5_ref_11_ref:FindFirstChild(local_player_5_ref)
                        if not local_player_5_ref_11_ref then
                            local_player_5_ref_11_ref = v74
                            text_label = v0
                            local_player_5_ref_11_ref = 30116419958472
                            local_player_5_ref_20 = v1
                            local_player_5_ref = "BasePart"
local_player_5_ref_11_ref = local_player_5_ref_11_ref:FindFirstChildWhichIsA(local_player_5_ref)
                            local_player_5_ref_11_ref = local_player_5_ref_11_ref
                        end
                        event_connection_2 = local_player_5_ref_12
                    end
                    local local_player_5_ref_12 = event_connection_2
                    event_connection_2 = local_player_5_ref_12
                    if not event_connection_2 then
                    return
                    else
                        goto block_15492167
                    end
                    ::block_15492167::
                    event_connection_4 = function(arg1, arg2, arg3, arg4)
                            local character, local_player_5_ref_11_ref, ui_node_5, ui_node, remove_fn, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
                            character = v68
                            lookup = local_player_5_ref_12
                            local_player_5_ref = 30335586072366
                            character_3 = v74
                            ui_node_6 = "_ESPBillboard"
                            event_connection_3 = local_player_5_ref_2
                            remove_fn = local_player_5_ref_10
                            ui_node = v75
                            char_fn = ui_node.billboardBgTrans
                            ui_node = {character(lookup,character_3,ui_node_6,event_connection_3,remove_fn,char_fn)}
                            event_connection_2 = ui_node[1]
                            ui_node_5 = ui_node[2]
                            lookup = event_connection_2
                            character_3 = v75
                            event_connection_2 = character_3.maxDistance
                            event_connection_4 = 12313268950629
                            lookup.MaxDistance = event_connection_2
                            character = v69
                            character_3 = local_player_5_ref_9
                            event_connection_3 = v75
                            char_fn = v0
                            ui_node = v1
                            ui_node_6 = event_connection_3.textSize
                            event_connection_2 = character(ui_node_5,character_3,ui_node_6)
                            return
                        end
                    event_connection_2 = pcall(event_connection_4)
                else
character = pcall
                    local_player_5_ref_11_ref = function(arg1, arg2)
                            local character, local_player_5_ref_11_ref, ui_node_5, ui_node, text_label, remove_fn, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
                            character = local_player_5_ref_11
                            ui_node_5 = "_ESPBg"
event_connection_2 = character:FindFirstChild(ui_node_5)
                            ui_node_5 = event_connection_2
                            if ui_node_5 then
                                lookup = v75
                                event_connection_2 = lookup.billboardBgTrans
                                ui_node_5.BackgroundTransparency = event_connection_2
                            end
                            character = local_player_5_ref_11
                            character_3 = v75
                            lookup = character_3.maxDistance
                            character.MaxDistance = lookup
                            character = local_player_5_ref_11
                            remove_fn = v1
                            lookup = UDim2.fromOffset
                            ui_node_6 = local_player_5_ref_2
                            event_connection_3 = local_player_5_ref_10
                            character_3 = lookup(ui_node_6,event_connection_3)
                            character.Size = character_3
                            ui_node_6 = local_player_5_ref_9
                            event_connection_3 = {ipairs(ui_node_6)}
                            character_3 = event_connection_3[3]
                            if character_3 then
                                if ui_node_5 then
                                    local_player_5_ref_11_ref = "_ESPLine"
                                    ui_node_2 = local_player_5_ref_11_ref .. event_connection_3
ui_node = ui_node_5:FindFirstChild(ui_node_2)
                                    char_fn = ui_node
                                end
                                if char_fn then
                                    text_label = 19037937033889
                                    ui_node = remove_fn.text
                                    char_fn.Text = ui_node
                                    ui_node = remove_fn.color
                                    char_fn.TextColor3 = ui_node
                                    ui_node_2 = v75
                                    event_connection_4 = v0
                                    local_player_5_ref_11_ref = v1
                                    ui_node = ui_node_2.textSize
                                    char_fn.TextSize = ui_node
                                end
                                character = 6785264
                            end
                            return
                        end
                    event_connection_2 = character(local_player_5_ref_12)
                end
                return
            end
        end
    end
    local v73 = local_52
    local v82 = local_37
    local v83 = local_48
    local local_53 = function()
        local character, local_player_5_ref_11_ref, ui_node_5, ui_node, r26_value, text_label, remove_fn, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
        if v41 then
            return WecKlIvZhmDM
        else
            event_connection_2 = character_2
            lookup = v0
            remove_fn = 19597447717797
            character_3 = v1
            character = event_connection_2.Heartbeat
            character_4 = function(arg1, arg2, arg3, arg4, arg5)
                    local character, local_player_5_ref_11_ref, character_4, ui_node, r26_value, text_label, remove_fn, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
                    character_4 = arg1
                    event_connection_2 = 0
                    character = event_connection_2 + character_4
                    local_player_5_ref_2 = character
                    lookup = local_player_5_ref_2
                    character_3 = v18
                    event_connection_2 = lookup < character_3
                    if event_connection_2 then
                        return
                    else
                        remove_fn = v44
                        char_fn = {pairs(remove_fn)}
                        character_3 = char_fn[1]
                        ui_node_6 = char_fn[2]
                        event_connection_3 = char_fn[3]
                        while true do
                            event_connection_3,remove_fn = character_3(ui_node_6,event_connection_3)
                            if not event_connection_3 then
                                break
                            end
                            lookup = event_connection_3
                            ui_node_2 = not lookup
                            if not ui_node_2 then
                                local_player_5_ref_11_ref = lookup.Parent
                                ui_node_2 = not local_player_5_ref_11_ref
                                char_fn = ui_node_2
                            end
                            if char_fn then
                            else
                                ui_node_2 = remove_fn.showBillboard
                                if ui_node_2 then
                                    event_connection_4 = remove_fn.showHP
                                    if not event_connection_4 then
                                        event_connection_4 = remove_fn.showDist
                                        ui_node_2 = event_connection_4
                                    end
                                    char_fn = ui_node_2
                                end
                                if char_fn then
                                    ui_node = "_ESPBillboard"
char_fn = lookup:FindFirstChild(ui_node)
                                    if char_fn then
                                        event_connection_4 = "_ESPBg"
local_player_5_ref_11_ref = char_fn:FindFirstChild(event_connection_4)
                                        ui_node = local_player_5_ref_11_ref
                                    end
                                    if ui_node then
                                        local_player_5_ref_11_ref = v71(lookup,remove_fn)
                                        local_player_5_ref = {ipairs(local_player_5_ref_11_ref)}
                                        event_connection_4 = local_player_5_ref[1]
                                        local_player_5_ref_11_ref = local_player_5_ref[3]
                                        local_player_5_ref_11_ref = local_player_5_ref[2]
                                        while true do
                                            local_player_5_ref_11_ref,local_player_5_ref = event_connection_4(local_player_5_ref_11_ref,local_player_5_ref_11_ref)
                                            if not local_player_5_ref_11_ref then
                                                break
                                            end
                                            ui_node_2 = local_player_5_ref_11_ref
                                            local_player_5_ref_18 = "_ESPLine"
                                            local_player_5_ref_20 = local_player_5_ref_18 .. ui_node_2
text_label = ui_node:FindFirstChild(local_player_5_ref_20)
                                            if text_label then
                                                math_lib_9 = 10941832156135
                                                local_player_5_ref_11_ref = v0
                                                local_player_5_ref_11_ref = v1
                                                local_player_5_ref_18 = local_player_5_ref.text
                                                text_label.Text = local_player_5_ref_18
                                            end
                                            local_player_5_ref = nil
                                            text_label = nil
                                            ui_node_2 = nil
                                        end
                                        local_player_5_ref_11_ref = nil
                                    end
                                    char_fn = nil
                                    ui_node = nil
                                end
                            end
                            remove_fn = nil
                        end
                        event_connection_2 = {}
                        lookup = v83
                        character = nOE8oH6OtxwNW
                        character_4 = nil
                        character_3 = lookup()
                        return
                    end
                end
            event_connection_2 = character[event_connection_2]
            event_connection_2 = event_connection_2(character,character_4)
            return
        end
    end
    local local_54 = function(arg1, arg2, arg3, arg4)
        local character, local_player_5_ref_11_ref, local_4, character_4, ui_node, local_25, r26_value, text_label, remove_fn, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
        if v40 then
            return
        else
            event_connection_2 = character_2
            lookup = v0
            character_3 = v1
            remove_fn = 2277213832228
            character = event_connection_2.Heartbeat
            event_connection_2 = character.Connect
            character_4 = function(arg1, arg2, arg3)
                    local character, local_player_5_ref_11_ref, local_4, character_4, ui_node, local_25, r26_value, text_label, remove_fn, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
                    character_4 = arg1
                    event_connection_2 = 0
                    character = event_connection_2 + character_4
                    local_player_5_ref_2 = character
                    lookup = local_player_5_ref_2
                    character_3 = 0.5
                    event_connection_2 = lookup < character_3
                    if event_connection_2 then
                        return ViPbjcQkqAjQc
                    else
                        remove_fn = v44
                        char_fn = {pairs(remove_fn)}
                        character_3 = char_fn[1]
                        event_connection_3 = char_fn[3]
                        ui_node_6 = char_fn[2]
                        while true do
                            event_connection_3,remove_fn = character_3(ui_node_6,event_connection_3)
                            if not event_connection_3 then
                                break
                            end
                            lookup = event_connection_3
                            if lookup then
                                ui_node_2 = lookup.Parent
                                char_fn = ui_node_2
                            end
                            if char_fn then
                                ui_node = "_ESPHighlight"
char_fn = lookup:FindFirstChild(ui_node)
                                local_player_5_ref_11_ref = not char_fn
                                if not local_player_5_ref_11_ref then
                                    local_player_5_ref = "Highlight"
local_player_5_ref_11_ref = char_fn:IsA(local_player_5_ref)
                                    local_player_5_ref_11_ref = not local_player_5_ref_11_ref
                                    if not local_player_5_ref_11_ref then
                                        text_label = char_fn.Parent
                                        local_player_5_ref = not text_label
                                        if not local_player_5_ref then
                                            local_player_5_ref_18 = char_fn.FillColor
                                            local_player_5_ref_13_ref_ref = remove_fn.fillColor
                                            local_player_5_ref_20 = local_player_5_ref_18 ~= local_player_5_ref_13_ref_ref
                                            if not local_player_5_ref_20 then
                                                local_player_5_ref_18 = 8346927
                                                local_player_5_ref_11_ref = char_fn.OutlineColor
                                                local_player_5_ref_11_ref = remove_fn.outlineColor
                                                local_player_5_ref_13_ref_ref = local_player_5_ref_11_ref ~= local_player_5_ref_11_ref
                                                if not local_player_5_ref_13_ref_ref then
                                                    local_player_5_ref_11_ref = 26889335861481
                                                    local_player_5_ref_11_ref = char_fn.FillTransparency
                                                    local_9 = v0
                                                    math_lib_9 = v1
                                                    local_player_5_ref_11_ref = remove_fn.fillTrans
                                                    local_player_5_ref_13_ref_ref = local_player_5_ref_11_ref ~= local_player_5_ref_11_ref
                                                    local_player_5_ref_20 = local_player_5_ref_13_ref_ref
                                                end
                                                local_player_5_ref = local_player_5_ref_20
                                            end
                                            local_player_5_ref_11_ref = local_player_5_ref
                                        end
                                        local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                    end
                                    ui_node = local_player_5_ref_11_ref
                                end
                                if ui_node then
                                    local_player_5_ref_20 = 28198774387531
                                    ui_node_2 = v70
                                    local_player_5_ref_11_ref = v0
                                    local_player_5_ref_11_ref = v1
                                    event_connection_4 = "_ESPHighlight"
                                    local_player_5_ref_11_ref = ui_node_2(lookup,event_connection_4,remove_fn)
                                end
                                char_fn = nil
                                ui_node = nil
                            end
                            character = 10633927
                            lookup = nil
                            remove_fn = nil
                        end
                        return
                    end
                end
            event_connection_2 = event_connection_2(character,character_4)
            return
        end
    end
    local v84 = local_53
    local v85 = local_54
    local v86 = local_50
    local local_55 = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, ui_node, remove_fn, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        event_connection_2 = "Progress"
character = character_4:FindFirstChild(event_connection_2)
        lookup = character
        if not lookup then
            return character
        else
            ui_node_6 = "NumberValue"
character_3 = lookup:IsA(ui_node_6)
            if not character_3 then
                event_connection_3 = v0
                ui_node_6 = "IntValue"
character_3 = lookup:IsA(ui_node_6)
                event_connection_2 = character_3
            end
            if event_connection_2 then
                character_3 = v0
                event_connection_2 = character_3[event_connection_3]
                character = lookup[event_connection_2]
                return character
            else
                ui_node_6 = "NumberValue"
character_3 = lookup:FindFirstChildWhichIsA(ui_node_6)
                if not character_3 then
                    remove_fn = "IntValue"
event_connection_3 = lookup:FindFirstChildWhichIsA(remove_fn)
                    if not event_connection_3 then
                        remove_fn = "ValueBase"
event_connection_3 = lookup:FindFirstChildWhichIsA(remove_fn)
                        character_3 = event_connection_3
                    end
                    event_connection_2 = character_3
                end
                character_3 = event_connection_2
                if character_3 then
                    ui_node = v0
                    local_player_5_ref_11_ref = 24637057264848
                    ui_node_2 = v1
                    remove_fn = character_3.Value
                    ui_node_6 = remove_fn
                end
                character = rxByCVIAK1ef
                event_connection_3 = nil
                event_connection_2 = ui_node_6 or event_connection_3
                event_connection_2 = {event_connection_2}
                return "7\019\131\195[Y"
            end
        end
    end
    local v88 = local_38
    local local_56 = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, local_player_5_ref_11_ref, character_4, ui_node, remove_fn, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        local v90 = arg1
        local v91 = arg2
        character = v88
        character_3 = v90
        event_connection_2 = character(character_3)
        character = v90
        ui_node_6 = v0
        character_3 = "Humanoid"
event_connection_2 = character:FindFirstChildWhichIsA(character_3)
        character_3 = event_connection_2
        if not character_3 then
            return
        else
            ui_node_2 = 25296887000579
            character = nil
            remove_fn = v1
            event_connection_3 = function(arg1, arg2, arg3, arg4, arg5)
                    local character, local_player_5_ref_11_ref, character_4, ui_node, remove_fn, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
                    character = v82
                    character_4 = v90
                    event_connection_2 = character(character_4)
                    character = v42
                    event_connection_2 = v90
                    character_4 = v91
                    character[event_connection_2] = character_4
event_connection_2 = character:Disconnect()
                    event_connection_2 = v39
                    character_4 = v90
                    if event_connection_2[character_4] then
                        event_connection_3 = 24762546040074
                    end
                    character = v63
                    character_4 = v90
                    event_connection_2 = character(character_4)
                    character_4 = event_connection_2
                    if not character_4 then
                        character = v88
                        lookup = v90
                        event_connection_2 = character(lookup)
                        return
                    else
                        character_3 = v0
                        ui_node_6 = v1
                        char_fn = 26842271019219
                        event_connection_2 = character_3[event_connection_3]
                        character = character_4[event_connection_2]
                        character_3 = function(arg1)
                                    local character, local_player_5_ref_11_ref, character_4, ui_node, remove_fn, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, character_3
event_connection_2 = character:Disconnect()
                                    character_4 = arg1
                                    character = v88
                                    lookup = v90
                                    event_connection_2 = character(lookup)
                                    character_3 = v0
                                    lookup = character_3[event_connection_3]
                                    character = task[lookup]
                                    lookup = .1
                                    event_connection_2 = character(lookup)
                                    event_connection_2 = v44
                                    if event_connection_2[character_4] then
                                        return
                                    else
                                        if character_4 then
                                            character_3 = character
                                            ui_node_6 = character_4.Parent
                                            if ui_node_6 then
                                                remove_fn = v61(character_4)
                                                ui_node_6 = not remove_fn
                                                lookup = ui_node_6
                                            end
                                            event_connection_2 = lookup
                                        end
                                        if event_connection_2 then
                                            character = v73
                                            lookup = v91
                                            event_connection_2 = character(character_4,lookup)
                                            character = v44
                                            event_connection_2 = v91
                                            character[character_4] = event_connection_2
                                            character = v89
                                            lookup = v91
                                            event_connection_2 = character(character_4,lookup)
                                        end
                                        return
                                    end
                                end
event_connection_2 = character:Connect(character_3)
                        local local_player_5_ref_14 = event_connection_2
                        character_3 = v39
                        ui_node_6 = v90
                        if character_3[ui_node_6] then
                            character_3 = v39
                            ui_node_6 = v90
                            character = character_3[ui_node_6]
                            ui_node_6 = local_player_5_ref_14
                            character.respawn = ui_node_6
                        else
                            character = v39
                            character_3 = v90
                            event_connection_3 = "died"
                            remove_fn = nil
                            ui_node = local_player_5_ref_14
                            ui_node_6 = {died = remove_fn,respawn = ui_node}
                            character[character_3] = ui_node_6
                        end
                        return
                    end
                end
            character = character_3[event_connection_2]
event_connection_2 = character:Connect(event_connection_3)
            local local_player_5_ref_15 = event_connection_2
            character = v39
            event_connection_3 = v90
            character_4 = v90
            event_connection_2 = {}
            ui_node = local_player_5_ref_15
            lookup = v91
            local_player_5_ref = 22743696173406
            ui_node_6 = local_player_5_ref_15
            character_3 = nil
            event_connection_4 = v1
            local_player_5_ref_11_ref = nil
            remove_fn = {died = ui_node, respawn = local_player_5_ref_11_ref}
            character[event_connection_3] = remove_fn
            return
        end
    end
    local v89 = local_56
    local local_57 = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, remove_fn, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        local v94 = arg2
        event_connection_2 = v50
        if event_connection_2[character_4] then
            character_3 = v50
            event_connection_2 = character_3[character_4]
            character = event_connection_2.add
event_connection_2 = character:Disconnect()
            character_3 = v50
            event_connection_2 = character_3[character_4]
            ui_node = 2638463222988
            character = event_connection_2.rem
event_connection_2 = character:Disconnect()
        end
        event_connection_2 = v62(character_4)
        character_3 = event_connection_2
        if not character_3 then
            return
        else
            remove_fn = {character_3.GetChildren(character_3)}
            char_fn = {ipairs(unpack_fn(remove_fn))}
            event_connection_2 = char_fn[1]
            event_connection_3 = char_fn[3]
            ui_node_6 = char_fn[2]
            remove_fn = event_connection_2
            while true do
                event_connection_3,ui_node = remove_fn(ui_node_6,event_connection_3)
                if not event_connection_3 then
                    break
                end
                ui_node_2 = v82(ui_node)
            end
            char_fn = {character_3.GetChildren(character_3)}
            ui_node = {ipairs(unpack_fn(char_fn))}
            remove_fn = ui_node[3]
            if remove_fn then
                local_player_5_ref_20 = 14701600037565
                event_connection_4 = "Model"
local_player_5_ref_11_ref = ui_node:IsA(event_connection_4)
                if local_player_5_ref_11_ref then
                    local_player_5_ref_11_ref = v61(ui_node)
                    local_player_5_ref_11_ref = not local_player_5_ref_11_ref
                    ui_node_2 = local_player_5_ref_11_ref
                end
                if ui_node_2 then
                    character = v73
                    local_player_5_ref_11_ref = v94
                    ui_node_2 = character(ui_node,local_player_5_ref_11_ref)
                    character = v44
                    ui_node_2 = v94
                    character[ui_node] = ui_node_2
                    character = v89
                    local_player_5_ref_11_ref = v94
                    ui_node_2 = character(ui_node,local_player_5_ref_11_ref)
                end
            end
            ui_node_2 = 27533178171925
            remove_fn = v1
            character = character_3.ChildAdded
            event_connection_3 = function(arg1, arg2, arg3, arg4, arg5, arg6)
                    local character, character_4, ui_node, remove_fn, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, character_3
                    character_3 = v0
                    character_4 = arg1
                    lookup = character_3[event_connection_3]
event_connection_2 = character_4:IsA(lookup)
                    if not event_connection_2 then
                        return
                    else
                        event_connection_2 = v61(character_4)
                        if event_connection_2 then
                            return
                        else
                            character = v73
                            lookup = v94
                            event_connection_2 = character(character_4,lookup)
                            character = v44
                            event_connection_2 = v94
                            character[character_4] = event_connection_2
                            character = v89
                            lookup = v94
                            event_connection_2 = character(character_4,lookup)
                            character_3 = v94
                            lookup = character_3.showHP
                            if not lookup then
                                character_3 = v94
                                character = 11821482
                                lookup = character_3.showDist
                                event_connection_2 = lookup
                            end
                            if event_connection_2 then
                                event_connection_2 = v84()
                            end
                            return
                        end
                    end
                end
            ui_node_6 = character.Connect
            ui_node_7 = function(arg1)
                    local character, character_4, event_connection_2
                    character = v82
                    character_4 = arg1
                    event_connection_2 = character(character_4)
                    event_connection_2 = v88(character_4)
                    event_connection_2 = v83()
                    return
                end
            character = character_3.ChildRemoved
event_connection_3 = character:Connect(ui_node_7)
            character = v50
            ui_node_7 = {add = ui_node_6, rem = event_connection_3}
            character[character_4] = ui_node_7
            ui_node = v94
            char_fn = ui_node.showHP
            if not char_fn then
                local_player_5_ref = 30416833410899
                ui_node = v94
                local_player_5_ref_11_ref = v0
                event_connection_4 = v1
                char_fn = ui_node.showDist
                ui_node_7 = char_fn
            end
            if ui_node_7 then
                ui_node_7 = v84()
            end
            character = v85
            character_4 = nil
            event_connection_3 = nil
            lookup = v94
            character_3 = nil
            ui_node_7 = character()
            return
        end
    end
    hN[18] = 2562577417385
    local local_58 = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        lookup = function(arg1, arg2, arg3, arg4)
                local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
                character = v96
                character_4 = "_GENHighlight"
event_connection_2 = character:FindFirstChild(character_4)
                character_4 = event_connection_2
                if character_4 then
character = character_4:Destroy()
                end
                character = v96
                character_3 = v0
                ui_node_6 = v1
                char_fn = 21465963423499
                lookup = character_3["\195\162\194\133\195\162<\194\167\194\139\195\129\195\167(\195\131\026d\194\131"]
event_connection_2 = character:FindFirstChild(lookup)
                lookup = event_connection_2
                if lookup then
character = lookup:Destroy()
                end
                return
            end
        local v96 = arg1
        character_4 = v96
        event_connection_2 = pcall(lookup)
        return
    end
    local local_59 = function(arg1)
        local character, character_4, ui_node, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        event_connection_2 = v50
        character_4 = arg1
        if event_connection_2[character_4] then
            lookup = v50
            event_connection_2 = lookup[character_4]
            character_3 = v0
            lookup = character_3["\195\162\194\133\195\162<\194\167\194\139\195\129\195\167(\195\131\026d\194\131"]
            character = event_connection_2[lookup]
event_connection_2 = character:Disconnect()
            lookup = v50
            char_fn = 23376197921413
            event_connection_2 = lookup[character_4]
            character_3 = v0
            lookup = character_3["\195\162\194\133\195\162<\194\167\194\139\195\129\195\167(\195\131\026d\194\131"]
            character = event_connection_2[lookup]
event_connection_2 = character:Disconnect()
        end
        event_connection_2 = v62(character_4)
        lookup = event_connection_2
        if lookup then
            event_connection_3 = {lookup.GetChildren(lookup)}
            ui_node_7 = {ipairs(unpack_fn(event_connection_3))}
            character_3 = ui_node_7[2]
            ui_node_6 = ui_node_7[3]
            event_connection_2 = ui_node_7[1]
            event_connection_3 = event_connection_2
            while true do
                ui_node_6,char_fn = event_connection_3(character_3,ui_node_6)
                if not ui_node_6 then
                    break
                end
                ui_node = v82(char_fn)
                character = v88
                ui_node_7 = nil
                ui_node = character(char_fn)
            end
        end
        character_3 = v83()
        event_connection_3 = v50
        ui_node_6 = next(event_connection_3)
        if not ui_node_6 then
            character_3 = v86()
        end
        return
    end
    local v95 = local_57
    local v97 = local_59
    local v98 = local_51
    local local_60 = function(arg1, arg2)
        local character, local_player_5_ref_11_ref, character_4, ui_node, ui_node_7, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        event_connection_2 = v99
        character = {}
        character_4 = event_connection_2()
        lookup = character
        if not character_4 then
            return "killerSet"
        else
            event_connection_3 = {character_4.GetChildren(character_4)}
            ui_node_7 = {ipairs(unpack_fn(event_connection_3))}
            character_3 = ui_node_7[2]
            event_connection_2 = ui_node_7[1]
            ui_node_6 = ui_node_7[3]
            event_connection_3 = event_connection_2
            while true do
                ui_node_6,char_fn = event_connection_3(character_3,ui_node_6)
                if not ui_node_6 then
                    break
                end
                ui_node = char_fn.Name
                ui_node_2 = "Generator"
                if ui_node == ui_node_2 then
                    local_player_5_ref_11_ref = v0
                    local_player_5_ref = 33400003394753
                    event_connection_4 = v1
                    ui_node = table.insert(lookup,char_fn)
                end
                ui_node_7 = nil
                char_fn = nil
            end
            event_connection_2 = {lookup}
            return "killerSet"
        end
    end
    local v99 = local_36
    local v100 = local_60
    local local_61 = function(arg1, arg2, arg3)
        local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        lookup = arg2
        character = {}
        character_4 = arg1
        character_3 = character
        if lookup.showLabel then
            character = table.insert
            ui_node = lookup.labelColor
            ui_node_6 = {text = "Generator",color = ui_node}
            event_connection_2 = character(character_3,ui_node_6)
        end
        if lookup.showProgress then
            event_connection_2 = v101(character_4)
            ui_node_6 = event_connection_2
            event_connection_2 = nil
            if ui_node_6 ~= event_connection_2 then
                character = table.insert
                ui_node = "Progress: "
                local_player_5_ref_11_ref = math.floor(ui_node_6)
                char_fn = ui_node .. local_player_5_ref_11_ref
                ui_node_2 = lookup.progressColor
                event_connection_3 = {text = char_fn, color = ui_node_2}
                event_connection_2 = character(character_3,event_connection_3)
            end
        end
        if lookup.showDist then
            event_connection_2 = "BasePart"
character = character_4:FindFirstChildWhichIsA(event_connection_2)
            ui_node_6 = character
            if ui_node_6 then
                character = v66
                event_connection_3 = ui_node_6.Position
                event_connection_2 = character(event_connection_3)
                event_connection_3 = event_connection_2
                if event_connection_3 then
                    character = table.insert
                    ui_node_2 = " studs"
                    ui_node = event_connection_3 .. ui_node_2
                    local_player_5_ref_11_ref = v0
                    local_player_5_ref_20 = 30767999580151
                    local_player_5_ref_11_ref = v1
                    local_player_5_ref_11_ref = lookup.distColor
                    ui_node_7 = {text = ui_node, color = local_player_5_ref_11_ref}
                    event_connection_2 = character(character_3,ui_node_7)
                end
                event_connection_3 = nil
            end
            ui_node_6 = nil
        end
        character = eKHjX0r1C1bcO
        event_connection_2 = {character_3}
        return "FindFirstChild"
    end
    local v102 = local_61
    local local_62 = function()
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        ui_node_6 = {v100()}
        character_3 = {ipairs(unpack_fn(ui_node_6))}
        character_4 = character_3[2]
        event_connection_2 = character_3[1]
        lookup = character_3[3]
        character_3 = event_connection_2
        while true do
            lookup,event_connection_3 = character_3(character_4,lookup)
            if not lookup then
                break
            end
            ui_node_7 = v103(event_connection_3)
            ui_node_6 = nil
            event_connection_3 = nil
        end
        return
    end
    local v104 = local_62
    local ret_reg = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, ui_node, r26_value, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, event_connection_4, character_3
        local v106 = arg1
        local v107 = arg2
        ui_node_6 = v106
        character_3 = not ui_node_6
        if not character_3 then
            event_connection_4 = 11261930230908
            ui_node_2 = local_player_5_ref_19(v113,event_connection_4)
            event_connection_2 = local_player_5_ref_17
        end
        if event_connection_2 then
            return
        else
            character = v70
            character_3 = v106
            ui_node_6 = "_GENHighlight"
            event_connection_3 = v107
            event_connection_2 = character(character_3,ui_node_6,event_connection_3)
            character_3 = v107
            event_connection_2 = character_3.showBillboard
            if not event_connection_2 then
                character = v106
                character_3 = "_GENBillboard"
event_connection_2 = character:FindFirstChild(character_3)
                local local_player_5_ref_16 = event_connection_2
                if event_connection_2 then
                    ui_node_6 = function(arg1, arg2, arg3, arg4, arg5)
                            local character, event_connection_2
                            character = local_player_5_ref_16
event_connection_2 = character:Destroy()
                            return
                        end
                    event_connection_2 = pcall(ui_node_6)
                end
                return
            else
                character = v102
                character_3 = v106
                ui_node_6 = v107
                event_connection_2 = character(local_player_5_ref_16,ui_node_6)
                local local_player_5_ref_17 = event_connection_2
                ui_node_6 = v107
                event_connection_2 = ui_node_6.textSize
                ui_node_6 = 4
                character = event_connection_2 + ui_node_6
                ui_node_2 = v107
                ui_node_6 = character
                ui_node = ui_node_2.billboardHeight
                ui_node_2 = 0
                char_fn = ui_node > ui_node_2
                if char_fn then
                    ui_node = v107
                    char_fn = ui_node.billboardHeight
                    event_connection_3 = char_fn
                end
                if not event_connection_3 then
                    char_fn = local_player_5_ref_19.max
                    ui_node_2 = 1
                    ui_node = char_fn(ui_node_2,v113)
                    char_fn = 6
                    event_connection_3 = local_player_5_ref_2 + char_fn
                    event_connection_2 = local_player_5_ref_18
                end
                local_player_5_ref_18 = event_connection_2
                event_connection_2 = v107
                character = event_connection_2.billboardWidth
                local_player_5_ref_2 = character
                character = v72
                char_fn = v107
                event_connection_2 = character(char_fn)
                char_fn = event_connection_2
                character = v106
                ui_node = "_GENBillboard"
event_connection_2 = character:FindFirstChild(ui_node)
                local local_player_5_ref_19 = event_connection_2
                local_player_5_ref_11_ref = local_player_5_ref_19
                ui_node_2 = not local_player_5_ref_11_ref
                if not ui_node_2 then
                    local_player_5_ref_11_ref = local_player_5_ref_19
                    local_player_5_ref = "BillboardGui"
local_player_5_ref_11_ref = local_player_5_ref_11_ref:IsA(local_player_5_ref)
                    event_connection_4 = not local_player_5_ref_11_ref
                    if not event_connection_4 then
                        r26_value = 32408963939059
                        text_label = local_player_5_ref_19
                        local_player_5_ref_13_ref_ref = v1
                        local_player_5_ref = text_label.Parent
                        local_player_5_ref_11_ref = not local_player_5_ref
                        if not local_player_5_ref_11_ref then
                            text_label = v48
                            local_player_5_ref_20 = v106
                            local_player_5_ref = text_label[local_player_5_ref_20]
                            local_player_5_ref_11_ref = local_player_5_ref ~= char_fn
                            event_connection_4 = local_player_5_ref_11_ref
                        end
                        ui_node_2 = event_connection_4
                    end
                    event_connection_2 = ui_node_2
                end
                local_player_5_ref_11_ref = v106
                ui_node_2 = event_connection_2
                local_player_5_ref_11_ref = "HumanoidRootPart"
event_connection_4 = local_player_5_ref_11_ref:FindFirstChild(local_player_5_ref_11_ref)
                if not event_connection_4 then
                    local_player_5_ref_11_ref = v106
                    local_player_5_ref_11_ref = v0
                    local_player_5_ref = v1
                    local_player_5_ref_18 = 21182485603975
                    local_player_5_ref_11_ref = "BasePart"
event_connection_4 = v113:FindFirstChildWhichIsA(local_player_5_ref_11_ref)
                end
                character = ui_node_2 and 14992990 or 7793187
                if ui_node_2 then
                    event_connection_4 = function(arg1, arg2, arg3, arg4, arg5)
                            local character, event_connection_2
                            if local_player_5_ref_19 then
                                character = local_player_5_ref_19
event_connection_2 = character:Destroy()
                            end
                            return
                        end
                    event_connection_4 = char_fn
                    character = v48
                    event_connection_2 = v106
                    character[event_connection_2] = event_connection_4
                    event_connection_2 = v113
                    if not event_connection_2 then
                    return BDAfqrVjAhaOOP
                    else
                        goto block_1245555
                    end
                    ::block_1245555::
character = pcall
                    event_connection_4 = function()
                            local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
                            character = v68
                            lookup = v113
                            character_3 = v106
                            text_label = 22174451755093
                            ui_node_6 = "_GENBillboard"
                            event_connection_3 = local_player_5_ref_2
                            ui_node_7 = local_player_5_ref_18
                            ui_node = v107
                            char_fn = ui_node.billboardBgTrans
                            ui_node = Vector3.new
                            event_connection_4 = 4
                            local_player_5_ref_11_ref = 0
                            local_player_5_ref_11_ref = 0
                            ui_node_2 = {ui_node(local_player_5_ref_11_ref,event_connection_4,local_player_5_ref_11_ref)}
                            ui_node = {character(lookup,character_3,ui_node_6,event_connection_3,ui_node_7,char_fn,unpack_fn(ui_node_2))}
                            event_connection_2 = ui_node[1]
                            event_connection_4 = 30788326766592
                            character_4 = ui_node[2]
                            lookup = event_connection_2
                            character_3 = v107
                            event_connection_2 = character_3.maxDistance
                            lookup.MaxDistance = event_connection_2
                            character = v69
                            character_3 = local_player_5_ref_17
                            event_connection_3 = v107
                            char_fn = v0
                            lookup = nil
                            ui_node = v1
                            ui_node_6 = event_connection_3.textSize
                            event_connection_2 = character(character_4,character_3,ui_node_6)
                            return
                        end
                    event_connection_2 = character(event_connection_4)
                else
                    event_connection_4 = function()
                            local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
                            character = local_player_5_ref_19
                            character_4 = "_ESPBg"
event_connection_2 = character:FindFirstChild(character_4)
                            character_4 = event_connection_2
                            if character_4 then
                                lookup = v107
                                event_connection_2 = lookup.billboardBgTrans
                                character_4.BackgroundTransparency = event_connection_2
                            end
                            character = local_player_5_ref_19
                            character_3 = v107
                            lookup = character_3.maxDistance
                            character.MaxDistance = lookup
                            character = local_player_5_ref_19
                            ui_node_7 = v1
                            lookup = UDim2.fromOffset
                            ui_node_6 = local_player_5_ref_2
                            event_connection_3 = local_player_5_ref_18
                            character_3 = lookup(ui_node_6,event_connection_3)
                            character.Size = character_3
                            ui_node_6 = local_player_5_ref_17
                            event_connection_3 = {ipairs(ui_node_6)}
                            character_3 = event_connection_3[3]
                            if character_3 then
                                if character_4 then
                                    local_player_5_ref_11_ref = "_ESPLine"
                                    ui_node_2 = local_player_5_ref_11_ref .. event_connection_3
ui_node = character_4:FindFirstChild(ui_node_2)
                                    char_fn = ui_node
                                end
                                if char_fn then
                                    text_label = 25632908226208
                                    ui_node = ui_node_7.text
                                    char_fn.Text = ui_node
                                    ui_node = ui_node_7.color
                                    char_fn.TextColor3 = ui_node
                                    ui_node_2 = v107
                                    event_connection_4 = v0
                                    local_player_5_ref_11_ref = v1
                                    ui_node = ui_node_2.textSize
                                    char_fn.TextSize = ui_node
                                end
                            end
                            return
                        end
                end
                return
            end
        end
    end
    local local_12 = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        ui_node_6 = {v100()}
        character_3 = {ipairs(unpack_fn(ui_node_6))}
        event_connection_2 = character_3[1]
        lookup = character_3[3]
        character_4 = character_3[2]
        character_3 = event_connection_2
        while true do
            lookup,event_connection_3 = character_3(character_4,lookup)
            if not lookup then
                break
            end
            ui_node_7 = nil
            ui_node_6 = nil
            event_connection_3 = nil
        end
        return
    end
    local v114 = ret_reg
    ret_reg = .15
    local v105 = ret_reg
    local local_19 = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, ui_node, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, character_3
        if v45 then
event_connection_2 = character:Disconnect()
        end
        ui_node_7 = 10154852029048
        event_connection_2 = character_2
        lookup = v0
        character_3 = v1
        character = event_connection_2.Heartbeat
        character_4 = function(arg1, arg2)
                local character, local_player_5_ref_11_ref, character_4, ui_node, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, character_3
                event_connection_2 = local_player_5_ref_2
                character_4 = arg1
                character = event_connection_2 + character_4
                local_player_5_ref_2 = character
                lookup = local_player_5_ref_2
                character_3 = v105
                event_connection_2 = lookup < character_3
                if event_connection_2 then
                    return
                else
                    character_3 = false
                    lookup = not character_3
                    if lookup then
character_3 = lookup:Disconnect()
                        return
                    else
                        ui_node = {v100()}
                        char_fn = {ipairs(unpack_fn(ui_node))}
                        event_connection_3 = char_fn[2]
                        ui_node_7 = char_fn[3]
                        ui_node_6 = char_fn[1]
                        if ui_node_7 then
                            ui_node = v114
                            local_player_5_ref_11_ref = v53
                            character_3 = nil
                            ui_node_2 = ui_node(char_fn,local_player_5_ref_11_ref)
                        end
                        return
                    end
                end
            end
event_connection_2 = character:Connect(character_4)
        character = env["1JUjXvaELUUrV"]
        return
    end
    local v115 = local_19
    local v116 = local_12
    local v14 = nil
    local_12 = {}
    local v16 = local_12
    hN[5] = v0
    hN[6] = v1
    hN[7] = hN[6](hN[8],hN[9])
    hN[4] = hN[5][hN[7]]
    hN[7] = "Color3"
    hN[6] = env[hN[7]]
    hN[8] = v0
    hN[9] = v1
    hN[10] = hN[9](hN[11],hN[12])
    hN[11] = 20971972568613
    hN[7] = hN[8][hN[10]]
    hN[9] = 128
    hN[10] = "\230z\011z\250a '_\237-\021"
    hN[8] = 255
    hN[5] = hN[6][hN[7]]
    hN[7] = 0
    hN[6] = hN[5](hN[7],hN[8],hN[9])
    hN[7] = v0
    hN[8] = v1
    hN[9] = hN[8](hN[10],hN[11])
    hN[5] = hN[7][hN[9]]
    hN[9] = "Color3"
    hN[8] = env[hN[9]]
    hN[10] = v0
    hN[11] = v1
    hN[12] = hN[11](hN[13],hN[14])
    hN[13] = 4940564089084
    hN[11] = 255
    hN[9] = hN[10][hN[12]]
    hN[7] = hN[8][hN[9]]
    hN[9] = 255
    hN[10] = 255
    hN[8] = hN[7](hN[9],hN[10],hN[11])
    hN[12] = "\247\206\144s\134\222:3\233"
    hN[9] = v0
    hN[10] = v1
    hN[11] = hN[10](hN[12],hN[13])
    hN[7] = hN[9][hN[11]]
    hN[9] = .3
    local_12 = {[hN[4]] = hN[6], [hN[5]] = hN[8], [hN[7]] = hN[9]}
    hN[5] = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        character_4 = v99()
        character = {}
        lookup = character
        if not character_4 then
            return "killerSet"
        else
            event_connection_3 = {character_4.GetChildren(character_4)}
            ui_node_7 = {ipairs(unpack_fn(event_connection_3))}
            character_3 = ui_node_7[2]
            event_connection_2 = ui_node_7[1]
            event_connection_3 = event_connection_2
            ui_node_6 = ui_node_7[3]
            while true do
                ui_node_6,char_fn = event_connection_3(character_3,ui_node_6)
                if not ui_node_6 then
                    break
                end
                local_player_5_ref_11_ref = char_fn.Name
                event_connection_4 = "BloxyCola"
                ui_node_2 = local_player_5_ref_11_ref == event_connection_4
                if not ui_node_2 then
                    local_player_5_ref_20 = 5761546226298
                    local_player_5_ref_11_ref = char_fn.Name
                    event_connection_4 = "Medkit"
                    ui_node_2 = local_player_5_ref_11_ref == event_connection_4
                    ui_node = ui_node_2
                end
                if ui_node then
                    local_player_5_ref_11_ref = v0
                    event_connection_4 = v1
                    local_player_5_ref = 19968543106130
                    ui_node = table.insert(lookup,char_fn)
                end
                char_fn = nil
                ui_node_7 = nil
            end
            character = YVYrmaokPPxWL
            event_connection_2 = {lookup}
            return YVYrmaokPPxWL
        end
    end
    local v117 = local_12
    hN[6] = function(arg1)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        local v118 = arg1
character = pcall
        lookup = function(arg1, arg2, arg3, arg4, arg5)
                local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                character = v118
                lookup = v0
                event_connection_3 = "T\201\024T\233\127&a\148\018\251L\148;"
                ui_node_7 = 33688336596295
                character_3 = v1
                character_4 = "_ITEMHighlight"
event_connection_2 = character:FindFirstChild(character_4)
                character_4 = event_connection_2
                if character_4 then
character = character_4:Destroy()
                end
                return
            end
        character_4 = v118
        event_connection_2 = character(lookup)
        return
    end
    local v119 = hN[5]
    hN[7] = function()
        local character, local_player_5_ref_11_ref, character_4, ui_node, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        ui_node_6 = {v119()}
        character_3 = {ipairs(unpack_fn(ui_node_6))}
        event_connection_2 = character_3[1]
        character_4 = character_3[2]
        lookup = character_3[3]
        character_3 = event_connection_2
        while true do
            lookup,event_connection_3 = character_3(character_4,lookup)
            if not lookup then
                break
            end
            ui_node_7 = v120(event_connection_3)
        end
        ui_node_6 = v16
        event_connection_3 = {pairs(ui_node_6)}
        lookup = event_connection_3[2]
        character_4 = event_connection_3[1]
        character_3 = event_connection_3[3]
        while true do
            character_3 = character_4(lookup,character_3)
            if not character_3 then
                break
            end
            ui_node_6 = character_3
            if ui_node_6 then
                local_player_5_ref_11_ref = 31430689372460
                ui_node = v0
                ui_node_2 = v1
                ui_node_7 = ui_node_6.Parent
                event_connection_3 = ui_node_7
            end
            if event_connection_3 then
                event_connection_3 = v120(ui_node_6)
            end
            event_connection_3 = nil
            ui_node_6 = nil
        end
        character = env["5UaFkxTzt5Hh"]
        return
    end
    local v121 = hN[7]
    hN[7] = 0
    local_player_5_ref_2 = hN[7]
    hN[9] = function()
        local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        if v14 then
event_connection_2 = character:Disconnect()
        end
        event_connection_2 = character_2
        ui_node_7 = 6958622756008
        lookup = v0
        character_3 = v1
        character = event_connection_2.Heartbeat
        character_4 = function(arg1, arg2, arg3, arg4)
                local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
                event_connection_2 = local_player_5_ref_2
                character_4 = arg1
                character = event_connection_2 + character_4
                local_player_5_ref_2 = character
                lookup = local_player_5_ref_2
                character_3 = .3
                event_connection_2 = lookup < character_3
                if event_connection_2 then
                    return
                else
                    character_3 = false
                    lookup = not character_3
                    if lookup then
character_3 = lookup:Disconnect()
                        return
                    else
                        ui_node = {v119()}
                        char_fn = {ipairs(unpack_fn(ui_node))}
                        ui_node_7 = char_fn[3]
                        ui_node_6 = char_fn[1]
                        event_connection_3 = char_fn[2]
                        if ui_node_7 then
                            ui_node = v70
                            local_player_5_ref_11_ref = v1
                            text_label = 6676500958244
                            local_player_5_ref_11_ref = "_ITEMHighlight"
                            event_connection_4 = v117
                            ui_node_2 = ui_node(char_fn,local_player_5_ref_11_ref,event_connection_4)
                            character_3 = nil
                            ui_node_2 = true
                            ui_node = v16
                            ui_node[char_fn] = ui_node_2
                            char_fn = nil
                        end
                        return
                    end
                end
            end
event_connection_2 = character:Connect(character_4)
        return
    end
    local v123 = hN[9]
    hN[9] = v19
    hN[14] = "\136\000,\211F\173c\027~"
    hN[11] = v0
    hN[12] = v1
    hN[13] = hN[12](hN[14],hN[15])
    hN[10] = hN[11][hN[13]]
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[18] = "\250\145[c\135\213\177l\232%\205"
    hN[15] = v0
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[11] = "Toggle"
    hN[19] = "\231\207\244\023"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[18] = v1
    hN[20] = "\224\t\170\244}\144"
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[21] = "p\234\175\138"
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[19] = v0
    hN[22] = "\210\n\161!\183"
    hN[20] = v1
    hN[21] = hN[20](hN[22],hN[23])
    hN[18] = hN[19][hN[21]]
    hN[20] = v0
    hN[21] = v1
    hN[23] = "S?U\138"
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[21] = v0
    hN[24] = "\250\139\134x\211u\006\148"
    hN[11] = character_added_event[hN[11]]
    hN[22] = v1
    hN[23] = hN[22](hN[24],hN[25])
    hN[20] = hN[21][hN[23]]
    hN[22] = v0
    hN[23] = v1
    hN[25] = "\228\214~@\188"
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = false
    hN[24] = v0
    hN[25] = v1
    hN[26] = hN[25](hN[27],hN[28])
    hN[23] = hN[24][hN[26]]
    hN[24] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = character_4
        local_player_5_ref_2 = character
        if character_4 then
            event_connection_2 = v95
            character_3 = "Killers"
            ui_node_6 = v51
            lookup = event_connection_2(character_3,ui_node_6)
        else
            event_connection_2 = v97
            ui_node_6 = v0
            ui_node = 21205049943698
            event_connection_3 = v1
            character_3 = "Killers"
            lookup = event_connection_2(character_3)
        end
        return
    end
    hN[12] = {[hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18], [hN[19]] = hN[20],[hN[21]] = hN[22], [hN[23]] = hN[24]}
    hN[17] = "d\205\\\137\162"
    hN[15] = 9433213243688
    hN[11] = hN[11](character_added_event,hN[12])
    hN[9][hN[10]] = hN[11]
    hN[19] = 11653586081074
    hN[9] = v19
    hN[20] = 19588065289121
    hN[11] = v0
    hN[14] = "\185\172\209t\191\165c\253\241\220\185"
    hN[25] = 18508662071722
    hN[12] = v1
    hN[13] = hN[12](hN[14],hN[15])
    hN[27] = "\215\252\227\162\206\025'\153"
    hN[18] = 29959102772862
    hN[10] = hN[11][hN[13]]
    hN[24] = 390675972277
    hN[14] = v0
    hN[15] = v1
    hN[26] = 8254545678083
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[23] = 5375665752519
    hN[15] = v0
    hN[18] = "\224\txN\210\128\1353\211hU\158Q"
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\243\242\136\155"
    hN[21] = 24394266831967
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[20] = "P\226^\147&\019"
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[21] = "z\017\240\229"
    hN[22] = 13568097982638
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[28] = 34361105563264
    hN[19] = v0
    hN[22] = "\012\205b\182\001"
    hN[20] = v1
    hN[21] = hN[20](hN[22],hN[23])
    hN[18] = hN[19][hN[21]]
    hN[20] = v0
    hN[23] = "\014\189^\172"
    hN[39] = 29677165393403
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[24] = "\019\190d\227\253\221\166\130"
    hN[19] = hN[20][hN[22]]
    hN[21] = v0
    hN[22] = v1
    hN[23] = hN[22](hN[24],hN[25])
    hN[20] = hN[21][hN[23]]
    hN[25] = "hw\136\243\247"
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = false
    hN[24] = v0
    hN[25] = v1
    hN[26] = hN[25](hN[27],hN[28])
    hN[11] = "Toggle"
    hN[23] = hN[24][hN[26]]
    hN[11] = character_added_event[hN[11]]
    hN[24] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = character_4
        local_player_5_ref_2 = character
        if character_4 then
            event_connection_2 = v95
            character_3 = "Survivors"
            ui_node_6 = v52
            lookup = event_connection_2(character_3,ui_node_6)
        else
            event_connection_2 = v97
            ui_node_6 = v0
            event_connection_3 = v1
            ui_node = 14016091920766
            character_3 = "Survivors"
            lookup = event_connection_2(character_3)
        end
        return
    end
    hN[12] = {[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22], [hN[23]] = hN[24]}
    hN[26] = 18778075472424
    hN[21] = 26103899336571
    hN[18] = 10262409188010
    hN[17] = 19177782502114
    hN[15] = "*AF\008\008"
    hN[11] = hN[11](character_added_event,hN[12])
    hN[9][hN[10]] = hN[11]
    hN[16] = 19145276564179
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[20] = "9\224@\002O\195\142q\014"
    hN[16] = "\217'\158#\251o\005X\195\191"
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[9] = "Colorpicker"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[17] = "\143\143\193\180Q=\210"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v51
    hN[17] = v0
    hN[22] = 21013079008824
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[20] = 25854283476743
    hN[21] = "\157=\229\134?\016\161\016"
    hN[14] = hN[15][hN[16]]
    hN[9] = local_33[hN[9]]
    hN[16] = v0
    hN[19] = "\219\151\011\230\220\142\246\020=\021\169\143"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[16] = 0
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.fillColor = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 31174638909620
            ui_node_6 = v1
            lookup = character_3["\195\166:\194\145\021BN\195\181\012\194\163"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[20] = "Jc\140#\192$\170\227\127\1280\129"
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[9] = hN[9](local_33,hN[10])
    hN[12] = v0
    hN[17] = 2049478968250
    hN[13] = v1
    hN[15] = "\211\136\184ak"
    hN[16] = 30335772063534
    hN[14] = hN[13](hN[15],hN[16])
    hN[24] = 7041415236814
    hN[11] = hN[12][hN[14]]
    hN[21] = 9235584143564
    hN[13] = v0
    hN[16] = "\245\131\025\215\1463po\152\152X\189\194"
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[22] = 7160951442694
    hN[23] = "6\150\215"
    hN[25] = "\208Y\173\nk\211\151"
    hN[15] = v1
    hN[18] = 13801992608027
    hN[17] = "2\r\0009\245\235\148"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v51
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[14] = hN[15][hN[16]]
    hN[21] = "\239l%\016\173Bd\218"
    hN[9] = "Colorpicker"
    hN[16] = v0
    hN[19] = "%s\t\158F\024F;#Y\143\229"
    hN[20] = 21823861893042
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[9] = local_33[hN[9]]
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[16] = 0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[21] = "\186\172V"
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v51
        character_4 = arg1
        lookup = character_4
        character.outlineColor = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 13204508809220
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\194\1544\195\189\195\1623\020c\194\140\194\164\194\157\194\168q"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_33,hN[10])
    hN[17] = 2167897342961
    hN[22] = 13821483424036
    hN[12] = v0
    hN[16] = 34793450061641
    hN[15] = "|y\190\221\162"
    hN[18] = 22637722052909
    hN[20] = 29568180745672
    hN[19] = "\191\214\172\142P"
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "K\171\152\254r\2161\245\239\236\205# \140\251?2"
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "n\163;G"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[14] = .05
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[9] = "Slider"
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[21] = v1
    hN[18] = 0
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[23] = v1
    hN[20] = 1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = .3
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20],[hN[21]] = hN[22]}
    hN[18] = v0
    hN[21] = "V\151\145\211\139\213\131^"
    hN[19] = v1
    hN[9] = local_33[hN[9]]
    hN[22] = 27389581406674
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[22] = 15381099797498
    hN[18] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v51
        character_4 = arg1
        lookup = character_4
        character.fillTrans = lookup
        if local_player_5_ref_2 then
            char_fn = 19168751444702
            character = v98
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["0\012\194\157\194\152\031\194\167\194\144\re"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[20] = 34687718604568
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[9] = hN[9](local_33,hN[10])
    hN[18] = 18345484919134
    hN[16] = 10713871373181
    hN[12] = v0
    hN[13] = v1
    hN[15] = "\200\196\1694r"
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "\199}\251w2U\227+\204R\157\163pf"
    hN[11] = hN[12][hN[14]]
    hN[17] = 20671626683801
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\028C\131s"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[19] = 31387689400600
    hN[15] = v0
    hN[18] = "\219k\012"
    hN[16] = v1
    hN[9] = "Toggle"
    hN[17] = hN[16](hN[18],hN[19])
    hN[9] = local_33[hN[9]]
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "`&\128\193"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[20] = "\007u\000P\026\249\193\250"
    hN[21] = 2306389378097
    hN[23] = "+\140\016\131%\030q\250"
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[21] = "\227\151{\018%"
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[24] = 9765755703747
    hN[17] = hN[18][hN[20]]
    hN[18] = true
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[21] = 15843270597841
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.showBillboard = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 6051011169025
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\029\195\137\194\161\194\129fr\195\190?e\195\154\195\179g\195\134"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[18] = 2041277973430
    hN[9] = hN[9](local_33,hN[10])
    hN[22] = 35165818814455
    hN[17] = 21892393379794
    hN[12] = v0
    hN[20] = 23941872348044
    hN[13] = v1
    hN[15] = "\136\140]\182\171"
    hN[16] = 30778834712572
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[25] = "\234\175\206=#\234;"
    hN[14] = v1
    hN[16] = "E\025~4\018\213}m\156"
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\162\136\031\164"
    hN[23] = "?\200\1672\006L\168\004"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[24] = 10581362135871
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[28] = 30257411241737
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[18] = "j\0319\204"
    hN[16] = v1
    hN[19] = 25930234670890
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\017]\138`"
    hN[18] = hN[17](hN[19],hN[20])
    hN[20] = "\193\131\225\215\237(E\172"
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[21] = "%\178\224\253\230"
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[21] = v1
    hN[18] = true
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.showName = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 16128666197334
            lookup = character_3["r\195\190`f\195\130\194\169W\017"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[9] = "Toggle"
    hN[9] = local_33[hN[9]]
    hN[16] = 23785870945092
    hN[9] = hN[9](local_33,hN[10])
    hN[12] = v0
    hN[13] = v1
    hN[17] = 22613299996962
    hN[18] = 18296563540296
    hN[20] = "\232\217\186Eb\148\228\206s"
    hN[15] = "4\248\142\252A"
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "x3\2423\005_\016\239\160P"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[21] = 11239220892785
    hN[14] = v0
    hN[17] = "\156]\162\247Vs]"
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v51
    hN[17] = v0
    hN[18] = v1
    hN[9] = "Colorpicker"
    hN[19] = hN[18](hN[20],hN[21])
    hN[20] = 16997108637418
    hN[27] = "l\248\161\175\147\012\231\014"
    hN[16] = hN[17][hN[19]]
    hN[19] = "\020Ts\245$S\139w\240\196\027z"
    hN[14] = hN[15][hN[16]]
    hN[22] = 32118046964332
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[16] = 0
    hN[18] = v0
    hN[19] = v1
    hN[21] = "\187\000\028\127\227\211\197\r"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[24] = 15688318246025
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v51
        character_4 = arg1
        lookup = character_4
        character.nameColor = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 590812021011
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\195\190\194\170!\194\156\194\180\194\174\195\181F;"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        character_4 = nil
        character = env["13VP1lTA4SOJe1"]
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[9] = local_33[hN[9]]
    hN[15] = "\229\226\240\139\253"
    hN[19] = 35037127655355
    hN[9] = hN[9](local_33,hN[10])
    hN[16] = 24323256265790
    hN[12] = v0
    hN[20] = 16184971730288
    hN[13] = v1
    hN[17] = 30697717151702
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[23] = "\022\213\213\247\016\022\217\022"
    hN[9] = "Toggle"
    hN[13] = v0
    hN[18] = 19759563465713
    hN[14] = v1
    hN[16] = "\030\153\023\229\2548\165"
    hN[15] = hN[14](hN[16],hN[17])
    hN[21] = 2920676279632
    hN[17] = "\199~'$"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[18] = "\134\174\253\164\194"
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[19] = "(\214\202\244"
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[18] = v1
    hN[22] = 31240444950739
    hN[20] = "}\177\2377s\205\246\192"
    hN[19] = hN[18](hN[20],hN[21])
    hN[21] = "\171\011\170ez"
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = false
    hN[20] = v0
    hN[9] = local_33[hN[9]]
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v51
        character_4 = arg1
        lookup = character_4
        character.showHP = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 11437172643021
            ui_node_6 = v1
            lookup = character_3["\195\144\194\141\194\138U\194\188\195\130"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        lookup = local_player_5_ref_2
        if lookup then
            character = 13114089
            event_connection_2 = character_4
        end
        if event_connection_2 then
            event_connection_2 = v84()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18], [hN[19]] = hN[20]}
    hN[9] = hN[9](local_33,hN[10])
    hN[17] = 33637354388783
    hN[12] = v0
    hN[24] = 11016703480842
    hN[15] = "\011\253YC\204"
    hN[13] = v1
    hN[16] = 25454073949772
    hN[21] = 21048536557129
    hN[20] = "\219\203\179\150c\020\181"
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "B\200\158!\198\128\226l"
    hN[9] = "Colorpicker"
    hN[9] = local_33[hN[9]]
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[18] = 17488183828431
    hN[14] = v0
    hN[15] = v1
    hN[17] = "Y\000\219\135\007\242\006"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v51
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[20] = 20345375663362
    hN[21] = "\r\151M!\231\141\019f"
    hN[16] = hN[17][hN[19]]
    hN[23] = "9\139\1442\200\172\151J"
    hN[19] = "\141\001\150\139\157m\166\222Z\193\240\028"
    hN[26] = 19385346532163
    hN[14] = hN[15][hN[16]]
    hN[22] = 19529461801862
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[16] = 0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.hpColor = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 9102875906190
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\007Di[\195\176:\195\139"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_33,hN[10])
    hN[12] = v0
    hN[15] = "\211\158M/\188"
    hN[16] = 188360294487
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "m\1400(\130FV*2E\159\190\155"
    hN[17] = 11775845832043
    hN[13] = v0
    hN[14] = v1
    hN[18] = 19684238042062
    hN[21] = 8285736881938
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[17] = "56\183\167"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[18] = "\016\027\142I\195\168\211"
    hN[15] = v0
    hN[19] = 23192582335023
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[19] = "(\232\227+"
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[20] = 27904512029378
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[18] = v1
    hN[22] = 10621510243154
    hN[20] = "\197\237C\175X\216\234Q"
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[21] = "\203\\Ck\023"
    hN[18] = v0
    hN[19] = v1
    hN[9] = "Toggle"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[9] = local_33[hN[9]]
    hN[18] = false
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v51
        character_4 = arg1
        lookup = character_4
        character.showDist = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 27618618880572
            lookup = character_3["}\022\195\128Q^\017\195\135D"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        lookup = local_player_5_ref_2
        if lookup then
            event_connection_2 = character_4
        end
        if event_connection_2 then
            event_connection_2 = v84()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18], [hN[19]] = hN[20]}
    hN[9] = hN[9](local_33,hN[10])
    hN[12] = v0
    hN[13] = v1
    hN[9] = "Colorpicker"
    hN[15] = "\168T4\1695"
    hN[16] = 7950378339958
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[18] = 28209430901584
    hN[9] = local_33[hN[9]]
    hN[14] = v1
    hN[16] = "\161v\187\159\152\210(D\205\234\138b\"\198"
    hN[17] = 2621221831876
    hN[23] = "\134?\243"
    hN[15] = hN[14](hN[16],hN[17])
    hN[20] = "\001\220q\194m\141\145n\194"
    hN[12] = hN[13][hN[15]]
    hN[21] = 32273634622132
    hN[17] = "\215\020I\017\133\142\226"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v51
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[20] = 33318938983579
    hN[19] = "3\232\236\235\173\163\187\017\247\169\023\209"
    hN[14] = hN[15][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[21] = "\"\251\202b\171Wv\215"
    hN[15] = hN[16][hN[18]]
    hN[16] = 0
    hN[22] = 12784622278465
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v51
        character_4 = arg1
        lookup = character_4
        character.distColor = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 14319538608652
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["C(\195\154\195\176\194\133\194\151?\026r"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[18] = 30007856854677
    hN[9] = hN[9](local_33,hN[10])
    hN[15] = "\023\237\154)1"
    hN[12] = v0
    hN[16] = 15705298558097
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[17] = 28182463017795
    hN[14] = v1
    hN[16] = "\189\254\155\182M)\195\"\184/G\2200s\177w\233\019\236\024q_>\230\141"
    hN[15] = hN[14](hN[16],hN[17])
    hN[22] = 4435263555601
    hN[24] = 20277558699234
    hN[12] = hN[13][hN[15]]
    hN[17] = "\192\255H["
    hN[14] = v0
    hN[15] = v1
    hN[21] = "he\211"
    hN[16] = hN[15](hN[17],hN[18])
    hN[20] = 20932364232211
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[14] = .05
    hN[19] = "\0177d\025|"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[18] = 0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[20] = 1
    hN[21] = hN[22][hN[24]]
    hN[22] = 520900 + - 520899.5
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "\020\202\211\181U\127N!"
    hN[26] = 29649479742958
    hN[22] = 21923447384032
    hN[18] = v0
    hN[9] = "Slider"
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[9] = local_33[hN[9]]
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.billboardBgTrans = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 4546350090309
            ui_node_6 = v1
            lookup = character_3["\194\166M\"c\195\157\195\132\195\169\000M(\194\150o\194\129C\194\145\195\186"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[24] = 33333464054946
    hN[21] = "\144\182\219"
    hN[17] = 17936122273952
    hN[16] = 6268537097063
    hN[9] = hN[9](local_33,hN[10])
    hN[12] = v0
    hN[13] = v1
    hN[15] = "1Jg\245\253"
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[20] = 6456897391550
    hN[22] = 29711968105995
    hN[14] = v1
    hN[16] = "2\127Lw\229Vf\184h"
    hN[18] = 13649226012883
    hN[15] = hN[14](hN[16],hN[17])
    hN[19] = "A\182\194 >"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[17] = "H\243=("
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[14] = 1
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[9] = "Slider"
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = 8
    hN[20] = v0
    hN[21] = v1
    hN[23] = "\195\208\182"
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[20] = 24
    hN[23] = v1
    hN[25] = "zxx\160\002\211?"
    hN[24] = hN[23](hN[25],hN[26])
    hN[9] = local_33[hN[9]]
    hN[21] = hN[22][hN[24]]
    hN[22] = 13
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "\134k]8|\130\250\217"
    hN[18] = v0
    hN[22] = 22432108046541
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.textSize = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 5086617880896
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\019\195\147\195\187f\195\166\195\170\017\194\141"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[9] = hN[9](local_33,hN[10])
    hN[25] = "\189\155\191\238\015l2"
    hN[22] = 28581008471037
    hN[26] = 3304080279042
    hN[12] = v0
    hN[13] = v1
    hN[15] = "\165y\007_#"
    hN[16] = 33448811527383
    hN[18] = 32705236761469
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[24] = 25730295574221
    hN[13] = v0
    hN[17] = 25959786639160
    hN[14] = v1
    hN[16] = "f\229\209\166\\KbKn5d\140rG\145\154\029\139\159\024\246,\253"
    hN[15] = hN[14](hN[16],hN[17])
    hN[19] = "3\242\242\212\\"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[20] = 6214817762126
    hN[15] = v1
    hN[17] = "\250\244\199\254"
    hN[23] = "\173\179}"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[21] = "\205\011\229"
    hN[16] = v0
    hN[17] = v1
    hN[14] = 50
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[18] = 50
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[20] = 2000
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[26] = 20951785317916
    hN[21] = hN[22][hN[24]]
    hN[22] = 1000
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[30] = "\165\230\182=\008o"
    hN[22] = 26715575349400
    hN[24] = 32863824935879
    hN[9] = "Slider"
    hN[25] = "\158\004\172\130,\242\171"
    hN[18] = v0
    hN[21] = "\237\1337\169\144V\251>"
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[9] = local_33[hN[9]]
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.maxDistance = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 246098346098
            lookup = character_3["\195\158\003\195\177Q \195\177\000}>\195\166 "]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return QTwQYJViasYx
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[17] = 19035844305568
    hN[9] = hN[9](local_33,hN[10])
    hN[15] = "5\128L.8"
    hN[12] = v0
    hN[16] = 5850741852836
    hN[21] = "\131H\150"
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "\241\170p\2341\019Q\210\155>\138\140\148\136\202"
    hN[11] = hN[12][hN[14]]
    hN[20] = 674226618681
    hN[13] = v0
    hN[22] = 4783836448947
    hN[14] = v1
    hN[18] = 28428561363894
    hN[9] = "Slider"
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[17] = "\197,b\242"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[23] = "\226U\224"
    hN[14] = 10
    hN[19] = "oU\207w\134"
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[9] = local_33[hN[9]]
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = 60
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[23] = v1
    hN[20] = 400
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 140
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "\228\146N\025\205m\001'"
    hN[22] = 24169182981110
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v51
        lookup = character_4
        character.billboardWidth = lookup
        if local_player_5_ref_2 then
            char_fn = 27093508485448
            character = v98
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\195\147S\195\160H\194\146kf\195\182\194\135\195\148\195\148O5\194\128"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[25] = "\136\187\159\134 AX"
    hN[9] = hN[9](local_33,hN[10])
    hN[15] = "\129\015\176sg"
    hN[20] = 7180386979087
    hN[12] = v0
    hN[16] = 28715533071419
    hN[13] = v1
    hN[17] = 25871437311759
    hN[14] = hN[13](hN[15],hN[16])
    hN[21] = "x]\178"
    hN[19] = "\250\228\167\172\205"
    hN[16] = "\021\014\188\249\214\164\127\244\164?\151b\214\164\156\015"
    hN[22] = 32328334719694
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[9] = "Slider"
    hN[26] = 5329478945201
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "\162cc\215"
    hN[14] = v0
    hN[15] = v1
    hN[18] = 9845258654184
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[24] = 4372854671348
    hN[23] = "\134w("
    hN[14] = 5
    hN[9] = local_33[hN[9]]
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = 0
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[20] = 200
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 0
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "\170k\211I\022[s\133"
    hN[18] = v0
    hN[19] = v1
    hN[22] = 26793442357436
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v51
        character_4 = arg1
        lookup = character_4
        character.billboardHeight = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 11764307793254
            lookup = character_3["#C\195\146\194\150\194\161\195\1838/\195\182F\194\174\194\150\194\174\194\142H"]
            character_3 = v51
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[15] = "\203\181\177_Q"
    hN[18] = 2539722327198
    hN[16] = 31880060238333
    hN[9] = hN[9](local_33,hN[10])
    hN[12] = v0
    hN[17] = 25069402140057
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[21] = 29400924894586
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[16] = "#\169\227\245\195\224\000\002O)"
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[22] = 31120730798235
    hN[17] = "dds\026\254\024\222"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v52
    hN[17] = v0
    character = 16045366
    hN[18] = v1
    hN[20] = "D\204\228\211C'\157\1464"
    hN[19] = hN[18](hN[20],hN[21])
    hN[20] = 31284219902183
    hN[16] = hN[17][hN[19]]
    hN[14] = hN[15][hN[16]]
    hN[9] = "Colorpicker"
    hN[19] = "o\027+e\215\164\002\006\173\021C\222"
    hN[16] = v0
    hN[17] = v1
    hN[9] = local_15[hN[9]]
    hN[21] = "F\218n\249\140\012\250l"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[16] = 0
    hN[26] = 863633981842
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v52
        lookup = character_4
        character.fillColor = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 34588300197610
            ui_node_6 = v1
            lookup = character_3["+*\195\137\001l\195\142\002$\195\170"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[21] = 28502675895256
    hN[9] = hN[9](local_15,hN[10])
    hN[16] = 22651934042420
    hN[12] = v0
    hN[13] = v1
    hN[15] = "\220\006\127\026-"
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[18] = 34834398543709
    hN[9] = "Colorpicker"
    hN[16] = "Rw \227at|\240\028\205\175\228\184"
    hN[14] = v1
    hN[17] = 23277394111063
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "1<\130\001q\023\136"
    hN[14] = v0
    hN[15] = v1
    hN[20] = "\162\245\214K\004\162\196\215\175\019\180\188"
    hN[16] = hN[15](hN[17],hN[18])
    hN[22] = 28078587818771
    hN[13] = hN[14][hN[16]]
    hN[15] = v52
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[9] = local_15[hN[9]]
    hN[14] = hN[15][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\180#\237^\202\2398\230\192\251{\184"
    hN[20] = 7128866327799
    hN[21] = "\210\185%\205S\178Wj"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[16] = 0
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[19] = "6\031\187\207\130"
    hN[18] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v52
        lookup = character_4
        character.outlineColor = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 11912702776747
            ui_node_6 = v1
            lookup = character_3["q\195\158MC\011\\\195\172;c\195\176\195\160Q"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[21] = "t\1559"
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[15] = "ZK2n\175"
    hN[9] = hN[9](local_15,hN[10])
    hN[12] = v0
    hN[17] = 14944315743022
    hN[16] = 25758040649434
    hN[22] = 6853452123255
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[18] = 897513652641
    hN[11] = hN[12][hN[14]]
    hN[16] = "f,L\007\014\130\219\201O\240H\235\199\178E\225\223"
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "qd\235_"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[9] = "Slider"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[14] = .05
    hN[20] = 10176568758914
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[24] = 29613046724061
    hN[20] = hN[19](hN[21],hN[22])
    hN[23] = "\184p\218"
    hN[17] = hN[18][hN[20]]
    hN[25] = "Z\128B\137P\003\129"
    hN[20] = v0
    hN[18] = 0
    hN[21] = v1
    hN[9] = local_15[hN[9]]
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = 1
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = .3
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20],[hN[21]] = hN[22]}
    hN[18] = v0
    hN[22] = 16698710777439
    hN[21] = "\1908!\152\150T\183\213"
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.fillTrans = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 33191968701536
            lookup = character_3["\194\182\195\147\195\161\194\160\194\138\012V\195\139\194\162"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[20] = 18702848352773
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[16] = 21071565448788
    hN[15] = "\209Nn\240\127"
    hN[9] = hN[9](local_15,hN[10])
    hN[17] = 6938540559519
    hN[12] = v0
    hN[18] = 24801038953756
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[23] = "\185hH01\1811\208"
    hN[16] = "\251\008v\195&I\1531\187\215=\238;O"
    hN[9] = "Toggle"
    hN[24] = 21242570679971
    hN[13] = v0
    hN[19] = 12692156061462
    hN[14] = v1
    hN[22] = 2577186096304
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[17] = "K\140EX"
    hN[16] = hN[15](hN[17],hN[18])
    hN[21] = 21496727086874
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[16] = v1
    hN[18] = "\138pN"
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[19] = "]\137\168\182"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[20] = "\165\158[%\r\221I\228"
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[21] = "\190T\143\200\194"
    hN[18] = v0
    hN[19] = v1
    hN[9] = local_15[hN[9]]
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.showBillboard = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 33861406014871
            ui_node_6 = v1
            lookup = character_3["p\195\160\195\140\194\141\194\159\195\174\195\129\194\135c\194\151\194\176\194\129\195\165"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[18] = true
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[16] = 17178929372991
    hN[9] = hN[9](local_15,hN[10])
    hN[15] = "\200;\t$~"
    hN[12] = v0
    hN[13] = v1
    hN[17] = 475756151005
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "\191\172\0244\024D\249\224\255"
    hN[13] = v0
    hN[14] = v1
    hN[20] = 23753150262068
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\243\1486\024"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[24] = 30882016589868
    hN[18] = 33265334107266
    hN[16] = hN[15](hN[17],hN[18])
    hN[9] = "Toggle"
    hN[18] = "\247\221I\222"
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[19] = 4646491310195
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\147\253V\196"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[22] = 33149167205452
    hN[18] = v1
    hN[20] = "\146\025\151#d\133,!"
    hN[21] = 32915360545759
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[21] = "K\216\137\207<"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[18] = true
    hN[23] = "\183\253s+\226r9\193"
    hN[9] = local_15[hN[9]]
    hN[21] = v1
    hN[25] = "O\193`\016\156\251\239"
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.showName = lookup
        if local_player_5_ref_2 then
            char_fn = 27141697630558
            character = v98
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\195\175\194\166@\194\176\195\168\194\182\195\154V"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[9] = hN[9](local_15,hN[10])
    hN[12] = v0
    hN[13] = v1
    hN[17] = 16383244803533
    hN[15] = "7Y\017Zg"
    hN[16] = 7610347261399
    hN[18] = 6901641268365
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[9] = "Colorpicker"
    hN[22] = 13755093391621
    hN[9] = local_15[hN[9]]
    hN[23] = "\244\197\191\152w<2\203"
    hN[16] = "\148\t;\208\244*V\173)^"
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[21] = 8507860914041
    hN[12] = hN[13][hN[15]]
    hN[17] = "\131&\238\214\205\231y"
    hN[24] = 30186986075880
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[20] = "\230\021\133\155!r\137\136l"
    hN[15] = v52
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[19] = "\020[\240\204\146Q\156\171\025UL\235"
    hN[14] = hN[15][hN[16]]
    hN[16] = v0
    hN[20] = 26559813578831
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[21] = "{\244\149\t\252:\178\255"
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[16] = 0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v52
        lookup = character_4
        character.nameColor = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 27423447560674
            lookup = character_3["e@\194\131lV\195\139Je*"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_15,hN[10])
    hN[15] = "\1514\012\024\204"
    hN[21] = 15047711005535
    hN[12] = v0
    hN[16] = 30453804169061
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "\153h\134z\13248"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[17] = 4545597163588
    hN[14] = v1
    hN[18] = 25431044156994
    hN[9] = "Toggle"
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[19] = 16340997529017
    hN[14] = v0
    hN[17] = "s1\227\007"
    hN[20] = 11484137723107
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[18] = "a\244N\185["
    hN[22] = 29033153590479
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\197\226\240\253"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[20] = "\147\173\219\023m\r\130Y"
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[9] = local_15[hN[9]]
    hN[21] = "\178|Wi\217"
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = false
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.showHP = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 31610339703167
            ui_node_6 = v1
            lookup = character_3["\194\156\194\152\194\145h1\195\177"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        lookup = local_player_5_ref_2
        if lookup then
            event_connection_2 = character_4
        end
        if event_connection_2 then
            event_connection_2 = v84()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[16] = 16245184650636
    hN[15] = "\200\236\238\029\210"
    hN[18] = 30287373612823
    hN[9] = hN[9](local_15,hN[10])
    hN[12] = v0
    hN[17] = 17073345863438
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "'v\137\149\004B\174<"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[17] = "\173\017\218\151\187A\146"
    hN[16] = hN[15](hN[17],hN[18])
    hN[22] = 28368335614874
    hN[13] = hN[14][hN[16]]
    hN[15] = v52
    hN[9] = "Colorpicker"
    hN[17] = v0
    hN[21] = 33424114023628
    hN[20] = "\184$y\239\211-\221"
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[20] = 17549102014443
    hN[14] = hN[15][hN[16]]
    hN[9] = local_15[hN[9]]
    hN[21] = "p~\236\228X\008\193\005"
    hN[16] = v0
    hN[19] = "\018\192\1620W\248\215\165\252\208\191\146"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[19] = 16724528225899
    hN[17] = hN[18][hN[20]]
    hN[16] = 0
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v52
        lookup = character_4
        character.hpColor = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 6117880187680
            lookup = character_3["\019\127\195\153\195\181\194\186{>"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[18] = 1815524672333
    hN[15] = "a\208\030\012\004"
    hN[16] = 26099324055417
    hN[9] = hN[9](local_15,hN[10])
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[24] = 34894367227768
    hN[16] = "\178\144\193\148\024\138\026\247\031Qi\139\230"
    hN[13] = v0
    hN[14] = v1
    hN[17] = 851028328844
    hN[15] = hN[14](hN[16],hN[17])
    hN[20] = 27992725959403
    hN[12] = hN[13][hN[15]]
    hN[23] = "`9\232\176A\211#\027"
    hN[9] = "Toggle"
    hN[14] = v0
    hN[17] = "\176\194\1897"
    hN[15] = v1
    hN[26] = 5265712777620
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[18] = "\127\190\"\205\220h\223"
    hN[16] = v1
    hN[21] = 9425871950117
    hN[17] = hN[16](hN[18],hN[19])
    hN[22] = 33107773029433
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[19] = "s`f\000"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[20] = "\213\135k\179\0074\018\216"
    hN[17] = v0
    hN[18] = v1
    hN[9] = local_15[hN[9]]
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[21] = "\238g\169M_"
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = false
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v52
        lookup = character_4
        character.showDist = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            ui_node_6 = v1
            char_fn = 24483214503048
            lookup = character_3["H';i\195\1303\025\t"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        lookup = local_player_5_ref_2
        if lookup then
            event_connection_2 = character_4
        end
        if event_connection_2 then
            event_connection_2 = v84()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[21] = 8734520594403
    hN[9] = hN[9](local_15,hN[10])
    hN[12] = v0
    hN[15] = "\158\186\198\212\216"
    hN[22] = 6968962010285
    hN[18] = 16722289958506
    hN[17] = 20870268413430
    hN[13] = v1
    hN[16] = 13465088514174
    hN[14] = hN[13](hN[15],hN[16])
    hN[24] = 12963429816212
    hN[23] = "S\169\183"
    hN[11] = hN[12][hN[14]]
    hN[9] = "Colorpicker"
    hN[16] = "~\241\148\233N\138c\165\197\t1\248\216\229"
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[20] = "\171pd]\196\169V\000o"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[17] = "76D\198`^]"
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v52
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[21] = "~\020\224|\197m\148\146"
    hN[16] = hN[17][hN[19]]
    hN[20] = 25415865577019
    hN[19] = ":\190\178\001\232z\178\182M\142J\n"
    hN[14] = hN[15][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[16] = 0
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[9] = local_15[hN[9]]
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.distColor = lookup
        if local_player_5_ref_2 then
            char_fn = 1715631194910
            character = v98
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\195\1414KfF\194\1487\195\149\003"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return tTHhHlPgiExxj
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_15,hN[10])
    hN[16] = 22016673015820
    hN[12] = v0
    hN[15] = "PC\175\142\187"
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[21] = "\225\254\246"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[14] = v1
    hN[17] = 18924299608684
    hN[16] = "\165q\211\140 \128\158\138\252\177\191\202\146/t\203\003\179\162{\023$\186\140\164"
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[18] = 31902617270791
    hN[17] = "(\177wO"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[14] = .05
    hN[16] = v0
    hN[9] = "Slider"
    hN[20] = 23376739003013
    hN[19] = "m\012O'J"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[22] = 15350267206636
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = 0
    hN[20] = v0
    hN[9] = local_15[hN[9]]
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = 1
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 14811.5 - 14811
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[18] = v0
    hN[19] = v1
    hN[21] = "\210\244\151$)\195\164H"
    hN[22] = 10453268714243
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.billboardBgTrans = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 22814814792063
            ui_node_6 = v1
            lookup = character_3["L&\194\171\194\162G\194\156\194\159P\194\142k\194\167\194\159\194\142\008\195\168$"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[9] = hN[9](local_15,hN[10])
    hN[12] = v0
    hN[21] = "\229\017\019"
    hN[26] = 11276712416387
    hN[16] = 3637232223901
    hN[20] = 29736556295703
    hN[15] = "\172R9\019V"
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[17] = 14089404963232
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[24] = 30748219668462
    hN[16] = "\150\215\145\191H\236\229\1636"
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[22] = 14940433308461
    hN[17] = "E\200\001\234"
    hN[12] = hN[13][hN[15]]
    hN[18] = 28932694979744
    hN[19] = "\232\160=\031\176"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[14] = 1
    hN[23] = "\156\158\140"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[18] = 8
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = 24
    hN[25] = "/\174[O\153\222\167"
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[26] = 29658391410162
    hN[24] = 15221245713327
    hN[22] = 13
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20],[hN[21]] = hN[22]}
    hN[18] = v0
    hN[21] = "\031=\214D\182h5/"
    hN[19] = v1
    hN[22] = 7748787162648
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[9] = "Slider"
    hN[9] = local_15[hN[9]]
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.textSize = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 9200113340604
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["\020cA\195\139\194\149U.\195\150"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_15,hN[10])
    hN[12] = v0
    hN[20] = 20923870815759
    hN[13] = v1
    hN[25] = "wq\1364=j\214"
    hN[15] = "\222\238\228\229\253"
    hN[16] = 7458782301585
    hN[14] = hN[13](hN[15],hN[16])
    hN[18] = 33683327860037
    hN[17] = 22923452377522
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[16] = "K-o\029\1964\143\250.mO\2247zKA\008:\015\018\161\006\134"
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[22] = 8609348702121
    hN[12] = hN[13][hN[15]]
    hN[17] = "\163z\2130"
    hN[21] = "\007\186\184"
    hN[14] = v0
    hN[23] = "7V\158"
    hN[15] = v1
    hN[9] = "Slider"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[14] = 50
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\239N\204\231\170"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = 50
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = 2000
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 1000
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "\016\213\203\209=\"p*"
    hN[18] = v0
    hN[9] = local_15[hN[9]]
    hN[19] = v1
    hN[22] = 34025214279140
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character_4 = arg1
        character = v52
        lookup = character_4
        character.maxDistance = lookup
        if local_player_5_ref_2 then
            char_fn = 19549537428367
            character = v98
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["0\004\194\155\194\165\195\150|k\195\175yo\195\177"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[9] = hN[9](local_15,hN[10])
    hN[15] = "2u~\170;"
    hN[24] = 18639732154855
    hN[9] = "Slider"
    hN[12] = v0
    hN[16] = 556473385219
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[20] = 32459090656010
    hN[11] = hN[12][hN[14]]
    hN[23] = "\008\n\235"
    hN[16] = "F\164\240\165f\198}\0123\189\183Q\195\152\\"
    hN[18] = 3289464948219
    hN[13] = v0
    hN[14] = v1
    hN[17] = 9022508650601
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "\216t\135\176"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[19] = "\143+\136mp"
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[21] = "\241}a"
    hN[22] = 32399247669999
    hN[14] = 10
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[26] = 10238148383391
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[9] = local_15[hN[9]]
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[18] = 60
    hN[25] = "*\176w\138$\159l"
    hN[19] = hN[20][hN[22]]
    hN[20] = 400
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 140
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20],[hN[21]] = hN[22]}
    hN[18] = v0
    hN[21] = "\002\015\002\167vN\236\134"
    hN[19] = v1
    hN[22] = 2480588342403
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.billboardWidth = lookup
        if local_player_5_ref_2 then
            character = v98
            character_3 = v0
            char_fn = 21441320118016
            ui_node_6 = v1
            lookup = character_3["\195\175\194\186H5\194\163\195\128\195\146L\194\182\195\180\195\146\194\161\195\141\195\139"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[9] = hN[9](local_15,hN[10])
    hN[17] = 32730233109385
    hN[23] = "d\172\250"
    hN[12] = v0
    hN[15] = "\245\145\206H\147"
    hN[16] = 25295403134467
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[19] = "\130\n#\230\n"
    hN[16] = "V;$\202\148?\001\011\196X\166\001&\239\209\024"
    hN[18] = 346352992417
    hN[11] = hN[12][hN[14]]
    hN[20] = 19043726025379
    hN[26] = 14607573588626
    hN[13] = v0
    hN[14] = v1
    hN[25] = "\128-%\196\254\211\189"
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\132\233\238\205"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[21] = "W\031\140"
    hN[24] = 15286786300878
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[22] = 27282417299872
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[14] = 5
    hN[18] = v0
    hN[19] = v1
    hN[9] = "Slider"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[9] = local_15[hN[9]]
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[23] = v1
    hN[20] = 200
    hN[18] = 0
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 0
    hN[26] = 13300908070961
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "n8\218\142\158\133\139\242"
    hN[18] = v0
    hN[19] = v1
    hN[25] = 14786564266725
    hN[22] = 3374757611043
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[19] = 7336373374296
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        character = v52
        character_4 = arg1
        lookup = character_4
        character.billboardHeight = lookup
        if local_player_5_ref_2 then
            character = v98
            char_fn = 19597293101989
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["*\194\190\194\185d|\194\135n\018\030\195\131b=v9\195\156"]
            character_3 = v52
            event_connection_2 = character(lookup,character_3)
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_15,hN[10])
    hN[9] = v19
    hN[11] = v0
    hN[15] = 12574870968031
    hN[14] = "\241\154\248\026E\178J$v\188\t\219"
    hN[12] = v1
    hN[13] = hN[12](hN[14],hN[15])
    hN[10] = hN[11][hN[13]]
    hN[14] = v0
    hN[17] = "\171\216 d\169"
    hN[15] = v1
    hN[24] = 10707873796986
    hN[18] = 30494355765112
    hN[16] = hN[15](hN[17],hN[18])
    hN[40] = "I\131O\247\002"
    hN[13] = hN[14][hN[16]]
    hN[20] = 11073826722852
    hN[15] = v0
    hN[18] = "\238~\030\175\201\158\014\134Qx5O`\150"
    hN[16] = v1
    hN[23] = 26295072436180
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[19] = "@\027\154\172"
    hN[21] = 16233854492039
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[20] = "\153\008.\134\127\180\202\196\157\020\139\135\020\131\131L#p\177\022"
    hN[11] = "Toggle"
    hN[22] = 15945722076417
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[21] = "\216R\170,"
    hN[20] = hN[19](hN[21],hN[22])
    hN[22] = "\1576\136"
    hN[17] = hN[18][hN[20]]
    hN[19] = v0
    hN[20] = v1
    hN[21] = hN[20](hN[22],hN[23])
    hN[18] = hN[19][hN[21]]
    hN[11] = local_23[hN[11]]
    hN[20] = v0
    hN[21] = v1
    hN[23] = "\174)a\239"
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[24] = "|K}'\221\205b("
    hN[21] = v0
    hN[22] = v1
    hN[23] = hN[22](hN[24],hN[25])
    hN[20] = hN[21][hN[23]]
    hN[25] = "\191ki\172\029"
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[24] = v0
    hN[25] = v1
    hN[26] = hN[25](hN[27],hN[28])
    hN[23] = hN[24][hN[26]]
    hN[22] = false
    hN[24] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, lookup, event_connection_2
        character_4 = arg1
        character = character_4
        local_player_5_ref_2 = character
        if character_4 then
            lookup = v115()
        else
            event_connection_2 = v104
            character = 14866419
            lookup = event_connection_2()
        end
        return wlfalyWEwamAZk
    end
    hN[12] = {[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22],[hN[23]] = hN[24]}
    hN[11] = hN[11](local_23,hN[12])
    hN[9][hN[10]] = hN[11]
    hN[20] = "]t\"\238\129@\224R\250"
    hN[17] = 22323416737947
    hN[22] = 17002236239597
    hN[15] = "N\198}B\214"
    hN[16] = 15343037651944
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[9] = "Colorpicker"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[16] = "7\017@\218M\t\206\026\198\023"
    hN[14] = v1
    hN[18] = 33546876189957
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\019\136\132C\014\232\168"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v53
    hN[17] = v0
    hN[18] = v1
    hN[21] = 12617756202739
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[9] = local_11[hN[9]]
    hN[19] = "sP\143\250\228\233cB\217d\178#"
    hN[14] = hN[15][hN[16]]
    hN[16] = v0
    hN[20] = 19538292302730
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[21] = "\202+\133\241T\245\214\195"
    hN[16] = 0
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[25] = "\030\021\016n\001\228\250"
    hN[18] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        ui_node_7 = 22855904586131
        character = v53
        character_3 = v1
        lookup = character_4
        character.fillColor = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        character = env["8kbjslZzsat0"]
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[16] = 22018880645133
    hN[9] = hN[9](local_11,hN[10])
    hN[15] = "\246\159\160\198\031"
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "?\200Q\152\133,\233\028_z\224\202\180"
    hN[17] = 10910865019864
    hN[23] = "\253O\246"
    hN[13] = v0
    hN[9] = "Colorpicker"
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[18] = 9112852615315
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[22] = 9459205607732
    hN[17] = "&\252\129\173\239,\190"
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v53
    hN[20] = "}\198\240\193\137\016\212\019\217\179\186f"
    hN[21] = 12129911674384
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[14] = hN[15][hN[16]]
    hN[20] = 8456726040417
    hN[19] = "\136\248CT\002u\216m\170\201\201K"
    hN[21] = "\234\206\128\127\183\014\031F"
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[16] = 0
    hN[9] = local_11[hN[9]]
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        ui_node_7 = 31173637699764
        character_4 = arg1
        character = v53
        character_3 = v1
        lookup = character_4
        character.outlineColor = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[18] = 10596839183174
    hN[24] = 30194132285164
    hN[9] = hN[9](local_11,hN[10])
    hN[16] = 554771235074
    hN[12] = v0
    hN[17] = 24745991908611
    hN[13] = v1
    hN[22] = 12597193266922
    hN[15] = "\148=\226\239\169"
    hN[14] = hN[13](hN[15],hN[16])
    hN[21] = "\007\153\243"
    hN[26] = 16504399830533
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[14] = v1
    hN[16] = "g\167\2347Xt8\190p\209g\222%Ux~\219"
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "\174\179\021k"
    hN[20] = 3929528862501
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[14] = .05
    hN[19] = "\205\245\1711\157"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[9] = "Slider"
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[18] = 0
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[23] = v1
    hN[20] = 1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[9] = local_11[hN[9]]
    hN[22] = .4
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[18] = v0
    hN[19] = v1
    hN[22] = 7907176943202
    hN[21] = "yW\237A\161m\150\018"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character = v53
        character_4 = arg1
        ui_node_7 = 2346133570628
        character_3 = v1
        lookup = character_4
        character.fillTrans = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_11,hN[10])
    hN[15] = "\201\223\193\222{"
    hN[17] = 24141031435241
    hN[18] = 18291855647045
    hN[16] = 27578226553386
    hN[22] = 31989834971696
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "^8\193\160Q{\240G^\148\217k\217\r", hN[11] = hN[12][hN[14]], hN[13] = v0, hN[14] = v1, hN[15] = hN[14](hN[16],hN[17]), hN[12] = hN[13][hN[15]], hN[14] = v0, hN[15] = v1, hN[17] = "\217\202\140\227", hN[16] = hN[15](hN[17],hN[18]), hN[23] = "\135[j\022\015\199\182\142", hN[13] = hN[14][hN[16]], hN[19] = 18688926884350, hN[20] = 34848905232227, hN[18] = "\242\189\027", hN[15] = v0, hN[16] = v1, hN[17] = hN[16](hN[18],hN[19]), hN[14] = hN[15][hN[17]], hN[16] = v0, hN[19] = "\246\245\189q", hN[17] = v1, hN[18] = hN[17](hN[19],hN[20]), hN[21] = 33078419913771, hN[24] = 29921944368749, hN[15] = hN[16][hN[18]], hN[17] = v0, hN[20] = "V\139\128}\002\145\170\216"
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[21] = "Ml\175\220\183"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = true
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[9] = "Toggle"
    hN[9] = local_11[hN[9]]
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character = v53
        ui_node_7 = 13237085460499
        character_4 = arg1
        character_3 = v1
        lookup = character_4
        character.showBillboard = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[9] = hN[9](local_11,hN[10])
    hN[20] = 10102312604256
    hN[15] = " q-LU"
    hN[16] = 19128879604427
    hN[17] = 28284448453490
    hN[21] = 13526374160538
    hN[12] = v0
    hN[13] = v1
    hN[28] = 16771276447361
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "\250\132@\021+)9\149\134\206"
    hN[13] = v0
    hN[14] = v1
    hN[19] = 3482799801941
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\223\239\180\164"
    hN[12] = hN[13][hN[15]]
    hN[22] = 25501680447075
    hN[18] = 25854841679623
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[18] = "\128\248k"
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[19] = "I\022.$"
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[23] = ";=e\252o\161\240\002"
    hN[9] = "Toggle"
    hN[15] = hN[16][hN[18]]
    hN[20] = " [?\193\234xb\249"
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[21] = "S\144*\012\249"
    hN[18] = v0
    hN[9] = local_11[hN[9]]
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[24] = 21013177624121
    hN[20] = v0
    hN[18] = true
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        ui_node_7 = 22639226775854
        character_4 = arg1
        character = v53
        character_3 = v1
        lookup = character_4
        character.showLabel = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18], [hN[19]] = hN[20]}
    hN[9] = hN[9](local_11,hN[10])
    hN[9] = "Colorpicker"
    hN[12] = v0
    hN[13] = v1
    hN[15] = "\132\206\171%g"
    hN[16] = 2447220016243
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "\r\223\161\005\128\188\222S~\2436"
    hN[22] = 21660052186982
    hN[13] = v0
    hN[17] = 29469903664538
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[18] = 32098432383586
    hN[17] = "\rH{{5\015\015"
    hN[15] = v1
    hN[21] = 33620857732391
    hN[25] = "\243\006\159\022^\245\029"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[20] = "\186\129^\236\182ET~\192\224"
    hN[15] = v53
    hN[17] = v0
    hN[9] = local_11[hN[9]]
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[20] = 30024674915997
    hN[14] = hN[15][hN[16]]
    hN[19] = "C^\017\165\158\r\012\145 \240\175\195"
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[21] = "X\151\026\127\176t\004-"
    hN[16] = 0
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = 6980050308274
    hN[18] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        character = v53
        ui_node_7 = 9033324810350
        character_3 = v1
        lookup = character_4
        character.labelColor = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[21] = 6389218577311
    hN[9] = hN[9](local_11,hN[10])
    hN[18] = 4043085006682
    hN[17] = 34257245470288
    hN[16] = 33954203778499
    hN[12] = v0
    hN[13] = v1
    hN[15] = "\150\164\238>\162"
    hN[9] = "Toggle"
    hN[9] = local_11[hN[9]]
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[23] = "6\026i\206C\172l\165"
    hN[13] = v0
    hN[14] = v1
    hN[16] = "\188\185\025C\137\024\"\170g\150\186\189\202"
    hN[19] = 15274231503816
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "\194Y\230^"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[18] = "+2\163`{\ru{"
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[19] = "\128\000A\165"
    hN[17] = v1
    hN[22] = 7668085951986
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[20] = "l,\224\163\011\252\192="
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[21] = "\147\162\216\255&"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = true
    hN[24] = 31121081743515
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        ui_node_7 = 24681074224357
        character_4 = arg1
        character = v53
        character_3 = v1
        lookup = character_4
        character.showProgress = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18], [hN[19]] = hN[20]}
    hN[17] = 30785614870527
    hN[9] = hN[9](local_11,hN[10])
    hN[15] = "\158\148\228\015\200"
    hN[16] = 26357012836337
    hN[20] = "\155\000\192\nE\253=![\238\237\rF"
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[21] = 23162475702817
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[14] = v1
    hN[16] = "Z]\130<\240\245\162\152\235~\167\185\\\232"
    hN[18] = 22575122049296
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "\131\193w\016R\162\127"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v53
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[19] = "\170\243\223\177\011\163\213T\157\156\2394"
    hN[14] = hN[15][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[22] = 627835404580
    hN[20] = 25523187150445
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[21] = ")WO\178~6\029\236"
    hN[18] = v0
    hN[16] = 0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[19] = 28725576102976
    hN[9] = "Colorpicker"
    hN[9] = local_11[hN[9]]
    hN[17] = hN[18][hN[20]]
    hN[24] = 27463905931764
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        character = v53
        character_3 = v1
        ui_node_7 = 7106983202029
        lookup = character_4
        character.progressColor = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[16] = 18623263498720
    hN[9] = hN[9](local_11,hN[10])
    hN[12] = v0
    hN[17] = 26482677084203
    hN[15] = "\163\156\158\239\187"
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[18] = 10589783003971
    hN[20] = 4824679155910
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[16] = "\178\213hz^@F\255D\189A\014\246"
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[23] = "-.\225\198/\172[F"
    hN[12] = hN[13][hN[15]]
    hN[17] = "\004\004e`"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[9] = "Toggle"
    hN[9] = local_11[hN[9]]
    hN[13] = hN[14][hN[16]]
    hN[18] = "\141D\197e~\181\n"
    hN[15] = v0
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[21] = 907091345830
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\182r\197B"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[22] = 14554381638265
    hN[20] = "O\136\143\231\212\132\158\\"
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[21] = "C\"\151\227P"
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[18] = false
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        character = v53
        character_3 = v1
        ui_node_7 = 3354311378457
        lookup = character_4
        character.showDist = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18],[hN[19]] = hN[20]}
    hN[9] = hN[9](local_11,hN[10])
    hN[15] = "0\240S\222\199"
    hN[12] = v0
    hN[16] = 8839913197588
    hN[20] = "R0\187\144\230=\178G\252"
    hN[13] = v1
    hN[17] = 24377966226519
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "\195\185\rj\005\003\181\192~\186\248=[\244"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[21] = 3680216008369
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\207\215\195\193\"\157\206"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[18] = 1790797005633
    hN[9] = "Colorpicker"
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[22] = 10824121815984
    hN[15] = v53
    hN[17] = v0
    hN[9] = local_11[hN[9]]
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[21] = "\215\196|p\247\019\017\148"
    hN[24] = 25392365137456
    hN[14] = hN[15][hN[16]]
    hN[20] = 10853646308286
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\213\161\230\165cKr2\155\240\024\175"
    hN[23] = ",d\208"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[16] = 0
    hN[20] = hN[19](hN[21],hN[22])
    hN[19] = "\228\191\001\008O"
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        ui_node_7 = 2450047681652
        character = v53
        character_3 = v1
        lookup = character_4
        character.distColor = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[17] = 14867206822667
    hN[9] = hN[9](local_11,hN[10])
    hN[12] = v0
    hN[15] = "O\155O\212\011"
    hN[16] = 9926519673358
    hN[13] = v1
    hN[20] = 16906569981632
    hN[18] = 17724279185469
    hN[14] = hN[13](hN[15],hN[16])
    hN[21] = "\220\184\151"
    hN[11] = hN[12][hN[14]]
    hN[16] = "Xo\030/Qk\225CY!O\023\245\137\185&\\\031/\250ZJ\239\178S"
    hN[13] = v0
    hN[26] = 12843279619932
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "\142\1533%"
    hN[22] = 21256425399978
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[14] = .05
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[20] = v0
    hN[18] = 0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = 1
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = - 1024903.5 -(- 1024904)
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20],[hN[21]] = hN[22]}
    hN[25] = "r\216\011\021c\136$"
    hN[22] = 10753127535503
    hN[18] = v0
    hN[26] = 17406600945577
    hN[19] = v1
    hN[9] = "Slider"
    hN[21] = "\220`\201\147\192\004\232("
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[22] = 33956084989380
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character = v53
        character_4 = arg1
        ui_node_7 = 16565005884961
        character_3 = v1
        lookup = character_4
        character.billboardBgTrans = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[9] = local_11[hN[9]]
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_11,hN[10])
    hN[12] = v0
    hN[16] = 8444522401628
    hN[20] = 33967709552073
    hN[15] = "\007\166W\209,"
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[19] = "*\171!(\156"
    hN[16] = "\025\129\005r\r+\031\026_"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[18] = 4543109482563
    hN[17] = 33328249584799
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[17] = "\190\011,\165"
    hN[21] = "\236\029\147"
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[14] = 1
    hN[27] = "L\143\210\015\014\211\239\224"
    hN[24] = 11650092700976
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[23] = "\024%\157"
    hN[17] = hN[18][hN[20]]
    hN[18] = 8
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[23] = v1
    hN[20] = 24
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 13
    hN[9] = "Slider"
    hN[9] = local_11[hN[9]]
    hN[25] = "\231\031\154\162\218T\017"
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[18] = v0
    hN[21] = "]\rH\208ns\242\020"
    hN[22] = 25254389984751
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[19] = "f\207n\189<"
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        character = v53
        ui_node_7 = 22239875704948
        character_3 = v1
        lookup = character_4
        character.textSize = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[16] = 10947804959721
    hN[21] = "x\244i"
    hN[15] = "\201\252\024#\158"
    hN[9] = hN[9](local_11,hN[10])
    hN[26] = 34342099795575
    hN[12] = v0
    hN[17] = 30079069140662
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[22] = 22358602967211
    hN[11] = hN[12][hN[14]]
    hN[16] = "\028V\234\232x\252\183&O\235 \194\029  N\158\187k;\203\021\003"
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[18] = 23146967067162
    hN[14] = v0
    hN[15] = v1
    hN[17] = "Bu\145!"
    hN[16] = hN[15](hN[17],hN[18])
    hN[20] = 25502186597987
    hN[13] = hN[14][hN[16]]
    hN[31] = 18849142760009
    hN[16] = v0
    hN[14] = 50
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[23] = "\235\004\016"
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = 50
    hN[20] = v0
    hN[24] = 26501278445620
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[20] = 2000
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 1000
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "\001\t\131P\177.\1960"
    hN[18] = v0
    hN[9] = "Slider"
    hN[22] = 11552197088515
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        ui_node_7 = 28292075451254
        character = v53
        character_4 = arg1
        character_3 = v1
        lookup = character_4
        character.maxDistance = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        character = env["38Y88gD5AA8ka"]
        return
    end
    hN[21] = "\202?\134"
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[16] = 2837943715113
    hN[9] = local_11[hN[9]]
    hN[9] = hN[9](local_11,hN[10])
    hN[18] = 3931825162022
    hN[15] = "\177\031\2441\144"
    hN[20] = 5287991396766
    hN[17] = 22405843413185
    hN[22] = 32332363086543
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "\165\143kr\026b8\030\222g\150\2490\ne"
    hN[19] = "\2518\r\166K"
    hN[23] = ".<F"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "-}C\148"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[14] = 10
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[24] = 18799032001073
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = 60
    hN[25] = ";_\"\229Z\011^"
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[26] = 23012270598619
    hN[20] = 400
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = 160
    hN[9] = "Slider"
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[18] = v0
    hN[19] = v1
    hN[25] = "\167\203\005\176\143\229\199"
    hN[9] = local_11[hN[9]]
    hN[22] = 14054560979344
    hN[21] = "\225h#\188\014\148\007\175"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character = v53
        character_3 = v1
        character_4 = arg1
        ui_node_7 = 4871085295836
        lookup = character_4
        character.billboardWidth = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[21] = "\028\0251"
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16], [hN[17]] = hN[18]}
    hN[16] = 13220263630860
    hN[9] = hN[9](local_11,hN[10])
    hN[17] = 26897840599277
    hN[12] = v0
    hN[15] = "\r\242L\005C"
    hN[23] = "\184\201\197"
    hN[20] = 29785269515821
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "\241Jc\012R||\007\211q\152\002\237\151\138t"
    hN[13] = v0
    hN[22] = 157990895689
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[18] = 15624212831339
    hN[15] = v1
    hN[17] = "\149C\204\149"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[19] = "\222\228tt\161"
    hN[14] = 5
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[9] = "Slider"
    hN[24] = 13768090310923
    hN[20] = hN[19](hN[21],hN[22])
    hN[26] = 34328379014769
    hN[17] = hN[18][hN[20]]
    hN[18] = 0
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[20] = 200
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[9] = local_11[hN[9]]
    hN[21] = hN[22][hN[24]]
    hN[22] = 0
    hN[16] = {[hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[21] = "\138\166\0242>\246@\203"
    hN[18] = v0
    hN[22] = 34125700447763
    hN[19] = v1
    hN[24] = 17613548757001
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character = v53
        character_3 = v1
        ui_node_7 = 12539803211471
        character_4 = arg1
        lookup = character_4
        character.billboardHeight = lookup
        if local_player_5_ref_2 then
            event_connection_2 = v116()
        end
        return
    end
    hN[21] = 27295734264230
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14], [hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_11,hN[10])
    hN[9] = v19
    hN[19] = 2609821091007
    hN[15] = 10794099610530
    hN[11] = v0
    hN[17] = "\208\246\132\018\218"
    hN[12] = v1
    hN[14] = "\206\238\192e\181\206\237\187"
    hN[13] = hN[12](hN[14],hN[15])
    hN[20] = 33033975315478
    hN[10] = hN[11][hN[13]]
    hN[18] = 16347929304508
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[18] = "\242\027\215\008\157\238\218\233\229"
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[16] = v1
    hN[22] = 32688890231669
    hN[17] = hN[16](hN[18],hN[19])
    hN[19] = "\2425n\146"
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[20] = "m\224\210\194\004GH\015D*\167t\128\127\147?\240\017[\178W\157\133\225v\016\219\006"
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[19] = v1
    hN[21] = "h|\232Z"
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[23] = 20996570277425
    hN[19] = v0
    hN[22] = "_\011\204\136\t\154y"
    hN[11] = "Toggle"
    hN[20] = v1
    hN[21] = hN[20](hN[22],hN[23])
    hN[26] = 12313476617829
    hN[18] = hN[19][hN[21]]
    hN[23] = "\194XOH"
    hN[20] = v0
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[25] = 19863121093665
    hN[21] = v0
    hN[24] = "\250\144\189\170\022+\012\014"
    hN[22] = v1
    hN[23] = hN[22](hN[24],hN[25])
    hN[25] = "!\167\n,\003"
    hN[20] = hN[21][hN[23]]
    hN[22] = v0
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[11] = local_26[hN[11]]
    hN[21] = hN[22][hN[24]]
    hN[22] = false
    hN[24] = v0
    hN[25] = v1
    hN[26] = hN[25](hN[27],hN[28])
    hN[23] = hN[24][hN[26]]
    hN[24] = function(arg1, arg2, arg3)
        local character, character_4, lookup, event_connection_2
        character_4 = arg1
        character = character_4
        local_player_5_ref_2 = character
        if character_4 then
            lookup = v123()
        else
            lookup = v121()
        end
        return
    end
    hN[12] = {[hN[13]] = hN[14], [hN[15]] = hN[16], [hN[17]] = hN[18], [hN[19]] = hN[20], [hN[21]] = hN[22],[hN[23]] = hN[24]}
    hN[11] = hN[11](local_26,hN[12])
    hN[9][hN[10]] = hN[11]
    hN[15] = "\237x\206\214\195"
    hN[12] = v0
    hN[13] = v1
    hN[16] = 31415318198564
    hN[22] = 24897211575625
    hN[23] = "_\\\186"
    hN[14] = hN[13](hN[15],hN[16])
    hN[11] = hN[12][hN[14]]
    hN[16] = "\028\164J/\012\255E\011\232\251"
    hN[17] = 5421179963868
    hN[13] = v0
    hN[20] = "\245\232\030\145=\r\218\161\171"
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[15] = v1
    hN[18] = 19609220162475
    hN[17] = "\221\188\137\211+x\t"
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v117
    hN[17] = v0
    hN[18] = v1
    hN[21] = 18636789506534
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[14] = hN[15][hN[16]]
    hN[19] = "\169o-q\146\145]fJ*\n\223"
    hN[20] = 9353005142275
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[21] = "\214\251\231D\193\238\184\197"
    hN[20] = hN[19](hN[21],hN[22])
    hN[22] = 21552809977652
    hN[16] = 0
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character = v117
        character_4 = arg1
        ui_node_7 = 15784780487862
        character_3 = v1
        lookup = character_4
        character.fillColor = lookup
        return
    end
    hN[9] = "Colorpicker"
    hN[9] = local_26[hN[9]]
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[16] = 28152037143349
    hN[9] = hN[9](local_26,hN[10])
    hN[18] = 29839341467207
    hN[12] = v0
    hN[13] = v1
    hN[15] = "v\220f)\225"
    hN[14] = hN[13](hN[15],hN[16])
    hN[21] = 33023122439185
    hN[16] = "\168Fg8|NZ\159\144\1576}}"
    hN[11] = hN[12][hN[14]]
    hN[13] = v0
    hN[17] = 12725110069029
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[20] = "\144Zmi\174**\248Y\228\246\137"
    hN[17] = "\008{{G\175V\023"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v117
    hN[17] = v0
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[21] = "C\1957\217\162\"\205\229"
    hN[16] = hN[17][hN[19]]
    hN[19] = "\132$;\233-\0291\213\174\138-P"
    hN[14] = hN[15][hN[16]]
    hN[16] = v0
    hN[17] = v1
    hN[20] = 25945373699889
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character = v117
        ui_node_7 = 13462963181693
        character_3 = v1
        character_4 = arg1
        lookup = character_4
        character_4 = nil
        character.outlineColor = lookup
        return "outlineColor"
    end
    hN[9] = "Colorpicker"
    hN[16] = 0
    hN[10] = {[hN[11]] = hN[12],[hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[15] = "\025\026\021\2030"
    hN[18] = 27231053492616
    hN[9] = local_26[hN[9]]
    hN[9] = hN[9](local_26,hN[10])
    hN[12] = v0
    hN[22] = 20652129232272
    hN[21] = "\176\231e"
    hN[16] = 20546271126879
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "\141-\136\171\184\136#\210\234\237\029\012\160\217p\031\168"
    hN[24] = 4586484598871
    hN[11] = hN[12][hN[14]]
    hN[17] = 21710800873341
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[17] = "\251\249\021\166"
    hN[19] = "\007\254\235\136\026"
    hN[14] = v0
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[9] = "Slider"
    hN[20] = 19690278036433
    hN[13] = hN[14][hN[16]]
    hN[14] = .05
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[17] = hN[18][hN[20]]
    hN[26] = 30484377646963
    hN[20] = v0
    hN[21] = v1
    hN[18] = 0
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[22] = v0
    hN[23] = v1
    hN[25] = "CF\243\248\190\183\247"
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[22] = .3
    hN[20] = 1
    hN[16] = {[hN[17]] = hN[18],[hN[19]] = hN[20], [hN[21]] = hN[22]}
    hN[18] = v0
    hN[21] = "RU\008\212\1270h\214"
    hN[22] = 1815686431565
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[9] = local_26[hN[9]]
    hN[17] = hN[18][hN[20]]
    hN[18] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        character = v117
        character_3 = v1
        ui_node_7 = 7196305689879
        lookup = character_4
        character.fillTrans = lookup
        return "fillTrans"
    end
    hN[10] = {[hN[11]] = hN[12], [hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[9] = hN[9](local_26,hN[10])
    hN[22] = 1055496159723
    hN[13] = "game"
    hN[24] = 6287855602544
    hN[17] = "B\138\239,\244 \132"
    hN[12] = env[hN[13]]
    hN[14] = v0
    hN[15] = v1
    hN[18] = 28333980857226
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[11] = hN[12][hN[13]]
    hN[13] = v0
    hN[16] = "\003Y`\008\169Pi\030\249\247\150"
    hN[14] = v1
    hN[17] = 29111420695796
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[10] = hN[11][hN[12]]
    hN[19] = 20794891019731
    hN[15] = "r\028c\140\211\235Fr\212D\014\253\255n"
    hN[16] = 4700823816332
    hN[12] = v0
    hN[13] = v1
    hN[14] = hN[13](hN[15],hN[16])
    hN[16] = "#\134\147\n\143"
    hN[18] = 28311873794943
    hN[17] = 26459655663649
    hN[11] = hN[12][hN[14]]
    hN[9] = hN[10][hN[11]]
    hN[10] = "Connect"
    hN[10] = hN[9][hN[10]]
    hN[23] = 10987850060796
    hN[11] = function(arg1, arg2)
        local character, character_4, ui_node, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
        event_connection_3 = v44
        ui_node_7 = {pairs(event_connection_3)}
        ui_node_6 = ui_node_7[3]
        lookup = ui_node_7[1]
        character_3 = ui_node_7[2]
        while true do
            ui_node_6 = lookup(character_3,ui_node_6)
            if not ui_node_6 then
                break
            end
        end
        event_connection_3 = v42
        ui_node_7 = {pairs(event_connection_3)}
        lookup = ui_node_7[1]
        character_3 = ui_node_7[2]
        ui_node_6 = ui_node_7[3]
        while true do
            ui_node_6 = lookup(character_3,ui_node_6)
            if not ui_node_6 then
                break
            end
        end
        event_connection_3 = v39
        ui_node_7 = {pairs(event_connection_3)}
        ui_node_6 = ui_node_7[3]
        character_3 = ui_node_7[2]
        lookup = ui_node_7[1]
        while true do
            ui_node_6 = lookup(character_3,ui_node_6)
            if not ui_node_6 then
                break
            end
            event_connection_3 = v88
            character_4 = ui_node_6
            ui_node_7 = event_connection_3(character_4)
        end
        character_4 = task.wait
        character_3 = 2
        lookup = character_4(character_3)
        character_4 = local_player_5_ref_2
        if character_4 then
            character_4 = v95
            character_3 = "Killers"
            ui_node_6 = v51
            lookup = character_4(character_3,ui_node_6)
        end
        character_4 = local_player_5_ref_2
        if character_4 then
            character_4 = v95
            event_connection_3 = v1
            ui_node = 24563944926382
            character_3 = "Survivors"
            ui_node_6 = v52
            lookup = character_4(character_3,ui_node_6)
        end
        character_4 = local_player_5_ref_2
        if character_4 then
            character = 5736264
            lookup = v115()
        end
        character_4 = local_player_5_ref_2
        if character_4 then
            lookup = v123()
        end
        return
    end
    hN[10] = hN[10](hN[9],hN[11])
    hN[9] = run_background_task_ref_2
    hN[20] = 31880835643901
    hN[13] = v0
    hN[14] = v1
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[14] = v0
    hN[17] = "\242\222\132\149v"
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[18] = "11\203\192"
    hN[21] = 12736721868586
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[16] = v1
    hN[10] = "Tab"
    hN[17] = hN[16](hN[18],hN[19])
    hN[19] = "z\211\011OF"
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[10] = hN[9][hN[10]]
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[18] = v1
    hN[20] = "\129\007\1730b["
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[17] = false
    hN[11] = {[hN[12]] = hN[13],[hN[14]] = hN[15], [hN[16]] = hN[17]}
    hN[10] = hN[10](hN[9],hN[11])
    hN[18] = 6049468680961
    hN[13] = v0
    hN[14] = v1
    hN[19] = 2449561338996
    hN[16] = "\167\1479\198\187"
    hN[17] = 4247308421049
    hN[15] = hN[14](hN[16],hN[17])
    hN[12] = hN[13][hN[15]]
    hN[25] = 10049740591687
    hN[21] = 34201505824310
    hN[14] = v0
    hN[20] = 20032088908912
    hN[17] = ".0\228\001\205\242\195\249\217`\170,"
    hN[15] = v1
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[16] = v1
    hN[18] = "\197\017\023\171"
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[26] = "\218+\r\189b\024\029\249/R\152"
    hN[19] = "y7\007\133\149"
    hN[16] = v0
    hN[17] = v1
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[20] = "\r\198\190\026/\226"
    hN[9] = "Section"
    hN[9] = hN[10][hN[9]]
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[17] = false
    hN[11] = {[hN[12]] = hN[13],[hN[14]] = hN[15], [hN[16]] = hN[17]}
    hN[9] = hN[9](hN[10],hN[11])
    hN[14] = v0
    hN[15] = v1
    hN[18] = 15174671408026
    hN[17] = "\203\220\184(\190"
    hN[19] = 14687058287287
    hN[16] = hN[15](hN[17],hN[18])
    hN[13] = hN[14][hN[16]]
    hN[15] = v0
    hN[18] = "T^r\020\248R~\189\167m\014"
    hN[16] = v1
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[21] = 5935673002700
    hN[19] = "-G\212\198"
    hN[16] = v0
    hN[17] = v1
    hN[20] = 32040256158279
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[20] = "'l\192\182]\239\237@"
    hN[17] = v0
    hN[18] = v1
    hN[28] = "\202e?\198\205\233w"
    hN[19] = hN[18](hN[20],hN[21])
    hN[11] = "Section"
    hN[16] = hN[17][hN[19]]
    hN[21] = "\031\001\028<\240\227"
    hN[18] = v0
    hN[19] = v1
    hN[20] = hN[19](hN[21],hN[22])
    hN[11] = hN[10][hN[11]]
    hN[17] = hN[18][hN[20]]
    hN[20] = 26481944129579
    hN[18] = false
    hN[12] = {[hN[13]] = hN[14],[hN[15]] = hN[16],[hN[17]] = hN[18]}
    hN[19] = 10318847234757
    hN[11] = hN[11](hN[10],hN[12])
    hN[27] = 14148318943676
    local v124 = hN[11]
    hN[15] = v0
    hN[16] = v1
    hN[18] = "\006\168\226q\131"
    hN[17] = hN[16](hN[18],hN[19])
    hN[14] = hN[15][hN[17]]
    hN[16] = v0
    hN[17] = v1
    hN[21] = 22766297033065
    hN[19] = "\018m\026@\1285\231\029o\151"
    hN[18] = hN[17](hN[19],hN[20])
    hN[15] = hN[16][hN[18]]
    hN[17] = v0
    hN[20] = "\164\238\212["
    hN[18] = v1
    hN[19] = hN[18](hN[20],hN[21])
    hN[16] = hN[17][hN[19]]
    hN[18] = v0
    hN[11] = "Section"
    hN[19] = v1
    hN[22] = 2365528638541
    hN[21] = "\151Zvo"
    hN[20] = hN[19](hN[21],hN[22])
    hN[22] = "\167BS\243\211{"
    hN[11] = hN[10][hN[11]]
    hN[17] = hN[18][hN[20]]
    hN[19] = v0
    hN[20] = v1
    hN[21] = hN[20](hN[22],hN[23])
    hN[18] = hN[19][hN[21]]
    hN[19] = false
    hN[13] = {[hN[14]] = hN[15], [hN[16]] = hN[17],[hN[18]] = hN[19]}
    hN[11] = hN[11](hN[10],hN[13])
    local v125 = hN[11]
    hN[17] = "\nA\208\233\213\205)\159"
    hN[14] = v0
    hN[23] = 6952013237413
    hN[15] = v1
    hN[18] = 8234054160122
    hN[16] = hN[15](hN[17],hN[18])
    hN[11] = hN[14][hN[16]]
    hN[22] = "\129sU)"
    local v126 = hN[11]
    hN[11] = {}
    hN[11] = {}
    hN[19] = v0
    hN[20] = v1
    hN[21] = hN[20](hN[22],hN[23])
    hN[18] = hN[19][hN[21]]
    hN[20] = v0
    hN[23] = "\215\246\159\018\246\224\144\205Z\183V5\196\249\241\152\153\012@R\191\216.\225"
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[19] = hN[20][hN[22]]
    hN[21] = v0
    hN[24] = "\229Z\\=\018\156\132"
    hN[22] = v1
    hN[23] = hN[22](hN[24],hN[25])
    hN[20] = hN[21][hN[23]]
    hN[23] = v0
    hN[24] = v1
    hN[25] = hN[24](hN[26],hN[27])
    hN[22] = hN[23][hN[25]]
    hN[21] = {hN[22]}
    hN[27] = 34621836476154
    hN[26] = "q\253P\188\165=\249"
    hN[23] = v0
    hN[24] = v1
    hN[25] = hN[24](hN[26],hN[27])
    hN[22] = hN[23][hN[25]]
    hN[25] = v0
    hN[26] = v1
    hN[27] = hN[26](hN[28],hN[29])
    hN[24] = hN[25][hN[27]]
    hN[23] = false
    hN[25] = nil
    hN[27] = v0
    hN[28] = v1
    hN[29] = hN[28](hN[30],hN[31])
    hN[26] = hN[27][hN[29]]
    hN[29] = v0
    hN[27] = nil
    hN[30] = v1
    hN[31] = hN[30](hN[32],hN[33])
    hN[28] = hN[29][hN[31]]
    hN[29] = nil
    hN[31] = v0
    hN[32] = v1
    hN[33] = hN[32](hN[34],hN[35])
    hN[30] = hN[31][hN[33]]
    hN[31] = nil
    hN[33] = v0
    hN[34] = v1
    hN[35] = hN[34](hN[36],hN[37])
    hN[34] = 18118631842037
    hN[32] = hN[33][hN[35]]
    hN[33] = {}
    hN[17] = {[hN[18]] = hN[19],[hN[20]] = hN[21],[hN[22]] = hN[23],[hN[24]] = hN[25],[hN[26]] = hN[27],[hN[28]] = hN[29],[hN[30]] = hN[31], [hN[32]] = hN[33]}
    hN[20] = v0
    hN[25] = 8644888235961
    hN[36] = 6621992913931
    hN[32] = 23831171443545
    hN[23] = "\184a@\245"
    hN[29] = 21381610104548
    hN[24] = 4858926975190
    hN[31] = "\193\026)\213\210\145"
    hN[21] = v1
    hN[22] = hN[21](hN[23],hN[24])
    hN[24] = "\197\216\151R\245j\129\238d\218\179P\197\193/[u\128"
    hN[19] = hN[20][hN[22]]
    hN[21] = v0
    hN[27] = "\2127\254\144Z"
    hN[22] = v1
    hN[23] = hN[22](hN[24],hN[25])
    hN[28] = 1555390513876
    hN[25] = "\243\132c-\164\139\190"
    hN[20] = hN[21][hN[23]]
    hN[22] = v0
    hN[26] = 29023606600907
    hN[23] = v1
    hN[24] = hN[23](hN[25],hN[26])
    hN[21] = hN[22][hN[24]]
    hN[24] = v0
    hN[25] = v1
    hN[26] = hN[25](hN[27],hN[28])
    hN[23] = hN[24][hN[26]]
    hN[28] = "q\002PHL\178\192F"
    hN[37] = "\161\018(r0\160\229\026"
    hN[25] = v0
    hN[26] = v1
    hN[27] = hN[26](hN[28],hN[29])
    hN[24] = hN[25][hN[27]]
    hN[29] = "\155\139\163\161\015:{"
    hN[28] = 33270915021956
    hN[22] = {hN[23], hN[24]}
    hN[27] = "\202<\237\027\201\238\140"
    hN[24] = v0
    hN[25] = v1
    hN[26] = hN[25](hN[27],hN[28])
    hN[30] = 7604859194837
    hN[23] = hN[24][hN[26]]
    hN[33] = "\136\149Y\131]\217M\167"
    hN[26] = v0
    hN[27] = v1
    hN[24] = false
    hN[28] = hN[27](hN[29],hN[30])
    hN[25] = hN[26][hN[28]]
    hN[26] = nil
    hN[28] = v0
    hN[29] = v1
    hN[30] = hN[29](hN[31],hN[32])
    hN[27] = hN[28][hN[30]]
    hN[30] = v0
    hN[28] = nil
    hN[31] = v1
    hN[32] = hN[31](hN[33],hN[34])
    hN[29] = hN[30][hN[32]]
    hN[35] = "\237\004\132\141"
    hN[32] = v0
    hN[30] = nil
    hN[33] = v1
    hN[34] = hN[33](hN[35],hN[36])
    hN[31] = hN[32][hN[34]]
    hN[32] = nil
    hN[34] = v0
    hN[35] = v1
    hN[36] = hN[35](hN[37],hN[38])
    hN[33] = hN[34][hN[36]]
    hN[34] = {}
    hN[37] = 12042565850599
    hN[18] = {[hN[19]] = hN[20], [hN[21]] = hN[22], [hN[23]] = hN[24],[hN[25]] = hN[26],[hN[27]] = hN[28],[hN[29]] = hN[30],[hN[31]] = hN[32], [hN[33]] = hN[34]}
    hN[30] = "\006\218\1994F\175\248"
    hN[25] = 32805690129324
    hN[26] = 3477876983379
    hN[24] = "xN\185\234"
    hN[21] = v0
    hN[34] = ";\225\031\146)\234\143-"
    hN[27] = 9757143749055
    hN[22] = v1
    hN[23] = hN[22](hN[24],hN[25])
    hN[20] = hN[21][hN[23]]
    hN[22] = v0
    hN[25] = "\209\235g\001F\220\170y*Gi\131\150\017\014,"
    hN[36] = "~J\188z"
    hN[23] = v1
    hN[28] = "\185x\014.\215\021\224\158\177\167\224\156"
    hN[24] = hN[23](hN[25],hN[26])
    hN[29] = 33861186289047
    hN[21] = hN[22][hN[24]]
    hN[26] = "\167\027^\206\143\148\164"
    hN[23] = v0
    hN[24] = v1
    hN[38] = "\194\170\183\169\216\179\220\219"
    hN[25] = hN[24](hN[26],hN[27])
    hN[22] = hN[23][hN[25]]
    hN[33] = 21443111216897
    hN[25] = v0
    hN[26] = v1
    hN[27] = hN[26](hN[28],hN[29])
    hN[24] = hN[25][hN[27]]
    hN[23] = {hN[24]}
    hN[35] = 16162252856678
    hN[31] = 1054715789803
    hN[29] = 13796724218136
    hN[25] = v0
    hN[28] = "x\182\221b\022U}"
    hN[32] = "\025d\144\0262W"
    hN[26] = v1
    hN[27] = hN[26](hN[28],hN[29])
    hN[24] = hN[25][hN[27]]
    hN[25] = false
    hN[27] = v0
    hN[28] = v1
    hN[29] = hN[28](hN[30],hN[31])
    hN[26] = hN[27][hN[29]]
    hN[29] = v0
    hN[30] = v1
    hN[31] = hN[30](hN[32],hN[33])
    hN[28] = hN[29][hN[31]]
    hN[27] = nil
    hN[31] = v0
    hN[29] = nil
    hN[32] = v1
    hN[33] = hN[32](hN[34],hN[35])
    hN[30] = hN[31][hN[33]]
    hN[33] = v0
    hN[34] = v1
    hN[31] = nil
    hN[35] = hN[34](hN[36],hN[37])
    hN[32] = hN[33][hN[35]]
    hN[33] = nil
    hN[35] = v0
    hN[36] = v1
    hN[37] = hN[36](hN[38],hN[39])
    hN[34] = hN[35][hN[37]]
    hN[35] = {}
    hN[19] = {[hN[20]] = hN[21],[hN[22]] = hN[23],[hN[24]] = hN[25],[hN[26]] = hN[27],[hN[28]] = hN[29], [hN[30]] = hN[31], [hN[32]] = hN[33],[hN[34]] = hN[35]}
    hN[27] = "task"
    hN[11] = {hN[17], hN[18],hN[19]}
    hN[36] = 33395858373823
    hN[18] = function(arg1, arg2, arg3)
        local character, character_4, lookup, event_connection_2
        lookup = v126
        character_4 = isfolder(lookup)
        if not character_4 then
            character_4 = v126
            event_connection_2 = makefolder(character_4)
        end
        return
    end
    hN[31] = "\199\024\174\252\253"
    local v129 = hN[11]
    hN[20] = function(arg1, arg2, arg3)
        local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        character = {}
        lookup = character
        character_3 = "Themes"
event_connection_2 = workspace:FindFirstChild(character_3)
        character_3 = event_connection_2
        if not character_3 then
            return "killerSet"
        else
character = character_3:FindFirstChild(character_4)
            ui_node_6 = character
            if not ui_node_6 then
                return "killerSet"
            else
                character = ui_node_6.IsA
                event_connection_2 = "Sound"
                if character(ui_node_6,event_connection_2) then
                    ui_node_2 = "\220=\022l\205."
                    event_connection_2 = table.insert(lookup,ui_node_6)
                else
                    char_fn = {ui_node_6.GetChildren(ui_node_6)}
                    ui_node = {ipairs(unpack_fn(char_fn))}
                    event_connection_3 = ui_node[2]
                    event_connection_2 = ui_node[1]
                    ui_node_7 = ui_node[3]
                    char_fn = event_connection_2
                    while true do
                        ui_node_7,ui_node_2 = char_fn(event_connection_3,ui_node_7)
                        if not ui_node_7 then
                            break
                        end
                        character = ui_node_2.IsA
                        local_player_5_ref_11_ref = "Sound"
                        if character(ui_node_2,local_player_5_ref_11_ref) then
                            local_player_5_ref_11_ref = table.insert(lookup,ui_node_2)
                        end
                    end
                    ui_node_7 = 0
                    event_connection_3 = #lookup
                    if event_connection_3 == ui_node_7 then
                        ui_node = {ui_node_6.GetDescendants(ui_node_6)}
                        ui_node_2 = {ipairs(unpack_fn(ui_node))}
                        ui_node_7 = ui_node_2[2]
                        event_connection_3 = ui_node_2[1]
                        char_fn = ui_node_2[3]
                        while true do
                            char_fn,ui_node_2 = event_connection_3(ui_node_7,char_fn)
                            if not char_fn then
                                break
                            end
                            local_player_5_ref_11_ref = "Sound"
                            if ui_node_2.IsA(ui_node_2,local_player_5_ref_11_ref) then
                                local_player_5_ref_20 = 16808326782610
                                local_player_5_ref_11_ref = v0
                                local_player_5_ref_11_ref = v1
                                local_player_5_ref_11_ref = table.insert(lookup,ui_node_2)
                            end
                            ui_node = nil
                            character = 670339
                            ui_node_2 = nil
                        end
                    end
                end
                event_connection_2 = {lookup}
                return "killerSet"
            end
        end
    end
    local v130 = hN[18]
    hN[19] = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, ui_node, r26_value, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
        event_connection_2 = v130()
        character = {}
        local_player_5_ref_2 = character
        character_4 = "[...]"
        event_connection_2 = {character_4}
        local_player_5_ref_20 = event_connection_2
        event_connection_3 = v126
        ui_node_7 = {pcall(listfiles,event_connection_3)}
        lookup = ui_node_7[1]
        character_3 = ui_node_7[2]
        character_4 = not lookup
        if character_4 then
            return
        else
            char_fn = {ipairs(character_3)}
            event_connection_3 = char_fn[2]
            ui_node_7 = char_fn[3]
            ui_node_6 = char_fn[1]
            if ui_node_7 then
ui_node = char_fn:lower()
                local_player_5_ref_11_ref = "%.([^%.]+)$"
ui_node_2 = ui_node:match(local_player_5_ref_11_ref)
                local_player_5_ref_11_ref = "mp3"
                event_connection_4 = ui_node_2 == local_player_5_ref_11_ref
                if not event_connection_4 then
                    local_player_5_ref = "ogg"
                    local_player_5_ref_11_ref = ui_node_2 == local_player_5_ref
                    if not local_player_5_ref_11_ref then
                        local_player_5_ref_20 = "wav"
                        text_label = ui_node_2 == local_player_5_ref_20
                        if not text_label then
                            local_player_5_ref_20 = "flac"
                            text_label = ui_node_2 == local_player_5_ref_20
                            local_player_5_ref_11_ref = text_label
                        end
                        event_connection_4 = local_player_5_ref_11_ref
                    end
                    ui_node = event_connection_4
                end
                if ui_node then
                    local_player_5_ref_11_ref = "([^/\\]+)%.[^%.]+$"
ui_node = char_fn:match(local_player_5_ref_11_ref)
                    if ui_node then
                        local_player_5_ref = {pcall(getcustomasset,char_fn)}
                        local_player_5_ref_11_ref = local_player_5_ref[2]
                        event_connection_4 = local_player_5_ref[1]
                        if event_connection_4 then
                            if local_player_5_ref_11_ref then
                                r26_value = ""
                                local_player_5_ref_13_ref_ref = v0
                                local_9 = 31351529257223
                                local_player_5_ref_11_ref = v1(r26_value,local_9)
                                local_player_5_ref_18 = local_player_5_ref_13_ref_ref[local_player_5_ref_11_ref]
                                local_player_5_ref_20 = local_player_5_ref_11_ref ~= local_player_5_ref_18
                                local_player_5_ref = local_player_5_ref_20
                            end
                            local_player_5_ref_11_ref = local_player_5_ref
                        end
                        if local_player_5_ref_11_ref then
                            math_lib_9 = 32681597844338
                            local_player_5_ref_11_ref = table.insert
                            local_player_5_ref = local_player_5_ref_2
                            local_player_5_ref_11_ref = v1
                            text_label = {name = ui_node,path = char_fn,asset = local_player_5_ref_11_ref}
                            local_player_5_ref_11_ref = local_player_5_ref_11_ref(local_player_5_ref,text_label)
                            text_label = v0
                            local_player_5_ref_11_ref = 22995305802196
                            local_player_5_ref_20 = v1
                            local_player_5_ref_11_ref = table.insert
                            local_player_5_ref = local_player_5_ref_20
                            local_player_5_ref_11_ref = local_player_5_ref_11_ref(local_player_5_ref,ui_node)
                        end
                        local_player_5_ref_11_ref = nil
                        event_connection_4 = nil
                    end
                    ui_node = nil
                end
                ui_node_2 = nil
                character_4 = nil
                char_fn = nil
            end
            return
        end
    end
    hN[22] = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, ui_node, text_label, ui_node_7, lookup, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, char_fn, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        ui_node_7 = v0
        ui_node_6 = character_4.soundIds
        event_connection_3 = {pairs(ui_node_6)}
        character_3 = event_connection_3[3]
        lookup = event_connection_3[2]
        event_connection_2 = event_connection_3[1]
        ui_node_6 = event_connection_2
        if character_3 then
            event_connection_3 = character_3
            local local_player_5_ref_7_ref = event_connection_3
            event_connection_3 = local_player_5_ref_7_ref
            local_player_5_ref_18 = ui_node_7
            ui_node = event_connection_3
            ui_node_7 = local_player_5_ref_18
            if ui_node then
                ui_node_2 = event_connection_3
                event_connection_4 = v0
                text_label = 2990702757232
                local_player_5_ref_11_ref = v1
                character = 8971638
                ui_node = ui_node_2.Parent
                char_fn = ui_node
            end
            if char_fn then
                local_player_5_ref_2 = function(arg1, arg2, arg3, arg4)
                        local character, character_4, lookup, event_connection_2, ui_node_6, character_3
                        character = event_connection_3
                        character_4 = ui_node_7
                        character.SoundId = character_4
                        return
                    end
                char_fn = local_player_5_ref_18(local_player_5_ref_2)
        end
        end
        ui_node_7 = 20792679081426
        character_3 = v1
        lookup = {}
        character_4[local_player_5_ref_18] = lookup
        return
    end
    hN[38] = 7041084689614
    local v133 = hN[19]
    hN[24] = function(arg1)
        local character, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_5, local_25, r26_value, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
        local v136 = arg1
        event_connection_2 = v136
        character_3 = v0
        lookup = character_3[";\194\178\194\166\195\158\195\185\195\160\195\155j"]
        if event_connection_2[lookup] then
            event_connection_2 = v136
            character_3 = v0
            lookup = character_3[";\194\178\194\166\195\158\195\185\195\160\195\155j"]
            character = event_connection_2[lookup]
event_connection_2 = character:Disconnect()
        end
        local_player_5_ref_11_ref = 25996271415113
        character = v136
        character_3 = v0
        event_connection_2 = character_3[";\194\178\194\166\195\158\195\185\195\160\195\155j"]
        ui_node_6 = character_2
        ui_node_7 = v0
        char_fn = v1
        character_3 = ui_node_6.Heartbeat
        event_connection_3 = function(arg1)
                local character, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_5, local_25, r26_value, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, local_player_5_ref, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
                character_4 = arg1
                event_connection_2 = 0
                character = event_connection_2 + character_4
                local_player_5_ref_2 = character
                lookup = local_player_5_ref_2
                character_3 = v134
                event_connection_2 = lookup < character_3
                if event_connection_2 then
                    return
                else
                    ui_node_7 = v136
                    event_connection_3 = ui_node_7.enabled
                    ui_node_6 = not event_connection_3
                    if not ui_node_6 then
                        ui_node_7 = v136
                        event_connection_3 = ui_node_7.trackId
                        ui_node_6 = not event_connection_3
                        lookup = ui_node_6
                    end
                    if lookup then
                        return "trackId"
                    else
                        char_fn = v136
                        ui_node_7 = char_fn.targets
                        char_fn = {ipairs(ui_node_7)}
                        event_connection_3 = char_fn[3]
                        ui_node_6 = char_fn[2]
                        character_3 = char_fn[1]
                        while true do
                            event_connection_3,ui_node_7 = character_3(ui_node_6,event_connection_3)
                            if not event_connection_3 then
                                break
                            end
                            lookup = event_connection_3
                            local_player_5_ref_11_ref = {v135(ui_node_7)}
                            event_connection_4 = {ipairs(unpack_fn(local_player_5_ref_11_ref))}
                            ui_node_2 = event_connection_4[2]
                            local_player_5_ref_11_ref = event_connection_4[3]
                            local_player_5_ref_2 = event_connection_4[1]
                            while true do
                                local_player_5_ref_11_ref,event_connection_4 = local_player_5_ref_2(ui_node_2,local_player_5_ref_11_ref)
                                if not local_player_5_ref_11_ref then
                                    break
                                end
                                char_fn = local_player_5_ref_11_ref
                                local_player_5_ref_11_ref = event_connection_4
                                event_connection_4 = local_player_5_ref_11_ref
                                if local_player_5_ref_11_ref then
                                    local_5 = 34890182492023
                                    local_player_5_ref_11_ref = event_connection_4
                                    local_player_5_ref_11_ref = event_connection_4
                                    local_player_5_ref_11_ref = local_player_5_ref_11_ref.SoundId
                                    r26_value = v136
                                    local_player_5_ref_11_ref = r26_value.trackId
                                    local_player_5_ref_13_ref_ref = local_player_5_ref_11_ref ~= local_player_5_ref_11_ref
                                    if local_player_5_ref_13_ref_ref then
                                        local_player_5_ref_11_ref = event_connection_4
                                        local_9 = v1
                                        local_25 = 34540401262292
                                        local_player_5_ref_13_ref_ref = local_player_5_ref_11_ref.SoundId
                                        local_player_5_ref_20 = local_player_5_ref_13_ref_ref
                                    end
                                    if not local_player_5_ref_20 then
                                        local_player_5_ref_18 = v0
                                        local_player_5_ref_11_ref = ""
                                        local_player_5_ref_13_ref_ref = v1
                                        r26_value = 28860753065087
                                        local_player_5_ref_11_ref = local_player_5_ref_13_ref_ref(local_player_5_ref_11_ref,r26_value)
                                        local_player_5_ref_20 = local_player_5_ref_18[local_player_5_ref_11_ref]
                                        local_player_5_ref = local_player_5_ref_20
                                    end
                                    character = 288999
                                    local_player_5_ref_11_ref[local_player_5_ref_11_ref] = local_player_5_ref
                                end
                                local_player_5_ref_11_ref = function(arg1, arg2)
                                            local character, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
                                            character_4 = event_connection_4
                                            character_3 = v0
                                            lookup = character_3[event_connection_3]
                                            event_connection_2 = character_4[lookup]
                                            lookup = v136
                                            character_4 = lookup.trackId
                                            if event_connection_2 ~= character_4 then
                                                character = event_connection_4
                                                lookup = v136
                                                event_connection_3 = v1
                                                character_4 = lookup.trackId
                                                character.SoundId = character_4
                                            end
                                            character_4 = event_connection_4
                                            character_3 = v0
                                            lookup = character_3[event_connection_3]
                                            event_connection_2 = character_4[lookup]
                                            if not event_connection_2 then
                                                character = event_connection_4
event_connection_2 = character:Play()
                                            end
                                            return
                                        end
                                local_player_5_ref_11_ref = local_player_5_ref_11_ref(local_player_5_ref_11_ref)
                            end
                        end
                        lookup = {}
                        local_player_5_ref_2 = v136
                        local_player_5_ref_11_ref = v0
                        ui_node_2 = local_player_5_ref_11_ref[local_player_5_ref_11_ref]
                        char_fn = local_player_5_ref_2[ui_node_2]
                        local_player_5_ref_2 = {pairs(char_fn)}
                        ui_node_7 = local_player_5_ref_2[3]
                        if ui_node_7 then
                            character_3 = ui_node_7
                            ui_node_2 = not character_3
                            if not ui_node_2 then
                                local_player_5_ref_20 = 11802302682487
                                local_player_5_ref_11_ref = character_3.Parent
                                ui_node_2 = not local_player_5_ref_11_ref
                                char_fn = ui_node_2
                            end
                            if char_fn then
local_player_5_ref_2 = table
                                local_player_5_ref_11_ref = v0
                                ui_node_2 = local_player_5_ref_11_ref[local_player_5_ref_11_ref]
                                local_player_5_ref_2 = local_player_5_ref_2[ui_node_2](lookup,character_3)
                            end
                        end
                        char_fn = {ipairs(lookup)}
                        event_connection_3 = char_fn[2]
                        ui_node_7 = char_fn[3]
                        if ui_node_7 then
                            ui_node_2 = v136
                            character_3 = ui_node_7
                            text_label = 34828528713562
                            event_connection_4 = v0
                            local_player_5_ref_11_ref = v1
                            local_player_5_ref_2 = ui_node_2.soundIds
                            ui_node_2 = nil
                            char_fn = nil
                        end
                        return VzOdgPyHnwJVJ
                    end
                end
            end
        lookup = 0
        character_4 = v136
        ui_node_6 = character_3.Connect
        character[event_connection_2] = ui_node_6
        return
    end
    hN[21] = function(arg1, arg2, arg3)
        local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, event_connection_4, character_3
        local v139 = arg1
        lookup = v139
        event_connection_2 = lookup.trackId
        if not event_connection_2 then
            return
        else
            event_connection_3 = v139
            ui_node_7 = "targets"
            ui_node_6 = event_connection_3.targets
            event_connection_3 = {ipairs(ui_node_6)}
            character_3 = event_connection_3[3]
            lookup = event_connection_3[2]
            event_connection_2 = event_connection_3[1]
            ui_node_6 = event_connection_2
            if character_3 then
                event_connection_3 = character_3
                event_connection_4 = {v135(ui_node_7)}
                local_player_5_ref_11_ref = {ipairs(unpack_fn(event_connection_4))}
                ui_node_2 = local_player_5_ref_11_ref[3]
                local_player_5_ref_2 = local_player_5_ref_11_ref[2]
                char_fn = local_player_5_ref_11_ref[1]
                while true do
                    ui_node_2,event_connection_4 = char_fn(local_player_5_ref_2,ui_node_2)
                    if not ui_node_2 then
                        break
                    end
                    local_player_5_ref_11_ref = event_connection_4
                    event_connection_4 = local_player_5_ref_11_ref
                    local_player_5_ref_11_ref = v139
                    local_player_5_ref_11_ref = local_player_5_ref_11_ref.soundIds
                    local_player_5_ref_11_ref = event_connection_4
                    local_player_5_ref_11_ref = local_player_5_ref_11_ref[local_player_5_ref_11_ref]
                    if not local_player_5_ref_11_ref then
                        local_player_5_ref_11_ref = v139
                        character = local_player_5_ref_11_ref.soundIds
                        local_player_5_ref_11_ref = event_connection_4
                        local_player_5_ref_11_ref = event_connection_4
                        local_player_5_ref_20 = v0
                        local_player_5_ref_18 = v1
                        local_player_5_ref_11_ref = 314240680082
                        local_player_5_ref_11_ref = local_player_5_ref_11_ref.SoundId
                        local_player_5_ref_11_ref[local_player_5_ref_11_ref] = local_player_5_ref_11_ref
                    end
                    local_player_5_ref_20 = function(arg1, arg2)
                            local character, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, character_3
                            character_4 = event_connection_4
                            character_3 = v0
                            lookup = character_3[event_connection_3]
                            event_connection_2 = character_4[lookup]
                            lookup = v139
                            character_4 = lookup.trackId
                            if event_connection_2 ~= character_4 then
                                character = event_connection_4
                                local_player_5_ref_2 = 15060808751973
                                lookup = v139
                                event_connection_3 = v1
                                character_4 = lookup.trackId
                                character.SoundId = character_4
                            end
                            character_4 = event_connection_4
                            character_3 = v0
                            ui_node_6 = v1
                            char_fn = 34201531334198
                            lookup = character_3[event_connection_3]
                            event_connection_2 = character_4[lookup]
                            if not event_connection_2 then
                                character = event_connection_4
event_connection_2 = character:Play()
                            end
                            return
                        end
                    local_player_5_ref_11_ref = nil
            end
                ui_node_7 = nil
                character = 4725865
                event_connection_3 = nil
            end
            return
        end
    end
    local v141 = hN[21]
    local v142 = hN[22]
    hN[22] = 1030331.5 - 1030331
    hN[25] = function(arg1, arg2, arg3, arg4)
        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        character_4 = arg1
        if character_4.conn then
            ui_node_7 = 26307613355994
            character = character_4.conn
event_connection_2 = character:Disconnect()
        end
        event_connection_3 = 25761667329756
        event_connection_2 = v142(character_4)
        lookup = v1
        event_connection_2 = false
        character_4.enabled = event_connection_2
        return
    end
    hN[35] = 8404171001673
    local v143 = hN[24]
    hN[32] = 25324772601360
    local v144 = hN[25]
    hN[26] = env[hN[27]]
    hN[34] = 31407420995873
    hN[28] = v0
    hN[29] = v1
    hN[30] = hN[29](hN[31],hN[32])
    hN[27] = hN[28][hN[30]]
    hN[25] = hN[26][hN[27]]
    hN[37] = 19483009573744
    hN[32] = "\006\166\132\029\003"
    hN[27] = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, event_connection_4, character_3
        character_4 = "Themes"
        lookup = 15
event_connection_2 = workspace:WaitForChild(character_4,lookup)
        character_4 = event_connection_2
        if not character_4 then
            return
        else
            ui_node_7 = 28752370086988
            character_3 = v1
            character = character_4.ChildAdded
            lookup = function(arg1, arg2, arg3)
                    local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, event_connection_4, character_3
                    character_4 = arg1
                    character_3 = v0
                    ui_node_7 = ".\017P\239"
                    lookup = character_3["!\194\130\194\160\194\184Y\194\147\127\0299\195\152"]
                    character = task[lookup]
                    lookup = .3
                    event_connection_2 = character(lookup)
                    ui_node_6 = v129
                    event_connection_3 = {ipairs(ui_node_6)}
                    lookup = event_connection_3[2]
                    event_connection_2 = event_connection_3[1]
                    character_3 = event_connection_3[3]
                    ui_node_6 = event_connection_2
                    if character_3 then
                        local_player_5_ref_2 = ui_node_7.enabled
                        if local_player_5_ref_2 then
                            local_player_5_ref_2 = ui_node_7.trackId
                            char_fn = local_player_5_ref_2
                        end
                        if char_fn then
                            local_player_5_ref_11_ref = ui_node_7.targets
                            event_connection_4 = {ipairs(local_player_5_ref_11_ref)}
                            ui_node_2 = event_connection_4[3]
                            local_player_5_ref_2 = event_connection_4[2]
                            char_fn = event_connection_4[1]
                            while true do
                                ui_node_2,event_connection_4 = char_fn(local_player_5_ref_2,ui_node_2)
                                if not ui_node_2 then
                                    break
                                end
                                local_player_5_ref_11_ref = v0
                                text_label = v1
                                local_player_5_ref_13_ref_ref = 17387590737824
                                local_player_5_ref_11_ref = character_4.Name
                                if local_player_5_ref_11_ref == event_connection_4 then
                                    local_player_5_ref_11_ref = v141(ui_node_7)
                                end
                                local_player_5_ref_11_ref = nil
                                event_connection_4 = nil
                            end
                        end
                        ui_node_7 = nil
                        event_connection_3 = nil
                    end
                    return
                end
            event_connection_2 = character[event_connection_2]
            character_4 = nil
            event_connection_2 = event_connection_2(character,lookup)
            return
        end
    end
    hN[26] = hN[25](hN[27])
    hN[33] = 25907877162784
    hN[26] = function(arg1)
        local character, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_25, r26_value, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
        character_4 = arg1
        event_connection_2 = v129
        character = event_connection_2[character_4]
        local_player_5_ref_2 = character
        character_3 = function(arg1, arg2, arg3, arg4)
                local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                event_connection_2 = local_player_5_ref_2
                lookup = v0
                character_3 = v1
                character = event_connection_2.dropdown
event_connection_2 = character:Destroy()
                return
            end
        event_connection_2 = pcall(character_3)
        character = local_player_5_ref_2
        character_3 = v0
        event_connection_2 = character_3["\194\142\031\195\149Z|\002Ad"]
        character_3 = v124
        local_player_5_ref_2 = "Track \226\128\148 "
        local_25 = 1755716518705
        local_player_5_ref_11_ref = local_player_5_ref_2
        ui_node_2 = local_player_5_ref_11_ref.name
        char_fn = local_player_5_ref_2 .. ui_node_2
        character_4 = nil
        ui_node_6 = character_3.Dropdown
        local_player_5_ref_20 = local_player_5_ref_20
        local_player_5_ref_18 = 1
        local_player_5_ref_20 = local_player_5_ref_20
        text_label = local_player_5_ref_20[local_player_5_ref_18]
        local_player_5_ref_11_ref = false
        local_9 = v1
        local_player_5_ref_18 = false
        math_lib_8 = function(arg1, arg2, arg3)
                local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, local_player_5_ref_20, event_connection_4, character_3
                character_4 = arg1
                event_connection_2 = "[...]"
                if character_4 == event_connection_2 then
                    event_connection_2 = local_player_5_ref_2
                    character_3 = v0
                    ui_node_6 = v1
                    lookup = character_3["\031Q\194\172\194\156\028\195\147\195\152"]
                    if event_connection_2[lookup] then
                        character = v144
                        lookup = local_player_5_ref_2
                        event_connection_2 = character(lookup)
character = pcall
                        lookup = function(arg1, arg2)
                                    local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                                    event_connection_2 = local_player_5_ref_2
                                    lookup = v0
                                    ui_node_7 = 9459863310645
                                    character = event_connection_2.toggle
                                    character_4 = false
event_connection_2 = character:Set(character_4)
                                    return
                                end
                        event_connection_2 = character(lookup)
                    end
                    return "Set"
                else
                    ui_node_6 = local_player_5_ref_2
                    event_connection_3 = {ipairs(ui_node_6)}
                    character_3 = event_connection_3[3]
                    if character_3 then
                        char_fn = ui_node_7.name
                        if char_fn == character_4 then goto block_12556711 else goto block_9015514 end
                        ::block_12556711::
                        character = local_player_5_ref_2
                        local_player_5_ref_11_ref = 583104561423
                        event_connection_4 = v1
                        local_player_5_ref_2 = ui_node_7.asset
                        character.trackId = local_player_5_ref_2
                        goto block_4736025
                        ::block_11078337::
                        character = v142
                        character_3 = local_player_5_ref_2
                        lookup = character(character_3)
                        character = v141
                        character_3 = local_player_5_ref_2
                        lookup = character(character_3)
                        return
                        ::block_9015514::
                        character = 8718024
                    end
                    ::block_4736025::
                    ui_node_6 = local_player_5_ref_2
                    ui_node_7 = v0
                    local_player_5_ref_11_ref = 28940139394212
                    char_fn = v1
                    character_3 = ui_node_6.enabled
                    if character_3 then goto block_11078337 end
                end
            end
        event_connection_3 = {[ui_node_7] = char_fn,enabled = "\023\236\251\163\138'\031", [local_player_5_ref_11_ref] = event_connection_4,asset = "#\144\030\167'",[local_player_5_ref_11_ref] = text_label, Multi = local_player_5_ref_18, AllowNone = 28940139394212,Callback = math_lib_8}
        lookup = local_player_5_ref_2
        character[event_connection_2] = ui_node_6
        return
                    end
    local v146 = hN[26]
    hN[26] = v133
    hN[27] = hN[26]()
    hN[29] = v0
    hN[30] = v1
    hN[31] = hN[30](hN[32],hN[33])
    hN[28] = hN[29][hN[31]]
    hN[33] = "\193\253G?\0008\005\255\020|\240\182\008"
    hN[30] = v0
    hN[31] = v1
    hN[32] = hN[31](hN[33],hN[34])
    hN[39] = 5630561913405
    hN[29] = hN[30][hN[32]]
    hN[31] = v0
    hN[32] = v1
    hN[34] = "U\169i\251"
    hN[33] = hN[32](hN[34],hN[35])
    hN[30] = hN[31][hN[33]]
    hN[32] = v0
    hN[33] = v1
    hN[35] = "q\17442\187 o\177b@\145k`\228f\022\139\148w#\178,\240\192n\160\173"
    hN[34] = hN[33](hN[35],hN[36])
    hN[26] = "Button"
    hN[31] = hN[32][hN[34]]
    hN[33] = v0
    hN[34] = v1
    hN[36] = "y\015)i"
    hN[35] = hN[34](hN[36],hN[37])
    hN[32] = hN[33][hN[35]]
    hN[26] = hN[9][hN[26]]
    hN[37] = "\198\154c\142\135\005\168lK\132"
    hN[34] = v0
    hN[35] = v1
    hN[36] = hN[35](hN[37],hN[38])
    hN[33] = hN[34][hN[36]]
    hN[35] = v0
    hN[36] = v1
    hN[38] = "\213\170\015\143|\244\","
    hN[37] = hN[36](hN[38],hN[39])
    hN[34] = hN[35][hN[37]]
    hN[35] = function(arg1, arg2)
        local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, local_player_5_ref_20, event_connection_4, character_3
        character = v133
        lookup = 3
        event_connection_2 = character()
        event_connection_2 = 1
        character_3 = 1
        character_4 = 0
        ui_node_6 = character_3 < character_4
        character_4 = event_connection_2 - character_3
        while true do
            character_4 = character_4 + character_3
            event_connection_2 = ((not ui_node_6) and (character_4 <= lookup)) or (ui_node_6 and (character_4 >= lookup))
            if not event_connection_2 then
                break
            end
            event_connection_3 = character_4
            event_connection_2 = v146(event_connection_3)
            event_connection_3 = nil
        end
        character = v10
        character_3 = v0
        lookup = character_3[event_connection_3]
        local_player_5_ref_11_ref = 18082910232804
        ui_node_7 = "Found: "
        local_player_5_ref_2 = local_player_5_ref_2
        char_fn = #local_player_5_ref_2
        event_connection_3 = ui_node_7 .. char_fn
        char_fn = 3
        local_player_5_ref_11_ref = v0
        event_connection_4 = v1
        character_4 = {[lookup] = "Music", Content = event_connection_3,Duration = 3,Icon = "refresh-cw"}
event_connection_2 = character:Notify(character_4)
        return
    end
    hN[27] = {[hN[28]] = hN[29],[hN[30]] = hN[31],[hN[32]] = hN[33], [hN[34]] = hN[35]}
    hN[26] = hN[26](hN[9],hN[27])
    hN[34] = 10137025466992
    hN[33] = 23102369278469
    hN[32] = "K\136\226\141\192"
    hN[29] = v0
    hN[30] = v1
    hN[31] = hN[30](hN[32],hN[33])
    hN[35] = 33468063120608
    hN[38] = 20550508258657
    hN[26] = "Paragraph"
    hN[36] = 33974438198732
    hN[39] = 7354624445792
    hN[28] = hN[29][hN[31]]
    hN[30] = v0
    hN[33] = "(\019:\208\246\189\140\136"
    hN[31] = v1
    hN[32] = hN[31](hN[33],hN[34])
    hN[26] = hN[9][hN[26]]
    hN[34] = "\021\245M\139"
    hN[29] = hN[30][hN[32]]
    hN[31] = v0
    hN[32] = v1
    hN[33] = hN[32](hN[34],hN[35])
    hN[30] = hN[31][hN[33]]
    hN[37] = 20376643069200
    hN[32] = v0
    hN[35] = "\164\228\230\232i%\199\204\142\023\027?\180\179E\228j<\167(\186\173g\239f7\003\233s\225\004\202\225K\199\212\217M\008#=\162\001\022P\229-\162\150\000\t\238\021\177\014\138\173\174E\000Hk\184K\215\209n\158\176\178\189\247\208^@\161\168a\235X|\154\022\232i\253\134\174\252\250\221w"
    hN[33] = v1
    hN[34] = hN[33](hN[35],hN[36])
    hN[31] = hN[32][hN[34]]
    hN[33] = v0
    hN[34] = v1
    hN[36] = "g)T\185\223"
    hN[35] = hN[34](hN[36],hN[37])
    hN[32] = hN[33][hN[35]]
    hN[34] = v0
    hN[37] = "\129\181oB"
    hN[35] = v1
    hN[36] = hN[35](hN[37],hN[38])
    hN[33] = hN[34][hN[36]]
    hN[35] = v0
    hN[36] = v1
    hN[38] = "\186\184\139\233\r\215\146V\131"
    hN[37] = hN[36](hN[38],hN[39])
    hN[34] = hN[35][hN[37]]
    hN[35] = 22
    hN[37] = v0
    hN[38] = v1
    hN[39] = hN[38](hN[40],hN[41])
    hN[36] = hN[37][hN[39]]
    hN[39] = "Color3"
    hN[38] = env[hN[39]]
    hN[40] = v0
    hN[41] = v1
    hN[42] = hN[41](hN[43],hN[44])
    hN[39] = hN[40][hN[42]]
    hN[37] = hN[38][hN[39]]
    hN[41] = 255
    hN[40] = 220
    hN[39] = 180
    hN[38] = hN[37](hN[39],hN[40],hN[41])
    hN[27] = {[hN[28]] = hN[29], [hN[30]] = hN[31], [hN[32]] = hN[33],[hN[34]] = hN[35], [hN[36]] = hN[38]}
    hN[26] = hN[26](hN[9],hN[27])
    hN[27] = "ipairs"
    hN[26] = env[hN[27]]
    hN[30] = v129
    hN[31] = {hN[26](hN[30])}
    hN[28] = hN[31][2]
    hN[27] = hN[31][1]
    hN[29] = hN[31][3]
    hN[29],hN[30] = hN[27](hN[28],hN[29])
    if hN[29] then goto block_2381250 else goto block_6678119 end
    ::block_2381250::
    hN[36] = "\245\159\163K\193H"
    hN[43] = "kP\216p"
    hN[47] = "\140\255r[hT"
    hN[37] = 15249098726332
    hN[40] = "\003\140\237\232\235"
    hN[26] = hN[29]
    hN[30] = hN[31]
    hN[31] = runtime_slots[hN[30]]
    hN[33] = v0
    hN[44] = 137214902335
    hN[41] = 506006716651
    hN[34] = v1
    hN[35] = hN[34](hN[36],hN[37])
    hN[32] = hN[33][hN[35]]
    hN[33] = v124
    hN[37] = v0
    hN[49] = ",8\128\002\213\132\222"
    hN[38] = v1
    hN[39] = hN[38](hN[40],hN[41])
    hN[36] = hN[37][hN[39]]
    hN[38] = runtime_slots[hN[30]]
    hN[40] = v0
    hN[34] = "Toggle"
    hN[41] = v1
    hN[42] = hN[41](hN[43],hN[44])
    hN[34] = hN[33][hN[34]]
    hN[39] = hN[40][hN[42]]
    hN[54] = "\155H\192\154\200]QM"
    hN[45] = 24764884512012
    hN[43] = 22787729615219
    hN[37] = hN[38][hN[39]]
    hN[44] = "\148\176\026\222\132\173Xy\210"
    hN[42] = "\030M\011\219"
    hN[39] = v0
    hN[40] = v1
    hN[48] = 720319463759
    hN[41] = hN[40](hN[42],hN[43])
    hN[38] = hN[39][hN[41]]
    hN[41] = v0
    hN[42] = v1
    hN[43] = hN[42](hN[44],hN[45])
    hN[40] = hN[41][hN[43]]
    hN[43] = "table"
    hN[50] = 16543496920599
    hN[42] = env[hN[43]]
    hN[44] = v0
    hN[45] = v1
    hN[46] = hN[45](hN[47],hN[48])
    hN[43] = hN[44][hN[46]]
    hN[41] = hN[42][hN[43]]
    hN[44] = runtime_slots[hN[30]]
    hN[46] = v0
    hN[47] = v1
    hN[48] = hN[47](hN[49],hN[50])
    hN[45] = hN[46][hN[48]]
    hN[43] = hN[44][hN[45]]
    hN[51] = 27112586883409
    hN[49] = 4416685426696
    hN[45] = v0
    hN[48] = "\191\219"
    hN[46] = v1
    hN[47] = hN[46](hN[48],hN[49])
    hN[44] = hN[45][hN[47]]
    hN[42] = hN[41](hN[43],hN[44])
    hN[45] = 26628196642927
    hN[39] = hN[40] .. hN[42]
    hN[44] = "\012\027\177\227"
    hN[47] = 12820856428370
    hN[46] = 12766545811256
    hN[41] = v0
    hN[42] = v1
    hN[43] = hN[42](hN[44],hN[45])
    hN[48] = "\020\030\201D\182\127\198\007"
    hN[40] = hN[41][hN[43]]
    hN[42] = v0
    hN[45] = "\164\183\027\179\132"
    hN[43] = v1
    hN[49] = 24839682911534
    hN[44] = hN[43](hN[45],hN[46])
    hN[41] = hN[42][hN[44]]
    hN[43] = v0
    hN[44] = v1
    hN[46] = "\008\183\240\226\192"
    hN[45] = hN[44](hN[46],hN[47])
    hN[42] = hN[43][hN[45]]
    hN[45] = v0
    hN[43] = false
    hN[52] = "\251\019\193\185={\163\018\127"
    hN[46] = v1
    hN[47] = hN[46](hN[48],hN[49])
    hN[44] = hN[45][hN[47]]
    hN[45] = function(arg1, arg2, arg3)
        local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, local_player_5_ref_20, event_connection_4, character_3
        character_4 = arg1
        character = runtime_slots[hN[30]]
        lookup = character_4
        character.enabled = lookup
        if character_4 then
            lookup = runtime_slots[hN[30]]
            event_connection_2 = lookup.trackId
            if not event_connection_2 then
            character = v10
            char_fn = "Choose track for "
            ui_node_2 = runtime_slots[hN[30]]
            local_player_5_ref_2 = ui_node_2.name
            ui_node_7 = char_fn .. local_player_5_ref_2
            lookup = {Title = "Music", Content = ui_node_7, Duration = 3, Icon = "alert-triangle"}
event_connection_2 = character:Notify(lookup)
            lookup = function(arg1, arg2, arg3, arg4, arg5)
                    local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                    event_connection_2 = runtime_slots[hN[30]]
                    lookup = v0
                    character = event_connection_2.toggle
                    character_4 = false
event_connection_2 = character:Set(character_4)
                    return
                end
            event_connection_2 = pcall(lookup)
            character = runtime_slots[hN[30]]
            lookup = false
            character.enabled = lookup
            return
            else
                goto block_149415
            end
            ::block_149415::
            character = v141
            lookup = runtime_slots[hN[30]]
            event_connection_2 = character(lookup)
            character = v143
            lookup = runtime_slots[hN[30]]
            event_connection_2 = character(lookup)
            character = v10
            local_player_5_ref_2 = runtime_slots[hN[30]]
            char_fn = local_player_5_ref_2.name
            local_player_5_ref_2 = " \226\128\148 ON"
            ui_node_7 = char_fn .. local_player_5_ref_2
            lookup = {Title = "Music",Content = ui_node_7, Duration = 3,Icon = "play"}
event_connection_2 = character:Notify(lookup)
        else
            character = v144
            lookup = runtime_slots[hN[30]]
            event_connection_2 = character(lookup)
            character = v10
            text_label = 20701018056103
            local_player_5_ref_2 = runtime_slots[hN[30]]
            char_fn = local_player_5_ref_2.name
            local_player_5_ref_2 = " \226\128\148 OFF"
            ui_node_7 = char_fn .. local_player_5_ref_2
            local_player_5_ref_2 = 3
            event_connection_4 = v0
            local_player_5_ref_11_ref = v1
            lookup = {Title = "Music",Content = ui_node_7,Duration = 3, Icon = "square"}
event_connection_2 = character:Notify(lookup)
        end
        return
    end
    hN[35] = {[hN[36]] = hN[37], [hN[38]] = hN[39],[hN[40]] = hN[41],[hN[42]] = hN[43], [hN[44]] = hN[45]}
    hN[34] = hN[34](hN[33],hN[35])
    hN[31][hN[32]] = hN[34]
    hN[31] = runtime_slots[hN[30]]
    hN[47] = 10075963462227
    hN[33] = v0
    hN[37] = 13299334764592
    hN[40] = "\200\021\250n\029"
    hN[36] = "\160\0253\190Wu\171\189"
    hN[34] = v1
    hN[35] = hN[34](hN[36],hN[37])
    hN[32] = hN[33][hN[35]]
    hN[41] = 3824658908916
    hN[34] = "Dropdown"
    hN[33] = v124
    hN[37] = v0
    hN[42] = "\1430\173\136\202t\201\167yc"
    hN[38] = v1
    hN[39] = hN[38](hN[40],hN[41])
    hN[43] = 10356328862422
    hN[36] = hN[37][hN[39]]
    hN[39] = v0
    hN[40] = v1
    hN[41] = hN[40](hN[42],hN[43])
    hN[50] = "|\209e\206#"
    hN[45] = "\158\n\140E"
    hN[38] = hN[39][hN[41]]
    hN[40] = runtime_slots[hN[30]]
    hN[46] = 10364518060762
    hN[34] = hN[33][hN[34]]
    hN[42] = v0
    hN[48] = "m\031\2343\149"
    hN[43] = v1
    hN[44] = hN[43](hN[45],hN[46])
    hN[41] = hN[42][hN[44]]
    hN[39] = hN[40][hN[41]]
    hN[44] = 5642201582147
    hN[37] = hN[38] .. hN[39]
    hN[43] = 23686600026901
    hN[42] = "#4^\199"
    hN[39] = v0
    hN[40] = v1
    hN[41] = hN[40](hN[42],hN[43])
    hN[38] = hN[39][hN[41]]
    hN[40] = v0
    hN[49] = 9921127600651
    hN[41] = v1
    hN[46] = 4854066743508
    hN[43] = "\205cc\002\220q\018p8j\160\177"
    hN[45] = 9115929563284
    hN[42] = hN[41](hN[43],hN[44])
    hN[44] = "\001{\007\155"
    hN[39] = hN[40][hN[42]]
    hN[41] = v0
    hN[42] = v1
    hN[43] = hN[42](hN[44],hN[45])
    hN[45] = "SS\031\248\244"
    hN[40] = hN[41][hN[43]]
    hN[42] = v0
    hN[43] = v1
    hN[44] = hN[43](hN[45],hN[46])
    hN[41] = hN[42][hN[44]]
    hN[46] = "\195 8+\215A"
    hN[43] = v0
    hN[44] = v1
    hN[45] = hN[44](hN[46],hN[47])
    hN[42] = hN[43][hN[45]]
    hN[43] = local_player_5_ref_20
    hN[53] = 24299277446195
    hN[45] = v0
    hN[46] = v1
    hN[47] = hN[46](hN[48],hN[49])
    hN[44] = hN[45][hN[47]]
    hN[47] = 1
    hN[46] = local_player_5_ref_20
    hN[45] = hN[46][hN[47]]
    hN[47] = v0
    hN[48] = v1
    hN[49] = hN[48](hN[50],hN[51])
    hN[46] = hN[47][hN[49]]
    hN[49] = v0
    hN[47] = false
    hN[50] = v1
    hN[51] = hN[50](hN[52],hN[53])
    hN[48] = hN[49][hN[51]]
    hN[55] = 28809235870823
    hN[49] = false
    hN[51] = v0
    hN[52] = v1
    hN[53] = hN[52](hN[54],hN[55])
    hN[50] = hN[51][hN[53]]
    hN[51] = function(arg1, arg2, arg3, arg4, arg5)
        local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, char_fn, ui_node_2, local_player_5_ref_20, event_connection_4, character_3
        character_4 = arg1
        event_connection_2 = "[...]"
        if character_4 == event_connection_2 then
            event_connection_2 = runtime_slots[hN[30]]
            character_3 = v0
            ui_node_6 = v1
            lookup = character_3["+\023\194\131j@\015\012"]
            if event_connection_2[lookup] then
                character = v144
                lookup = runtime_slots[hN[30]]
                event_connection_2 = character(lookup)
character = pcall
                lookup = function(arg1, arg2, arg3, arg4)
                        local character, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                        event_connection_2 = runtime_slots[hN[30]]
                        lookup = v0
                        ui_node_7 = 11071315514403
                        character = event_connection_2.toggle
                        character_4 = false
event_connection_2 = character:Set(character_4)
                        return
                    end
                event_connection_2 = character(lookup)
            end
            return
        else
            ui_node_6 = local_player_5_ref_2
            event_connection_3 = {ipairs(ui_node_6)}
            character_3 = event_connection_3[3]
            if character_3 then
                character = runtime_slots[hN[30]]
                local_player_5_ref_11_ref = 27392523399635
                event_connection_4 = v1
                local_player_5_ref_2 = ui_node_7.asset
                character.trackId = local_player_5_ref_2
                goto block_13881849
                ::block_14382651::
                character = v142
                character_3 = runtime_slots[hN[30]]
                lookup = character(character_3)
                character = v141
                character_3 = runtime_slots[hN[30]]
                lookup = character(character_3)
                return
            end
            ::block_13881849::
            ui_node_6 = runtime_slots[hN[30]]
            ui_node_7 = v0
            char_fn = v1
            local_player_5_ref_11_ref = 19528453186437
            event_connection_3 = "enabled"
            character_3 = ui_node_6.enabled
            lookup = character_3
            if character_3 then goto block_14382651 end
        end
    end
    hN[35] = {[hN[36]] = hN[37], [hN[38]] = hN[39], [hN[40]] = hN[41], [hN[42]] = hN[43], [hN[44]] = hN[45],[hN[46]] = hN[47], [hN[48]] = hN[49], [hN[50]] = hN[51]}
    hN[34] = hN[34](hN[33],hN[35])
    hN[31][hN[32]] = hN[34]
    hN[32] = 3
    hN[31] = hN[26] < hN[32]
    hN[38] = "H\030Z\200\017"
    hN[40] = 16535057849875
    hN[31] = v124
    hN[35] = v0
    hN[39] = 23778457905984
    hN[36] = v1
    hN[37] = hN[36](hN[38],hN[39])
    hN[34] = hN[35][hN[37]]
    hN[36] = v0
    hN[32] = "Paragraph"
    hN[39] = ""
    hN[37] = v1
    hN[41] = 35086759608274
    hN[42] = 7767749922337
    hN[38] = hN[37](hN[39],hN[40])
    hN[35] = hN[36][hN[38]]
    hN[37] = v0
    hN[38] = v1
    hN[40] = "\146\168\212\229"
    hN[32] = hN[31][hN[32]]
    hN[39] = hN[38](hN[40],hN[41])
    hN[41] = "\232\162-Tg\205w$\026\021_3\179\024N\129\149\179>JLm\213\222\206\250\161N\192\138\021&X\133p\028\030\251\151\238(\251\191\175\\\140\248\229\174\025\172\197\234\156r~\0302\169\130}~,"
    hN[36] = hN[37][hN[39]]
    hN[38] = v0
    hN[39] = v1
    hN[40] = hN[39](hN[41],hN[42])
    hN[37] = hN[38][hN[40]]
    hN[33] = {[hN[34]] = hN[35],[hN[36]] = hN[37]}
    hN[32] = hN[32](hN[31],hN[33])
    character = 16045366
    hN[26] = nil
    hN[30] = e(hN[30])
    ::block_6678119::
    hN[26] = {}
    local_player_5_ref_7_ref = hN[26]
    hN[26] = function(arg1, arg2, arg3, arg4)
        local character, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_25, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, char_fn, ui_node_2, math_lib_9, event_connection_4, character_3
        character_3 = local_player_5_ref_7_ref
        ui_node_6 = {ipairs(character_3)}
        lookup = ui_node_6[3]
        character_4 = ui_node_6[2]
        character = 2835415
        event_connection_2 = ui_node_6[1]
        character_3 = event_connection_2
        while true do
            lookup,event_connection_3 = character_3(character_4,lookup)
            if not lookup then
                break
            end
            local_player_5_ref_7_ref = event_connection_3
            event_connection_3 = local_player_5_ref_7_ref
            local_player_5_ref_23 = function(arg1)
                    local character, event_connection_2
                    character = event_connection_3
event_connection_2 = character:Destroy()
                    return
                end
            ui_node_7 = local_player_5_ref_7_ref(local_player_5_ref_23)
        end
        character_3 = local_player_5_ref_2
        lookup = #character_3
        character_3 = 0
        character_4 = lookup == character_3
        if character_4 then
            character_4 = table.insert
            character_3 = local_player_5_ref_7_ref
            ui_node_6 = v125
            ui_node_7 = {Title = "Empty",Desc = "Add files to MusicDLC and press Refresh", Image = "info"}
            event_connection_3 = {ui_node_6.Paragraph(ui_node_6,ui_node_7)}
            lookup = character_4(character_3,unpack_fn(event_connection_3))
            return
        else
            event_connection_3 = local_player_5_ref_2
            ui_node_7 = {ipairs(event_connection_3)}
            character_3 = ui_node_7[2]
            ui_node_6 = ui_node_7[3]
            lookup = ui_node_7[1]
            while true do
                ui_node_6,event_connection_3 = lookup(character_3,ui_node_6)
                if not ui_node_6 then
                    break
                end
                character_4 = ui_node_6
                ui_node_7 = table.insert
                local_player_5_ref_2 = local_player_5_ref_7_ref
                ui_node_2 = v125
                text_label = ". "
                local_player_5_ref_11_ref = 29865626269267
                local_player_5_ref_20 = event_connection_3.name
                local_player_5_ref_11_ref = text_label .. local_player_5_ref_20
                local_player_5_ref_20 = character_4 .. local_player_5_ref_11_ref
                text_label = event_connection_3.path
                character = 11291900
                event_connection_3 = nil
                character_4 = nil
                math_lib_9 = 180
                local_player_5_ref_11_ref = Color3.fromRGB
                math_lib_8 = 150
                local_9 = 220
                local_player_5_ref_11_ref = local_player_5_ref_11_ref(math_lib_8,local_9,math_lib_9)
                event_connection_4 = {Title = local_player_5_ref_20,Desc = text_label,Image = "music", Color = local_player_5_ref_11_ref}
                local_player_5_ref_11_ref = {ui_node_2.Paragraph(ui_node_2,event_connection_4)}
                local_player_5_ref_23 = ui_node_7(local_player_5_ref_2,unpack_fn(local_player_5_ref_11_ref))
            end
            return
        end
            end
    hN[36] = 9441940525356
    hN[28] = hN[26]()
    hN[28] = run_background_task_ref_2
    hN[71] = 16663038860879
    hN[67] = 18427798806917
    hN[32] = v0
    hN[35] = "\144\234h9R"
    hN[33] = v1
    hN[34] = hN[33](hN[35],hN[36])
    hN[31] = hN[32][hN[34]]
    hN[33] = v0
    hN[34] = v1
    hN[36] = "\000\188&\179\195 $\199\196"
    hN[37] = 20524249965909
    hN[29] = "Tab"
    hN[41] = 34000684105176
    hN[43] = function(arg1)
        local character, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
        event_connection_2 = v56
        character = event_connection_2.Character
        character_4 = character
        if character_4 then
            character_3 = "SpeedMultipliers"
lookup = character_4:FindFirstChild(character_3)
            event_connection_2 = lookup
        end
        lookup = event_connection_2
        if lookup then
            ui_node_7 = v0
            local_player_5_ref_11_ref = 11661612520758
            local_player_5_ref_23 = v1
            character = 12579206
            ui_node_6 = lookup.FindFirstChild
            event_connection_3 = nil
            character_3 = ui_node_6 ~= event_connection_3
            event_connection_2 = character_3
        end
        event_connection_2 = {event_connection_2}
        return
    end
    hN[35] = hN[34](hN[36],hN[37])
    hN[32] = hN[33][hN[35]]
    hN[34] = v0
    hN[37] = "\008\226\183\166"
    hN[39] = 20238603592912
    hN[35] = v1
    hN[38] = 8156498972374
    hN[36] = hN[35](hN[37],hN[38])
    hN[38] = "\155\021\251\243\211"
    hN[47] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local character, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
        character_4 = arg1
        if character_4 then
            local_player_5_ref_2 = 19657085264833
            ui_node_6 = v0
            event_connection_3 = v1
            character = 16109611
            character_3 = "_ESPOverlay"
lookup = character_4:FindFirstChild(character_3)
            event_connection_2 = lookup
        end
        local local_player_5_ref_21 = event_connection_2
        if event_connection_2 then
            character_3 = function(arg1, arg2, arg3, arg4, arg5)
                    local character, event_connection_2
                    character = local_player_5_ref_21
event_connection_2 = character:Destroy()
                    return
                end
            event_connection_2 = pcall(character_3)
        end
        return
    end
    hN[33] = hN[34][hN[36]]
    hN[29] = hN[28][hN[29]]
    hN[35] = v0
    hN[55] = function(arg1, arg2, arg3)
        local character, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_25, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, math_lib_9, event_connection_4, character_3
        lookup = 2
        character_4 = arg1
        event_connection_2 = #character_4
        if event_connection_2 <= lookup then
            event_connection_2 = {character_4}
            return "insert"
        else
            local_player_5_ref_13_ref = function(arg1, arg2)
                    local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
                    character_4 = arg1
                    local_player_5_ref_2 = 17098725547802
                    lookup = arg2
                    character_3 = "-"
                    event_connection_2 = character_3 .. lookup
                    local_player_5_ref_13_ref = character_4 .. event_connection_2
                    return local_player_5_ref_13_ref
                end
            local runtime_lookup = local_player_5_ref_13_ref
            local v152 = {}
            ui_node_7 = {ipairs(character_4)}
            ui_node_6 = ui_node_7[2]
            event_connection_3 = ui_node_7[3]
            event_connection_2 = ui_node_7[1]
            ui_node_7 = event_connection_2
            while true do
                event_connection_3,local_player_5_ref_2 = ui_node_7(ui_node_6,event_connection_3)
                if not event_connection_3 then
                    break
                end
                local_player_5_ref_13_ref = v152
                local_player_5_ref_13_ref_ref = 17280957407087
                ui_node_2 = runtime_lookup
                event_connection_4 = local_player_5_ref_2.row
                local_player_5_ref_11_ref = v0
                text_label = v1
                local_player_5_ref_11_ref = local_player_5_ref_2.col
                local_player_5_ref_11_ref = ui_node_2(event_connection_4,local_player_5_ref_11_ref)
                local_player_5_ref_23 = nil
                ui_node_2 = 17098725547802
                local_player_5_ref_13_ref[local_player_5_ref_11_ref] = ui_node_2
            end
            local_player_5_ref_13_ref = function(arg1, arg2, arg3, arg4)
                    local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
                    ui_node_6 = 0
                    event_connection_3 = 0
                    character_3 = 1
                    local_player_5_ref_13_ref = {}
                    local_player_5_ref_23 = -1
                    character_4 = arg1
                    lookup = local_player_5_ref_13_ref
                    event_connection_2 = {character_3, ui_node_6}
                    ui_node_7 = 1
                    ui_node_6 = -1
                    character_3 = {ui_node_6,event_connection_3}
                    event_connection_3 = 0
                    ui_node_6 = {event_connection_3,ui_node_7}
                    ui_node_7 = 0
                    event_connection_3 = {ui_node_7,local_player_5_ref_23}
                    local_player_5_ref_13_ref = {event_connection_2,character_3, ui_node_6, event_connection_3}
                    character_3 = local_player_5_ref_13_ref
                    ui_node_7 = {ipairs(character_3)}
                    event_connection_3 = ui_node_7[3]
                    event_connection_2 = ui_node_7[1]
                    ui_node_6 = ui_node_7[2]
                    ui_node_7 = event_connection_2
                    while true do
                        event_connection_3,local_player_5_ref_2 = ui_node_7(ui_node_6,event_connection_3)
                        if not event_connection_3 then
                            break
                        end
                        ui_node_2 = v152
                        local_player_5_ref_11_ref = runtime_lookup
                        local_player_5_ref_20 = character_4.row
                        text_label = 1
                        local_player_5_ref_11_ref = local_player_5_ref_2[text_label]
                        local_player_5_ref_11_ref = local_player_5_ref_20 + local_player_5_ref_11_ref
                        local_player_5_ref_20 = 2
                        local_player_5_ref_11_ref = character_4.col
                        text_label = local_player_5_ref_2[local_player_5_ref_20]
                        local_player_5_ref_20 = local_player_5_ref_11_ref + text_label
                        event_connection_4 = local_player_5_ref_11_ref(local_player_5_ref_11_ref,local_player_5_ref_20)
                        ui_node_2 = ui_node_2[event_connection_4]
                        if ui_node_2 then
                            local_player_5_ref_11_ref = v0
                            local_player_5_ref_11_ref = table.insert(lookup,ui_node_2)
                        end
                    end
                    return "killerSet"
                end
            ui_node_6 = 13487941
            ui_node_2 = {ipairs(character_4)}
            local_player_5_ref_2 = ui_node_2[3]
            local_player_5_ref_23 = ui_node_2[2]
            ui_node_7 = ui_node_2[1]
            while true do
                local_player_5_ref_2,local_player_5_ref_11_ref = ui_node_7(local_player_5_ref_23,local_player_5_ref_2)
                if not local_player_5_ref_2 then
                    break
                end
                event_connection_4 = #local_player_5_ref_11_ref
                local_player_5_ref_11_ref = 1
                if event_connection_4 == local_player_5_ref_11_ref then goto block_8892050 else goto block_7136584 end
                ::block_8892050::
                event_connection_3 = local_player_5_ref_11_ref
                goto block_12455841
                ::block_9232128::
                return "insert"
                ::block_2653565::
                ui_node_7 = {}
                local_player_5_ref_23 = {}
                local_player_5_ref_2 = event_connection_3
                if local_player_5_ref_2 then goto block_16653754 else goto block_15192527 end
                ::block_16653754::
                local_player_5_ref_11_ref = table.insert(ui_node_7,local_player_5_ref_2)
                ui_node_2 = runtime_lookup
                event_connection_4 = local_player_5_ref_2.row
                local_player_5_ref_11_ref = local_player_5_ref_2.col
                local_player_5_ref_11_ref = ui_node_2(event_connection_4,local_player_5_ref_11_ref)
                ui_node_2 = true
                local_player_5_ref_23[local_player_5_ref_11_ref] = ui_node_2
                local_player_5_ref_11_ref = {ui_node_6(local_player_5_ref_2)}
                text_label = {ipairs(unpack_fn(local_player_5_ref_11_ref))}
                local_player_5_ref_11_ref = text_label[2]
                local_player_5_ref_20 = text_label[3]
                local_player_5_ref_20,local_player_5_ref_11_ref = text_label[1](local_player_5_ref_11_ref,local_player_5_ref_20)
                local_player_5_ref_18 = runtime_lookup
                local_player_5_ref_11_ref = 11536202044667
                local_player_5_ref_11_ref = local_player_5_ref_11_ref.row
                local_9 = v0
                math_lib_9 = v1
                local_player_5_ref_11_ref = local_player_5_ref_11_ref.col
                local_player_5_ref_13_ref_ref = local_player_5_ref_18(local_player_5_ref_11_ref,local_player_5_ref_11_ref)
                local_player_5_ref_20 = local_player_5_ref_23[local_player_5_ref_13_ref_ref]
                text_label = not local_player_5_ref_20
                if text_label then
                text_label = local_player_5_ref_11_ref
                ui_node_2 = text_label
                local_player_5_ref_11_ref = ui_node_2
                local_player_5_ref_2 = local_player_5_ref_11_ref
                else
                    goto block_5063910
                end
                ::block_5063910::
                ::block_15192527::
                event_connection_4 = #ui_node_7
                local_player_5_ref_11_ref = #character_4
                ui_node_2 = event_connection_4 == local_player_5_ref_11_ref
                if ui_node_2 then
                return ui_node_7
                else
                    goto block_15787875
                end
                ::block_15787875::
                event_connection_2 = {character_4}
                return
                ::block_7136584::
                local_player_5_ref_13_ref = 4736109
                ui_node_2 = nil
                local_player_5_ref_11_ref = nil
            end
            ::block_12455841::
            ui_node_7 = not event_connection_3
            if ui_node_7 then goto block_9232128 else goto block_2653565 end
        end
    end
    hN[36] = v1
    hN[37] = hN[36](hN[38],hN[39])
    hN[34] = hN[35][hN[37]]
    hN[30] = {[hN[31]] = hN[32], [hN[33]] = hN[34]}
    hN[29] = hN[29](hN[28],hN[30])
    hN[35] = "\171<(\171\214"
    hN[38] = 33573202099473
    hN[32] = v0
    hN[36] = 31595565496696
    hN[37] = 31184354228409
    hN[63] = 8085913472693
    hN[33] = v1
    hN[34] = hN[33](hN[35],hN[36])
    hN[28] = "Section"
    hN[31] = hN[32][hN[34]]
    hN[33] = v0
    hN[36] = "\127\157\016\148h\146S\192\128\031\193tj\028"
    hN[34] = v1
    hN[35] = hN[34](hN[36],hN[37])
    hN[28] = hN[29][hN[28]]
    hN[32] = hN[33][hN[35]]
    hN[34] = v0
    hN[37] = "~^\181\167"
    hN[35] = v1
    hN[36] = hN[35](hN[37],hN[38])
    hN[62] = "\252,8.\024"
    hN[38] = "\177\\?"
    hN[39] = 23803716791116
    hN[33] = hN[34][hN[36]]
    hN[76] = "9\2233\214\012\t\000"
    hN[35] = v0
    hN[36] = v1
    hN[37] = hN[36](hN[38],hN[39])
    hN[39] = 12397802591885
    hN[36] = "\134\029\177\217\199"
    hN[95] = 403000934587
    hN[78] = "(\168\166k\143\029\250"
    hN[34] = hN[35][hN[37]]
    hN[40] = 32063493175890
    hN[30] = {[hN[31]] = hN[32],[hN[33]] = hN[34]}
    hN[28] = hN[28](hN[29],hN[30])
    hN[33] = v0
    hN[34] = v1
    hN[37] = 15528435326014
    hN[87] = 6584598268922
    hN[35] = hN[34](hN[36],hN[37])
    hN[37] = "\003\144\189\224\219?[\253\147*"
    hN[30] = "Section"
    hN[48] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        lookup = arg2
        character_4 = arg1
        character_3 = not character_4
        if not character_3 then
            ui_node_6 = character_4.Parent
            character_3 = not ui_node_6
            event_connection_2 = character_3
        end
        if event_connection_2 then
            return
        else
            character_3 = v0
            event_connection_2 = character_3.Parent
            character_3 = character_4:FindFirstChild(event_connection_2)
            if character_3 then
local_player_5_ref_13_ref = character_3:Destroy()
            end
            local_player_5_ref_11_ref = 27082391957827
            local_player_5_ref_13_ref = Instance.new
            ui_node_6 = "Frame"
            event_connection_2 = local_player_5_ref_13_ref(ui_node_6)
            ui_node_6 = event_connection_2
            event_connection_2 = "_ESPOverlay"
            ui_node_6.Name = event_connection_2
            event_connection_2 = UDim2.fromScale
            local_player_5_ref_23 = 1
            ui_node_7 = 1
            event_connection_3 = event_connection_2(ui_node_7,local_player_5_ref_23)
            ui_node_6.Size = event_connection_3
            event_connection_2 = lookup
            ui_node_6.BackgroundColor3 = event_connection_2
            event_connection_2 = .7
            ui_node_6.BackgroundTransparency = event_connection_2
            ui_node_6.BorderSizePixel = 0
            ui_node_6.ZIndex = 15
            event_connection_2 = false
            ui_node_6.Active = event_connection_2
            event_connection_2 = character_4
            ui_node_6.Parent = event_connection_2
            local_player_5_ref_13_ref = Instance.new
            event_connection_3 = "UICorner"
            event_connection_2 = local_player_5_ref_13_ref(event_connection_3)
            event_connection_3 = event_connection_2
            event_connection_2 = UDim.new
            local_player_5_ref_23 = 0
            local_player_5_ref_2 = 4
            ui_node_7 = event_connection_2(local_player_5_ref_23,local_player_5_ref_2)
            event_connection_3.CornerRadius = ui_node_7
            event_connection_2 = ui_node_6
            event_connection_3.Parent = event_connection_2
            local_player_5_ref_13_ref = Instance.new
            event_connection_4 = 18157660332295
            ui_node_7 = "UIStroke"
            event_connection_3 = nil
            event_connection_2 = local_player_5_ref_13_ref(ui_node_7)
            ui_node_7 = event_connection_2
            event_connection_2 = lookup
            ui_node_7.Color = event_connection_2
            lookup = nil
            ui_node_7.Thickness = 2
            character_3 = nil
            event_connection_2 = .15
            local_player_5_ref_11_ref = 22839636879755
            ui_node_7.Transparency = event_connection_2
            character_4 = nil
            local_player_5_ref_23 = v1
            event_connection_2 = ui_node_6
            ui_node_7.Parent = event_connection_2
            return
        end
    end
    hN[32] = hN[33][hN[35]]
    hN[38] = 4938715564283
    hN[34] = v0
    hN[35] = v1
    hN[36] = hN[35](hN[37],hN[38])
    hN[33] = hN[34][hN[36]]
    hN[35] = v0
    hN[36] = v1
    hN[38] = "\\\137\240\001"
    hN[30] = hN[29][hN[30]]
    hN[37] = hN[36](hN[38],hN[39])
    hN[88] = 33747951353187
    hN[39] = "b\225\215"
    hN[34] = hN[35][hN[37]]
    hN[36] = v0
    hN[37] = v1
    hN[38] = hN[37](hN[39],hN[40])
    hN[35] = hN[36][hN[38]]
    hN[64] = 3792807708390
    hN[31] = {[hN[32]] = hN[33], [hN[34]] = hN[35]}
    hN[30] = hN[30](hN[29],hN[31])
    hN[34] = v0
    hN[70] = "\232\186>\1761"
    hN[35] = v1
    hN[40] = 1295974400
    hN[37] = "\020\137!\190\193"
    hN[68] = 22245125875830
    hN[81] = 1520258302659
    hN[38] = 4841103067342
    hN[77] = 32186243922571
    hN[31] = "Section"
    hN[36] = hN[35](hN[37],hN[38])
    hN[33] = hN[34][hN[36]]
    hN[39] = 20165552514222
    hN[38] = "\156V\140y\028M\134\223\171\131\014\141B\2213\227\008"
    hN[35] = v0
    hN[36] = v1
    hN[37] = hN[36](hN[38],hN[39])
    hN[39] = "\186\250$\204"
    hN[34] = hN[35][hN[37]]
    hN[36] = v0
    hN[37] = v1
    hN[38] = hN[37](hN[39],hN[40])
    hN[35] = hN[36][hN[38]]
    hN[31] = hN[29][hN[31]]
    hN[37] = v0
    hN[38] = v1
    hN[40] = "\233\132\025"
    hN[39] = hN[38](hN[40],hN[41])
    hN[36] = hN[37][hN[39]]
    hN[69] = 7063794453721
    hN[32] = {[hN[33]] = hN[34],[hN[35]] = hN[36]}
    hN[31] = hN[31](hN[29],hN[32])
    hN[32] = false
    local_player_5_ref_13_ref = hN[32]
    hN[42] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, local_player_5_ref_20, event_connection_4, character_3
        if local_player_5_ref_13_ref then
            return ui_node_7[local_player_5_ref_13_ref]
        else
            local_player_5_ref_20 = 28466091389895
            ui_node_7 = game.ReplicatedStorage
            local_player_5_ref_11_ref = 29311645480273
            event_connection_3 = ui_node_7.Modules
            event_connection_4 = 13492539005066
            ui_node_6 = event_connection_3.Minigames
            ui_node_7 = v0
            local_player_5_ref_23 = v1
            local_player_5_ref_11_ref = 14881592924945
            character_3 = ui_node_6.FlowGameManager
            ui_node_6 = {pcall(require,character_3)}
            event_connection_2 = ui_node_6[1]
            character_4 = ui_node_6[2]
            lookup = event_connection_2
            if lookup then
                event_connection_2 = character_4
            end
            if event_connection_2 then
                local_player_5_ref_13_ref = character_4
                local_player_5_ref_13_ref = local_player_5_ref_13_ref
            end
            event_connection_2 = local_player_5_ref_13_ref
            event_connection_2 = {event_connection_2}
            return "7\019\131\195[Y"
        end
    end
    hN[32] = 5
    local v156 = hN[32]
    hN[32] = nil
    hN[74] = "\023;\218"
    local v155 = hN[32]
    hN[32] = false
    local_player_5_ref_13_ref = hN[32]
    hN[32] = false
    local_player_5_ref_13_ref = hN[32]
    hN[32] = .08
    hN[54] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        if v158 then
            ui_node_7 = 3109313119655
            lookup = v0
            character_3 = v1
            local_player_5_ref_13_ref = task.cancel
            character_4 = v158
            event_connection_2 = local_player_5_ref_13_ref(character_4)
            local_player_5_ref_13_ref = nil
        end
        return
    end
    local v162 = hN[32]
    hN[44] = function(arg1)
        local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
        if v155 then
            event_connection_3 = "0J\015\178\165\173"
            ui_node_7 = 13715146053874
            lookup = v0
            character_3 = v1
            local_player_5_ref_13_ref = task.cancel
            character_4 = v155
            event_connection_2 = local_player_5_ref_13_ref(character_4)
            local_player_5_ref_13_ref = nil
        end
        return
    end
    hN[32] = {}
    local_player_5_ref_7_ref = hN[32]
    hN[32] = nil
    hN[32] = nil
    hN[46] = function(arg1, arg2, arg3)
        local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
        character_3 = local_player_5_ref_7_ref
        ui_node_6 = {ipairs(character_3)}
        local_player_5_ref_13_ref = 9181163
        lookup = ui_node_6[3]
        character_4 = ui_node_6[2]
        event_connection_2 = ui_node_6[1]
        character_3 = event_connection_2
        while true do
            lookup,event_connection_3 = character_3(character_4,lookup)
            if not lookup then
                break
            end
            local_player_5_ref_7_ref = event_connection_3
            event_connection_3 = local_player_5_ref_7_ref
            local_player_5_ref_23 = function(arg1, arg2)
                    local local_player_5_ref_13_ref, event_connection_2
                    local_player_5_ref_13_ref = event_connection_3
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
                    return
                end
            ui_node_6 = nil
            ui_node_7 = local_player_5_ref_7_ref(local_player_5_ref_23)
        end
        return
    end
    local v164 = hN[42]
    local v166 = hN[43]
    local v167 = hN[44]
    hN[45] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_25, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, math_lib_9, event_connection_4, character_3
        event_connection_2 = v167()
event_connection_2 = task
        lookup = v0
        character_3 = v1
        ui_node_7 = 34015480217055
        local_player_5_ref_13_ref = task.spawn
        character_4 = function(arg1, arg2, arg3, arg4)
                local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_25, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, math_lib_9, event_connection_4, character_3
                if local_player_5_ref_13_ref then
                    event_connection_2 = v56
                    character_4 = event_connection_2.Character
                    if character_4 then
                        character_3 = "Humanoid"
lookup = character_4:FindFirstChildOfClass(character_3)
                        event_connection_2 = lookup
                    end
                    lookup = event_connection_2
                    if character_4 then
                        if lookup then
                            ui_node_7 = lookup.Health
                            local_player_5_ref_23 = 0
                            event_connection_3 = ui_node_7 > local_player_5_ref_23
                            character_3 = event_connection_3
                        end
                        event_connection_2 = character_3
                    end
                    if event_connection_2 then
                        character_3 = v0
                        event_connection_2 = character_3[event_connection_3]
                        character_3 = character_4:FindFirstChild(event_connection_2)
                        if character_3 then
                            ui_node_7 = v0
                            ui_node_6 = character_3.FindFirstChild
                            local_player_5_ref_23 = v1
                            event_connection_2 = ui_node_6
                        end
                        if event_connection_2 then
local_player_5_ref_13_ref = pcall
                            event_connection_3 = function(arg1, arg2)
                                        local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
                                        event_connection_3 = v1
                                        character_4 = workspace.Map
                                        character_3 = v0
                                        lookup = character_3[event_connection_3]
                                        event_connection_3 = "\244\015-"
                                        event_connection_2 = character_4[lookup]
                                        character_4 = "Map"
                                        local_player_5_ref_13_ref = event_connection_2.Map
                                        return local_player_5_ref_13_ref
                                    end
                            ui_node_7 = {local_player_5_ref_13_ref(event_connection_3)}
                            event_connection_2 = ui_node_7[1]
                            event_connection_3 = event_connection_2
                            ui_node_6 = ui_node_7[2]
                            if event_connection_3 then
                                event_connection_2 = ui_node_6
                            end
                            if event_connection_2 then
                                local_player_5_ref_20 = 27870810485426
                                event_connection_2 = "HumanoidRootPart"
                                ui_node_7 = character_4:FindFirstChild(event_connection_2)
                                event_connection_2 = math.huge
                                local_player_5_ref_2 = event_connection_2
                                event_connection_4 = {ui_node_6.GetChildren(ui_node_6)}
                                local_player_5_ref_11_ref = {ipairs(unpack_fn(event_connection_4))}
                                local_player_5_ref_11_ref = local_player_5_ref_11_ref[3]
                                event_connection_2 = local_player_5_ref_11_ref[1]
                                ui_node_2 = local_player_5_ref_11_ref[2]
                                event_connection_4 = event_connection_2
                                while true do
                                    local_player_5_ref_11_ref,local_player_5_ref_20 = event_connection_4(ui_node_2,local_player_5_ref_11_ref)
                                    if not local_player_5_ref_11_ref then
                                        break
                                    end
                                    local_player_5_ref_11_ref = local_player_5_ref_20.Name
                                    text_label = "Generator"
                                    if local_player_5_ref_11_ref == text_label then
                                        local_player_5_ref_11_ref = local_player_5_ref_20:FindFirstChild(local_player_5_ref_11_ref)
                                        if local_player_5_ref_11_ref then
                                            local_player_5_ref_18 = local_player_5_ref_11_ref.Value
                                            local_player_5_ref_13_ref_ref = 100
                                            local_player_5_ref_20 = local_player_5_ref_18 < local_player_5_ref_13_ref_ref
                                            text_label = local_player_5_ref_20
                                        end
                                        if text_label then
                                            text_label = local_player_5_ref_20:FindFirstChild(text_label)
                                            if text_label then
                                                local_player_5_ref_13_ref_ref = "RemoteEvent"
local_player_5_ref_18 = text_label:FindFirstChildOfClass(local_player_5_ref_13_ref_ref)
                                                local_player_5_ref_20 = local_player_5_ref_18
                                            end
                                            if local_player_5_ref_20 then
                                                local_player_5_ref_18 = ui_node_7
                                            end
                                            if local_player_5_ref_18 then
                                                local_player_5_ref_13_ref_ref = local_player_5_ref_20.PrimaryPart
                                                if not local_player_5_ref_13_ref_ref then
                                                    local_player_5_ref_11_ref = "BasePart"
local_player_5_ref_13_ref_ref = local_player_5_ref_20:FindFirstChildWhichIsA(local_player_5_ref_11_ref)
                                                    local_player_5_ref_18 = local_player_5_ref_13_ref_ref
                                                end
                                                if local_player_5_ref_18 then
                                                    local_player_5_ref_11_ref = 26375365980153
                                                    local_player_5_ref_11_ref = ui_node_7.Position
                                                    local_player_5_ref_11_ref = local_player_5_ref_18.Position
                                                    local_player_5_ref_13_ref_ref = local_player_5_ref_11_ref - local_player_5_ref_11_ref
                                                    local_player_5_ref_11_ref = v0
                                                    local_4 = 15644044582004
                                                    math_lib_8 = v1
                                                    local_player_5_ref_13_ref_ref = local_player_5_ref_13_ref_ref.Magnitude
                                                    if local_player_5_ref_13_ref_ref < local_player_5_ref_2 then
                                                        local_player_5_ref_11_ref = local_player_5_ref_20
                                                        local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                                    end
                                                    local_player_5_ref_13_ref_ref = nil
                                                end
                                                local_player_5_ref_18 = nil
                                            end
                                            text_label = nil
                                        end
                                    end
                                    local_player_5_ref_20 = nil
                                    local_player_5_ref_11_ref = nil
                                end
                                ui_node_2 = local_player_5_ref_11_ref
                                if ui_node_2 then
                                    local_player_5_ref_13_ref = 15762303
                                    event_connection_4 = function()
                                                local local_player_5_ref_13_ref, event_connection_2
                                                local_player_5_ref_13_ref = local_player_5_ref_11_ref
event_connection_2 = local_player_5_ref_13_ref:FireServer()
                                                return
                                            end
                                    local_player_5_ref_11_ref = pcall(event_connection_4)
                                end
                            end
                end
                    end
                    local_player_5_ref_11_ref = 34855771127654
                    ui_node_7 = v0
                    local_player_5_ref_23 = v1
                    local_player_5_ref_13_ref = 9907551
                    lookup = nil
                    character_4 = nil
                    character_3 = task.wait
                    event_connection_3 = v156
                    ui_node_6 = character_3(event_connection_3)
                end
                return
            end
        event_connection_2 = local_player_5_ref_13_ref(character_4)
        return
    end
    local v169 = hN[45]
    local v170 = hN[46]
    local v171 = hN[47]
    local v172 = hN[48]
    hN[49] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_5, local_25, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, math_lib_9, event_connection_4, character_3
        character_4 = arg1
        event_connection_2 = v170()
        local_player_5_ref_13_ref = character_4
        local_player_5_ref_13_ref = local_player_5_ref_13_ref
        character_3 = v0
        lookup = character_3[event_connection_3]
        event_connection_2 = character_4[lookup]
        lookup = event_connection_2
        event_connection_2 = character_4.colors
        character_3 = event_connection_2
        event_connection_2 = character_4.gridFrame
        ui_node_6 = event_connection_2
        event_connection_3 = local_player_5_ref_13_ref
        ui_node_7 = not lookup
        if not ui_node_7 then
            local_player_5_ref_2 = not character_3
            if not local_player_5_ref_2 then
                local_player_5_ref_2 = not ui_node_6
                ui_node_7 = local_player_5_ref_2
            end
            event_connection_2 = ui_node_7
        end
        if event_connection_2 then
            return
        else
            event_connection_2 = {}
            local local_player_5_ref_22 = event_connection_2
            ui_node_2 = {pairs(lookup)}
            ui_node_7 = ui_node_2[1]
            local_player_5_ref_23 = ui_node_2[2]
            local_player_5_ref_2 = ui_node_2[3]
            while true do
                local_player_5_ref_2,local_player_5_ref_11_ref = ui_node_7(local_player_5_ref_23,local_player_5_ref_2)
                if not local_player_5_ref_2 then
                    break
                end
                ui_node_2 = local_player_5_ref_2
                event_connection_2 = character_3[ui_node_2]
                event_connection_4 = event_connection_2
                event_connection_2 = not event_connection_4
                if event_connection_2 then
                    local_player_5_ref_11_ref = nil
                else
                    text_label = {ipairs(local_player_5_ref_11_ref)}
                    local_player_5_ref_20 = text_label[2]
                    local_player_5_ref_11_ref = text_label[1]
                    local_player_5_ref_11_ref = text_label[3]
                    while true do
                        local_player_5_ref_11_ref,local_player_5_ref_20 = local_player_5_ref_11_ref(local_player_5_ref_20,local_player_5_ref_11_ref)
                        if not local_player_5_ref_11_ref then
                            break
                        end
                        local_5 = 33687716019527
                        local_player_5_ref_13_ref_ref = local_player_5_ref_20.row
                        local_player_5_ref_11_ref = "-"
                        math_lib_9 = v0
                        local_4 = v1
                        math_lib_8 = local_player_5_ref_20.col
                        local_player_5_ref_11_ref = local_player_5_ref_11_ref .. math_lib_8
                        local_player_5_ref_18 = local_player_5_ref_13_ref_ref .. local_player_5_ref_11_ref
event_connection_2 = ui_node_6:FindFirstChild(local_player_5_ref_18)
                        local_player_5_ref_18 = event_connection_2
                        if local_player_5_ref_18 then
                            local_player_5_ref_13_ref_ref = nil
                        end
                    end
                end
            end
            ui_node_2 = local_player_5_ref_22
            local_player_5_ref_13_ref = 13770533
            local_player_5_ref_11_ref = {pairs(ui_node_2)}
            local_player_5_ref_2 = local_player_5_ref_11_ref[3]
            local_player_5_ref_23 = local_player_5_ref_11_ref[2]
            ui_node_7 = local_player_5_ref_11_ref[1]
            while true do
                local_player_5_ref_2,local_player_5_ref_11_ref = ui_node_7(local_player_5_ref_23,local_player_5_ref_2)
                if not local_player_5_ref_2 then
                    break
                end
                ui_node_2 = local_player_5_ref_2
                local_player_5_ref_11_ref = "Button"
event_connection_4 = ui_node_2:FindFirstChild(local_player_5_ref_11_ref)
                local_player_5_ref_11_ref = event_connection_4
                if ui_node_2 then
                    local_player_5_ref_20 = local_player_5_ref_11_ref
                    event_connection_4 = ui_node_2(local_player_5_ref_20,local_player_5_ref_11_ref)
                    event_connection_4 = local_player_5_ref_11_ref
                    event_connection_2 = event_connection_4.ChildRemoved
                    local_player_5_ref_20 = function(arg1, arg2, arg3)
                            local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
                            character_4 = arg1
                            ui_node_2 = 20584561419633
                            character_3 = character_4.Name
                            ui_node_7 = v1
                            ui_node_6 = "_ESPOverlay"
                            lookup = character_3 == ui_node_6
                            if lookup then
                                lookup = local_player_5_ref_13_ref
                                event_connection_2 = lookup
                            end
                            if event_connection_2 then
                                event_connection_2 = local_player_5_ref_22
                                lookup = event_connection_2[lookup]
                                if lookup then
                                    local_player_5_ref_13_ref = v172
                                    character_3 = local_player_5_ref_11_ref
                                    event_connection_2 = local_player_5_ref_13_ref(character_3,lookup)
                                end
                            end
                            return
                        end
event_connection_4 = ui_node_2:Connect(local_player_5_ref_20)
                    text_label = v0
                    local_player_5_ref_20 = v1
                    local_player_5_ref_11_ref = 9182357065907
                    local_player_5_ref_13_ref = 9869102
                    local_player_5_ref_11_ref = local_player_5_ref_7_ref
                    local_player_5_ref_20 = ui_node_2(local_player_5_ref_11_ref,event_connection_4)
                    event_connection_4 = nil
                end
                local_player_5_ref_11_ref = nil
                ui_node_2 = 20584561419633
            end
            return
        end
    end
    local v176 = hN[49]
    hN[49] = nil
    local_player_5_ref_3 = hN[49]
    hN[52] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        if local_player_5_ref_3 then
            local_player_5_ref_13_ref = local_player_5_ref_3
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
        end
        character_4 = v164()
        local_player_5_ref_13_ref = character_4
        character_4 = local_player_5_ref_13_ref
        event_connection_2 = not character_4
        if event_connection_2 then
            return
        else
            local_player_5_ref_11_ref = 29026423551180
            ui_node_6 = game.GetService
            ui_node_2 = 30394687403849
            event_connection_3 = v0
            ui_node_7 = v1
            event_connection_2 = ui_node_6.Heartbeat
            character_3 = event_connection_2.Connect
            ui_node_6 = function(arg1, arg2, arg3)
                    local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
                    event_connection_2 = local_player_5_ref_13_ref
                    if not event_connection_2 then
                        return
                    else
                        event_connection_2 = local_player_5_ref_13_ref
                        character_4 = event_connection_2.activeGame
                        lookup = not character_4
                        if not lookup then
                            event_connection_3 = character_4.gridFrame
                            ui_node_6 = not event_connection_3
                            if not ui_node_6 then
                                local_player_5_ref_11_ref = 18741691638295
                                ui_node_7 = character_4.gridFrame
                                event_connection_3 = ui_node_7.Parent
                                ui_node_6 = not event_connection_3
                                lookup = ui_node_6
                            end
                            event_connection_2 = lookup
                        end
                        if event_connection_2 then
                            event_connection_2 = local_player_5_ref_13_ref
                            lookup = nil
                            if event_connection_2 ~= lookup then
                                event_connection_2 = v170()
                            end
                            return
                        else
                            lookup = character_4.gameEnded
                            if lookup then
                                return "gameEnded"
                            else
                                event_connection_3 = nil
                                ui_node_6 = character_4 ~= event_connection_3
                                if not ui_node_6 then
                                    event_connection_4 = 468902117594
                                    event_connection_3 = character_4.id
                                    ui_node_7 = nil
                                    ui_node_6 = event_connection_3 ~= ui_node_7
                                    lookup = ui_node_6
                                end
                                if lookup then
                                    local_player_5_ref_2 = 12839658772314
                                    event_connection_3 = v1
                                    lookup = character_4.id
                                    local math_lib_2_2_ref = lookup
                                    ui_node_6 = v176(character_4)
                                end
                                return
                            end
                        end
                    end
                end
            character_4 = math_lib_2_2_ref
character_3 = event_connection_2:Connect(ui_node_6)
            return
        end
    end
    hN[51] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        if local_player_5_ref_3 then
            local_player_5_ref_13_ref = local_player_5_ref_3
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
        end
        character_4 = v170()
        character_4 = v164()
        if character_4 then
            event_connection_3 = character_4.activeGame
            if event_connection_3 then
                ui_node_7 = character_4.activeGame
                event_connection_3 = ui_node_7.gridFrame
                character_3 = event_connection_3
            end
            event_connection_2 = character_3
        end
        if event_connection_2 then
            ui_node_7 = character_4.activeGame
            event_connection_3 = ui_node_7.gridFrame
            ui_node_7 = {event_connection_3.GetChildren(event_connection_3)}
            event_connection_3 = {ipairs(unpack_fn(ui_node_7))}
            ui_node_6 = event_connection_3[3]
            character_3 = event_connection_3[2]
            lookup = event_connection_3[1]
            while true do
                ui_node_6,ui_node_7 = lookup(character_3,ui_node_6)
                if not ui_node_6 then
                    break
                end
                ui_node_2 = v1
                local_player_5_ref_11_ref = 9066979741822
                local_player_5_ref_23 = "Button"
event_connection_2 = ui_node_7:FindFirstChild(local_player_5_ref_23)
                local_player_5_ref_23 = event_connection_2
                if local_player_5_ref_23 then
                    local_player_5_ref_2 = v171(local_player_5_ref_23)
                end
                ui_node_7 = nil
                local_player_5_ref_23 = nil
                event_connection_3 = nil
            end
        end
        return
    end
    local v179 = hN[51]
    local v180 = hN[52]
    hN[72] = "\165`\023"
    hN[52] = nil
    local v181 = hN[54]
    hN[56] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_5, local_25, math_lib_8, local_6, local_27, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, local_24, event_connection_2, ui_node_6, event_connection_3, local_16, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, local_20, math_lib_9, event_connection_4, character_3
        ui_node_7 = 4499143215151
        event_connection_2 = v181()
event_connection_2 = task
        lookup = v0
        character_3 = v1
        local_player_5_ref_13_ref = task.spawn
        character_4 = function()
                local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_5, local_25, math_lib_8, local_6, local_27, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, local_24, event_connection_2, ui_node_6, event_connection_3, local_16, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, local_20, math_lib_9, event_connection_4, character_3
                if local_player_5_ref_13_ref then
local_player_5_ref_13_ref = pcall
                    lookup = function(arg1, arg2, arg3)
                                local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_5, local_25, math_lib_8, local_6, local_27, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, local_24, event_connection_2, ui_node_6, event_connection_3, local_16, local_player_5_ref_13_ref_ref, local_player_5_ref_23, ui_node_2, local_20, math_lib_9, event_connection_4, character_3
                                character_4 = v166()
                                if not character_4 then
                                    local_player_5_ref_13_ref = task.wait
                                    character_4 = .2
                                    event_connection_2 = local_player_5_ref_13_ref(character_4)
                                    return
                                else
                                    local_player_5_ref_13_ref = task.wait
                                    character_4 = .8
                                    event_connection_2 = local_player_5_ref_13_ref(character_4)
                                    event_connection_2 = v164()
                                    character_4 = event_connection_2
                                    if not character_4 then
                                        character_3 = v0
                                        lookup = character_3["a\194\180\195\131\""]
                                        local_player_5_ref_13_ref = task[lookup]
                                        lookup = 0.5
                                        event_connection_2 = local_player_5_ref_13_ref(lookup)
                                        return "9I#\218"
                                    else
                                        lookup = v0
                                        local v183 = character_4.activeGame
                                        ui_node_6 = v183
                                        character_3 = not ui_node_6
                                        if not character_3 then
                                            character_3 = v184.gameEnded
                                            event_connection_2 = character_3
                                        end
                                        if event_connection_2 then
                                            local_player_5_ref_13_ref = task.wait
                                            character_3 = 0.5
                                            event_connection_2 = local_player_5_ref_13_ref(character_3)
                                            return
                                        else
                                            event_connection_2 = v183
                                            character_3 = event_connection_2.Solution
                                            event_connection_2 = v183
                                            local v184 = event_connection_2.paths
                                            local_player_5_ref_23 = type(character_3)
                                            ui_node_7 = "table"
                                            event_connection_3 = local_player_5_ref_23 ~= ui_node_7
                                            if not event_connection_3 then
                                                local_player_5_ref_2 = v184
                                                local_player_5_ref_23 = type(local_player_5_ref_2)
                                                local_player_5_ref_2 = v0
                                                local_player_5_ref_11_ref = 20123912004762
                                                local_player_5_ref_11_ref = v1(local_player_5_ref_11_ref,local_player_5_ref_11_ref)
                                                ui_node_7 = local_player_5_ref_2[local_player_5_ref_11_ref]
                                                event_connection_3 = local_player_5_ref_23 ~= ui_node_7
                                                event_connection_2 = event_connection_3
                                            end
                                            if event_connection_2 then
                                                local_player_5_ref_13_ref = task.wait
                                                event_connection_3 = 0.5
                                                event_connection_2 = local_player_5_ref_13_ref(event_connection_3)
                                                return "wait"
                                            else
                                                local_player_5_ref_23 = v184
                                                local_player_5_ref_2 = {pairs(local_player_5_ref_23)}
                                                ui_node_7 = local_player_5_ref_2[3]
                                                event_connection_3 = local_player_5_ref_2[2]
                                                event_connection_2 = local_player_5_ref_2[1]
                                                local_player_5_ref_23 = event_connection_2
                                                while true do
                                                    ui_node_7 = local_player_5_ref_23(event_connection_3,ui_node_7)
                                                    if not ui_node_7 then
                                                        break
                                                    end
                                                    local_player_5_ref_13_ref = v184
                                                    local_player_5_ref_2 = ui_node_7
                                                    ui_node_2 = {}
                                                    local_player_5_ref_13_ref[local_player_5_ref_2] = ui_node_2
                                                end
local_player_5_ref_13_ref = pcall
                                                ui_node_7 = function(arg1, arg2, arg3, arg4, arg5)
                                                                local local_player_5_ref_13_ref, event_connection_2
                                                                local_player_5_ref_13_ref = v183
event_connection_2 = local_player_5_ref_13_ref:updateGui()
                                                                return
                                                            end
                                                event_connection_3 = local_player_5_ref_13_ref(ui_node_7)
                                                local_player_5_ref_2 = {pairs(character_3)}
                                                local_player_5_ref_23 = local_player_5_ref_2[3]
                                                event_connection_3 = local_player_5_ref_2[1]
                                                ui_node_7 = local_player_5_ref_2[2]
                                                while true do
                                                    local_player_5_ref_23,ui_node_2 = event_connection_3(ui_node_7,local_player_5_ref_23)
                                                    if not local_player_5_ref_23 then
                                                        break
                                                    end
                                                    local_player_5_ref_2 = local_player_5_ref_23
                                                    local_player_5_ref_2 = local_player_5_ref_2
                                                    local_player_5_ref_2 = local_player_5_ref_2
                                                    local_player_5_ref_11_ref = local_player_5_ref_13_ref
                                                    event_connection_4 = not local_player_5_ref_11_ref
                                                    if not event_connection_4 then
                                                        local_player_5_ref_20 = v166()
                                                        local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                                    end
                                                    if local_player_5_ref_11_ref then
                                                    else
                                                        local_player_5_ref_11_ref = character_4.activeGame
                                                        local_player_5_ref_20 = v183
                                                        event_connection_4 = local_player_5_ref_11_ref ~= local_player_5_ref_20
                                                        if not event_connection_4 then
                                                            local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                                        end
                                                        if local_player_5_ref_11_ref then
                                                        else
                                                            goto block_10822888
                                                        end
                                                        ::block_10822888::
                                                        local_player_5_ref_20 = type(ui_node_2)
                                                        local_player_5_ref_11_ref = #ui_node_2
                                                        local_player_5_ref_20 = 1
                                                        event_connection_4 = local_player_5_ref_11_ref >= local_player_5_ref_20
                                                        local_player_5_ref_13_ref = v182
                                                        local_player_5_ref_11_ref = local_player_5_ref_2(ui_node_2)
                                                        local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                                        local_player_5_ref_20 = function(arg1, arg2)
                                                                        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, local_player_5_ref_20, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
                                                                        local_player_5_ref_13_ref = v183
                                                                        event_connection_3 = 33313569815704
                                                                        character_4 = true
                                                                        local_player_5_ref_13_ref.isDrawing = character_4
                                                                        local_player_5_ref_13_ref = v183
                                                                        character_3 = v0
                                                                        lookup = character_3[event_connection_3]
                                                                        event_connection_3 = local_player_5_ref_11_ref
                                                                        ui_node_7 = 1
                                                                        ui_node_6 = event_connection_3[ui_node_7]
                                                                        character_3 = ui_node_6.row
                                                                        local_player_5_ref_2 = 1
                                                                        local_player_5_ref_20 = 9881000759801
                                                                        local_player_5_ref_23 = local_player_5_ref_11_ref
                                                                        ui_node_7 = local_player_5_ref_23[local_player_5_ref_2]
                                                                        event_connection_3 = ui_node_7.col
                                                                        local_player_5_ref_2 = v1
                                                                        local_player_5_ref_23 = local_player_5_ref_2
                                                                        character_4 = {[lookup] = character_3, col = event_connection_3,color = local_player_5_ref_23}
                                                                        local_player_5_ref_13_ref.drawingStart = character_4
                                                                        return
                                                                    end
                                                        local_player_5_ref_11_ref = local_player_5_ref_2(local_player_5_ref_20)
                                                        local_player_5_ref_13_ref_ref = local_player_5_ref_13_ref
                                                        local_player_5_ref_18 = not local_player_5_ref_13_ref_ref
                                                        local_player_5_ref_20 = local_player_5_ref_18
                                                        if local_player_5_ref_18 then goto block_9792022 else goto block_15574418 end
                                                        ::block_9792022::
                                                        if local_player_5_ref_20 then
                                                        local_player_5_ref_13_ref = 9203632
                                                        local_player_5_ref_20 = function(arg1, arg2, arg3)
                                                                        local local_player_5_ref_13_ref, character_4, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                                                                        local_player_5_ref_13_ref = v183
                                                                        character_4 = false
                                                                        local_player_5_ref_13_ref.isDrawing = character_4
                                                                        local_player_5_ref_13_ref = v183
                                                                        character_4 = v0
                                                                        lookup = v1
                                                                        local_player_5_ref_13_ref.drawingStart = character_4
                                                                        return "drawingStart"
                                                                    end
                                                        local_player_5_ref_11_ref = local_player_5_ref_2(local_player_5_ref_20)
                                                        local_player_5_ref_20 = v162
                                                        local_player_5_ref_11_ref = local_player_5_ref_2(local_player_5_ref_20)
                                                        else
                                                            goto block_5493393
                                                        end
                                                        ::block_5493393::
                                                        local_player_5_ref_11_ref = character_4.activeGame
                                                        local_player_5_ref_11_ref = v183
                                                        local_player_5_ref_13_ref_ref = local_player_5_ref_11_ref ~= local_player_5_ref_11_ref
                                                        local_player_5_ref_18 = local_player_5_ref_13_ref_ref
                                                        if local_player_5_ref_13_ref_ref then goto block_5081771 else goto block_6928449 end
                                                        ::block_5081771::
                                                        if local_player_5_ref_18 then
                                                        else
                                                            goto block_6982972
                                                        end
                                                        ::block_6982972::
                                                        local_player_5_ref_13_ref_ref = nil
                                                        local_player_5_ref_18 = 1
                                                        local_player_5_ref_11_ref = 1
                                                        local_player_5_ref_11_ref = 0
                                                        math_lib_8 = local_player_5_ref_11_ref < local_player_5_ref_11_ref
                                                        local_player_5_ref_11_ref = local_player_5_ref_18 - local_player_5_ref_11_ref
                                                        local_player_5_ref_11_ref = local_player_5_ref_11_ref + local_player_5_ref_11_ref
                                                        local_player_5_ref_18 = ((not math_lib_8) and (local_player_5_ref_11_ref <= local_player_5_ref_13_ref_ref)) or (math_lib_8 and (local_player_5_ref_11_ref >= local_player_5_ref_13_ref_ref))
                                                        if local_player_5_ref_18 then
                                                        local_player_5_ref_18 = local_player_5_ref_11_ref
                                                        local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                                        local_25 = local_player_5_ref_11_ref[local_player_5_ref_18]
                                                        local_4 = local_25.row
                                                        local_player_5_ref_11_ref = local_player_5_ref_11_ref
                                                        local_5 = local_player_5_ref_11_ref[local_player_5_ref_18]
                                                        local_24 = v0
                                                        local_player_5_ref_11_ref = "col"
                                                        local_player_5_ref_11_ref = local_5.col
                                                        local_9 = {row = local_4,col = local_player_5_ref_11_ref}
                                                        local_player_5_ref_2[local_player_5_ref_18] = local_9
                                                        local_player_5_ref_13_ref = 10169417
                                                        else
                                                            goto block_10377875
                                                        end
                                                        ::block_10377875::
                                                        local_player_5_ref_24 = function()
                                                                        local local_player_5_ref_13_ref, character_4, event_connection_2
                                                                        local_player_5_ref_13_ref = v184
                                                                        event_connection_2 = local_player_5_ref_2
                                                                        character_4 = local_player_5_ref_2
                                                                        local_player_5_ref_13_ref[event_connection_2] = character_4
                                                                        return
                                                                    end
                                                        local_player_5_ref_18 = local_player_5_ref_2(local_player_5_ref_24)
local_player_5_ref_13_ref = pcall
                                                        local_player_5_ref_24 = function(arg1, arg2, arg3)
                                                                        local local_player_5_ref_13_ref, event_connection_2
                                                                        local_player_5_ref_13_ref = v183
event_connection_2 = local_player_5_ref_13_ref:updateGui()
                                                                        return
                                                                    end
                                                        local_player_5_ref_18 = local_player_5_ref_2(local_player_5_ref_24)
                                                        local_player_5_ref_24 = v162
                                                        local_player_5_ref_18 = local_player_5_ref_2(local_player_5_ref_24)
                                                        ::block_6928449::
                                                        local_25 = 14634991082142
                                                        math_lib_8 = v0
                                                        local_9 = v1
                                                        goto block_5081771
                                                        ::block_15574418::
                                                        local_player_5_ref_11_ref = v166()
                                                        local_player_5_ref_13_ref = 9792022
                                                        goto block_9792022
                                                    end
                                                end
                                                ui_node_7 = function(arg1, arg2, arg3, arg4, arg5)
                                                                local local_player_5_ref_13_ref, character_4, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                                                                local_player_5_ref_13_ref = v183
                                                                character_4 = false
                                                                local_player_5_ref_13_ref.isDrawing = character_4
                                                                return
                                                            end
                                                event_connection_3 = local_player_5_ref_2(ui_node_7)
local_player_5_ref_13_ref = pcall
                                                ui_node_7 = function(arg1, arg2, arg3, arg4)
                                                                local local_player_5_ref_13_ref, event_connection_2
                                                                local_player_5_ref_13_ref = v183
event_connection_2 = local_player_5_ref_13_ref:updateGui()
                                                                return
                                                            end
                                                event_connection_3 = local_player_5_ref_2(ui_node_7)
                                                local_player_5_ref_13_ref = task.wait
                                                ui_node_7 = .1
                                                event_connection_3 = local_player_5_ref_2(ui_node_7)
                                                ui_node_7 = function(arg1, arg2, arg3)
                                                                local local_player_5_ref_13_ref, event_connection_2
                                                                local_player_5_ref_13_ref = v183
event_connection_2 = local_player_5_ref_13_ref:checkForWin()
                                                                return
                                                            end
                                                event_connection_3 = local_player_5_ref_2(ui_node_7)
                                                local_player_5_ref_11_ref = 30725032097763
                                                local_player_5_ref_20 = 3
                                                text_label = v0
                                                local_player_5_ref_20 = v1
                                                ui_node_7 = {Title = "Puzzle", Content = "Solved!",Duration = 3,Icon = "check"}
event_connection_3 = local_player_5_ref_2:Notify(ui_node_7)
                                                event_connection_4 = 8816158625801
                                                lookup = v183
                                                local_player_5_ref_13_ref = task.wait
                                                ui_node_7 = 3
                                                event_connection_3 = local_player_5_ref_2(ui_node_7)
                                                return "wait"
                                            end
                end
                                    end
                                end
                            end
                    character_3 = {local_player_5_ref_13_ref(lookup)}
                    event_connection_2 = character_3[1]
                    lookup = event_connection_2
                    character_4 = character_3[2]
                    if not lookup then
                        ui_node_2 = 30334769887021
                        ui_node_6 = "[AutoSolve] "
                        ui_node_7 = tostring(character_4)
                        character_3 = ui_node_6 .. ui_node_7
                        event_connection_2 = warn(character_3)
                        local_player_5_ref_2 = 19842624807959
                        character_3 = function(arg1, arg2, arg3, arg4, arg5)
                                    local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
                                    event_connection_2 = v164()
                                    character_4 = event_connection_2
                                    if character_4 then
                                        local_player_5_ref_2 = 8718204932059
                                        lookup = character_4.activeGame
                                        event_connection_2 = lookup
                                    end
                                    if event_connection_2 then
                                        local_player_5_ref_13_ref = character_4.activeGame
                                        lookup = false
                                        local_player_5_ref_13_ref.isDrawing = lookup
                                        character_3 = v1
                                    end
                                    return
                                end
                        event_connection_2 = pcall(character_3)
                        ui_node_6 = v0
                        event_connection_3 = v1
                        local_player_5_ref_13_ref = task.activeGame
                        character_3 = 1
                        event_connection_2 = local_player_5_ref_13_ref(character_3)
                    end
                    character_4 = nil
                    lookup = nil
                end
                return
            end
        event_connection_2 = local_player_5_ref_13_ref(character_4)
        return
    end
    local v188 = hN[56]
    hN[65] = 11533263017210
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[63] = "H\217i\230\170\004H\140\030\169\249\227\191\170\027\210"
    hN[60] = v0
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[66] = 26605381709925
    hN[59] = hN[60][hN[62]]
    hN[61] = v0
    hN[73] = 25757857033946
    hN[62] = v1
    hN[64] = "\194\247.\151"
    hN[63] = hN[62](hN[64],hN[65])
    hN[65] = "\197\2394R\2254z3*\196\006"
    hN[60] = hN[61][hN[63]]
    hN[93] = 32357427608283
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[63] = v0
    hN[66] = "\210\240\150?"
    hN[75] = 34528026246862
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[67] = "8~L\170g"
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[68] = "g~$\240"
    hN[65] = v0
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[67] = v0
    hN[65] = 270230.5 - 270230
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[69] = v0
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[68] = hN[69][hN[71]]
    hN[69] = - 451153 + 451153.5
    hN[71] = v0
    hN[56] = "Slider"
    hN[72] = v1
    hN[73] = hN[72](hN[74],hN[75])
    hN[70] = hN[71][hN[73]]
    hN[71] = 15
    hN[73] = v0
    hN[74] = v1
    hN[75] = hN[74](hN[76],hN[77])
    hN[72] = hN[73][hN[75]]
    hN[73] = 5
    hN[67] = {[hN[68]] = hN[69], [hN[70]] = hN[71], [hN[72]] = hN[73]}
    hN[73] = 5622418131514
    hN[69] = v0
    hN[72] = "\225\180\r\226\150\178\176\177"
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[68] = hN[69][hN[71]]
    hN[69] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local local_player_5_ref_13_ref, character_4, lookup, event_connection_2
        event_connection_2 = local_player_5_ref_13_ref
        if event_connection_2 then
            lookup = v167()
            lookup = v169()
        end
        return
    end
    hN[57] = {[hN[58]] = hN[59],[hN[60]] = hN[61],[hN[62]] = hN[63],[hN[64]] = hN[65],[hN[66]] = hN[67], [hN[68]] = hN[69]}
    hN[56] = hN[28][hN[56]]
    hN[56] = hN[56](hN[28],hN[57])
    hN[62] = 31307029166322
    hN[74] = "\168\016\161\247\019\223\173 "
    hN[56] = v19
    hN[61] = "/\223\139\210f\204\207"
    hN[58] = v0
    hN[59] = v1
    hN[64] = "\204\006@+|"
    hN[66] = 17607742709767
    hN[75] = 18131731554555
    hN[60] = hN[59](hN[61],hN[62])
    hN[65] = 27670691902037
    hN[57] = hN[58][hN[60]]
    hN[61] = v0
    hN[62] = v1
    hN[73] = 10432536924922
    hN[63] = hN[62](hN[64],hN[65])
    hN[60] = hN[61][hN[63]]
    hN[62] = v0
    hN[65] = "\171\170\002K\246\138\154\247\193\228^4\174\181"
    hN[63] = v1
    hN[58] = "Toggle"
    hN[72] = 21647896815456
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[68] = 11989951452623
    hN[66] = "\243\159\147\162"
    hN[63] = v0
    hN[58] = hN[28][hN[58]]
    hN[64] = v1
    hN[67] = 6583160278009
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[65] = v1
    hN[67] = "\1498_\163\235\178\171\168,\004\015\188(b$\002"
    hN[69] = 27494021706242
    hN[71] = 22591071562007
    hN[70] = 20058917692540
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[77] = 13617367570629
    hN[65] = v0
    hN[68] = "p\162\186\159"
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[69] = "\195D\140"
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[70] = "\187g5?"
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[68] = v0
    hN[69] = v1
    hN[71] = "u;/s\r\191f\170"
    hN[70] = hN[69](hN[71],hN[72])
    hN[67] = hN[68][hN[70]]
    hN[72] = "\246\186\004\238\165"
    hN[69] = v0
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[68] = hN[69][hN[71]]
    hN[71] = v0
    hN[72] = v1
    hN[73] = hN[72](hN[74],hN[75])
    hN[70] = hN[71][hN[73]]
    hN[71] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        local_player_5_ref_13_ref = character_4
        if character_4 then
            lookup = v169()
            event_connection_2 = v10
            character_3 = {Title = "Generator",Content = "ON",Duration = 3,Icon = "sun"}
lookup = event_connection_2:Notify(character_3)
        else
            lookup = v167()
            event_connection_2 = v10
            local_player_5_ref_20 = 7504072183206
            ui_node_2 = 3
            local_player_5_ref_20 = v0
            local_player_5_ref_20 = v1
            character_3 = {Title = "Generator", Content = "OFF", Duration = 3, Icon = "square"}
lookup = event_connection_2:Notify(character_3)
        end
        return
    end
    hN[69] = false
    hN[59] = {[hN[60]] = hN[61], [hN[62]] = hN[63],[hN[64]] = hN[65], [hN[66]] = hN[67],[hN[68]] = hN[69], [hN[70]] = hN[71]}
    hN[58] = hN[58](hN[28],hN[59])
    hN[56][hN[57]] = hN[58]
    hN[56] = v19
    hN[64] = "\237\003\005\137\214"
    hN[58] = v0
    hN[67] = 4427338713101
    hN[61] = "\157t\140\135m\134=\024P"
    hN[79] = 5895190514361
    hN[62] = 5083684555071
    hN[59] = v1
    hN[60] = hN[59](hN[61],hN[62])
    hN[57] = hN[58][hN[60]]
    hN[66] = 33261929217152
    hN[61] = v0
    hN[65] = 29204667413791
    hN[62] = v1
    hN[63] = hN[62](hN[64],hN[65])
    hN[60] = hN[61][hN[63]]
    hN[75] = 30682810496975
    hN[62] = v0
    hN[63] = v1
    hN[65] = "\190\200\214\236\128x?\196}\209"
    hN[80] = "\015~\218\182Z\t"
    hN[72] = 21307717969602
    hN[64] = hN[63](hN[65],hN[66])
    hN[71] = 18692859044352
    hN[61] = hN[62][hN[64]]
    hN[68] = 26206539231147
    hN[63] = v0
    hN[66] = "3\2442\197"
    hN[69] = 3699975243450
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[65] = v1
    hN[67] = "Uw(\172\231\1854\186\200\001:\158\0119\235\159\011\213*J\017\1485\165\180\005\200\195\251hzT\141\204"
    hN[66] = hN[65](hN[67],hN[68])
    hN[68] = "\006\219\005\192"
    hN[74] = "\132Zh\247E"
    hN[63] = hN[64][hN[66]]
    hN[65] = v0
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[69] = "[\153\201"
    hN[64] = hN[65][hN[67]]
    hN[70] = 549995774208
    hN[66] = v0
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[70] = "\230\136\020\244"
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[76] = "\213:\182y\165\255\208\251"
    hN[66] = hN[67][hN[69]]
    hN[68] = v0
    hN[71] = "\134\211\208\131\028\247\239\184"
    hN[69] = v1
    hN[73] = 7133156068601
    hN[70] = hN[69](hN[71],hN[72])
    hN[67] = hN[68][hN[70]]
    hN[69] = v0
    hN[72] = "\173\248\173\205\007\140"
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[68] = hN[69][hN[71]]
    hN[69] = false
    hN[71] = v0
    hN[72] = v1
    hN[73] = hN[72](hN[74],hN[75])
    hN[58] = "Toggle"
    hN[70] = hN[71][hN[73]]
    hN[58] = hN[30][hN[58]]
    hN[91] = 142602043458
    hN[73] = v0
    hN[74] = v1
    hN[71] = false
    hN[75] = hN[74](hN[76],hN[77])
    hN[72] = hN[73][hN[75]]
    hN[73] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        local_player_5_ref_13_ref = character_4
        if character_4 then
            lookup = v180()
            event_connection_2 = v10
            character_3 = {Title = "Puzzle ESP",Content = "ON",Duration = 2, Icon = "eye"}
lookup = event_connection_2:Notify(character_3)
        else
            local_player_5_ref_20 = 32998653443078
            lookup = v179()
            event_connection_2 = v10
            ui_node_2 = 2
            local_player_5_ref_20 = v0
            local_player_5_ref_20 = v1
            character_3 = {Title = "Puzzle ESP",Content = "OFF",Duration = 2, Icon = "eye-off"}
lookup = event_connection_2:Notify(character_3)
        end
        return
    end
    hN[59] = {[hN[60]] = hN[61], [hN[62]] = hN[63],[hN[64]] = hN[65],[hN[66]] = hN[67], [hN[68]] = hN[69], [hN[70]] = hN[71], [hN[72]] = hN[73]}
    hN[62] = "\219\131\187.\222"
    hN[58] = hN[58](hN[30],hN[59])
    hN[76] = "\173\254\240"
    hN[75] = 8973105549394
    hN[66] = 23930643098503
    hN[56][hN[57]] = hN[58]
    hN[59] = v0
    hN[74] = "\158\244\210"
    hN[63] = 11389014561975
    hN[65] = 31018543560812
    hN[64] = 26443977666585
    hN[68] = 917856010667
    hN[72] = "\028\192,\"t"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = "\167\236c\026\006l\189"
    hN[58] = hN[59][hN[61]]
    hN[67] = 33948049849792
    hN[60] = v0
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[64] = "\221p\022\155"
    hN[59] = hN[60][hN[62]]
    hN[61] = v0
    hN[62] = v1
    hN[70] = "\011\197;\165"
    hN[63] = hN[62](hN[64],hN[65])
    hN[60] = hN[61][hN[63]]
    hN[69] = 17950938407079
    hN[62] = v0
    hN[63] = v1
    hN[65] = "\215\000\019\209`\005/\167"
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[63] = v0
    hN[66] = "l\231\204\150"
    hN[73] = 5345194723769
    hN[64] = v1
    hN[77] = 541210116348
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[67] = "\169Q\127\215\191"
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[71] = 32025606961729
    hN[65] = v0
    hN[66] = v1
    hN[68] = "\026\205\132#\148\165"
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[65] = false
    hN[67] = v0
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[69] = v0
    hN[67] = .02
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[85] = 5228806998402
    hN[68] = hN[69][hN[71]]
    hN[71] = v0
    hN[72] = v1
    hN[73] = hN[72](hN[74],hN[75])
    hN[70] = hN[71][hN[73]]
    hN[73] = v0
    hN[74] = v1
    hN[71] = .05
    hN[75] = hN[74](hN[76],hN[77])
    hN[72] = hN[73][hN[75]]
    hN[75] = v0
    hN[73] = 502729.5 - 502729
    hN[76] = v1
    hN[77] = hN[76](hN[78],hN[79])
    hN[74] = hN[75][hN[77]]
    hN[75] = .08
    hN[69] = {[hN[70]] = hN[71],[hN[72]] = hN[73], [hN[74]] = hN[75]}
    hN[76] = "\134D\026\240E\247\161\231"
    hN[74] = "\182\026\127\028\177u5\253"
    hN[71] = v0
    hN[56] = "Slider"
    hN[72] = v1
    hN[75] = 27665964593746
    hN[56] = hN[31][hN[56]]
    hN[73] = hN[72](hN[74],hN[75])
    hN[70] = hN[71][hN[73]]
    hN[71] = function(arg1)
        local local_player_5_ref_13_ref, character_4, lookup, event_connection_2
        event_connection_2 = local_player_5_ref_13_ref
        if event_connection_2 then
            lookup = v181()
            lookup = v188()
        end
        return
    end
    hN[57] = {[hN[58]] = hN[59],[hN[60]] = hN[61],[hN[62]] = hN[63], [hN[64]] = hN[65],[hN[66]] = hN[67], [hN[68]] = hN[69],[hN[70]] = hN[71]}
    hN[67] = 281923551363
    hN[70] = 362815832232
    hN[62] = 21848928085950
    hN[73] = 30907763554360
    hN[66] = 23164402985506
    hN[56] = hN[56](hN[31],hN[57])
    hN[68] = 5036048238889
    hN[61] = "$'`\012F8#}+"
    hN[65] = 13028346582962
    hN[56] = v19
    hN[71] = 7476286819737
    hN[58] = v0
    hN[59] = v1
    hN[60] = hN[59](hN[61],hN[62])
    hN[57] = hN[58][hN[60]]
    hN[64] = "jp\030IV"
    hN[61] = v0
    hN[62] = v1
    hN[63] = hN[62](hN[64],hN[65])
    hN[60] = hN[61][hN[63]]
    hN[92] = 23709390990112
    hN[62] = v0
    hN[69] = 6069540850442
    hN[63] = v1
    hN[72] = 7106410269933
    hN[65] = "\208H\187\242[\252P\003\190\007Bye+\219\234)"
    hN[64] = hN[63](hN[65],hN[66])
    hN[66] = "\029\245j\164"
    local_player_5_ref_13_ref = 6490282
    hN[61] = hN[62][hN[64]]
    hN[63] = v0
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[89] = 1166556070431
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[67] = "Fk\216\134"
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[68] = "\004\146\192\008"
    hN[65] = v0
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[69] = "\228\234a"
    hN[64] = hN[65][hN[67]]
    hN[74] = "\230\204\rO\146\176"
    hN[66] = v0
    hN[75] = 15499460123697
    hN[58] = "Toggle"
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[70] = "\252]o\131"
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[68] = v0
    hN[71] = "\148\186\t\024\229N\244\206"
    hN[69] = v1
    hN[70] = hN[69](hN[71],hN[72])
    hN[67] = hN[68][hN[70]]
    hN[69] = v0
    hN[72] = "\232Hs\178\186"
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[68] = hN[69][hN[71]]
    hN[71] = v0
    hN[72] = v1
    hN[77] = 34993216176038
    hN[73] = hN[72](hN[74],hN[75])
    hN[70] = hN[71][hN[73]]
    hN[69] = false
    hN[73] = v0
    hN[97] = 8046661013155
    hN[74] = v1
    hN[90] = 19326637466407
    hN[75] = hN[74](hN[76],hN[77])
    hN[72] = hN[73][hN[75]]
    hN[73] = function(arg1, arg2, arg3)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        local_player_5_ref_13_ref = character_4
        if character_4 then
            lookup = v188()
            event_connection_2 = v10
            character_3 = {Title = "Puzzle", Content = "Auto Solve ON",Duration = 3, Icon = "zap"}
lookup = event_connection_2:Notify(character_3)
        else
            lookup = v181()
            event_connection_2 = v10
            local_player_5_ref_20 = 5455241447916
            ui_node_2 = 3
            local_player_5_ref_11_ref = "Icon"
            local_player_5_ref_20 = v0
            local_player_5_ref_20 = v1
            character_3 = {Title = "Puzzle", Content = "Auto Solve OFF",Duration = 3, Icon = "square"}
lookup = event_connection_2:Notify(character_3)
        end
        return
    end
    hN[58] = hN[31][hN[58]]
    hN[71] = false
    hN[59] = {[hN[60]] = hN[61],[hN[62]] = hN[63],[hN[64]] = hN[65], [hN[66]] = hN[67],[hN[68]] = hN[69],[hN[70]] = hN[71], [hN[72]] = hN[73]}
    hN[62] = "\213\240Rk\233x\223<?\1550M\015\026"
    hN[58] = hN[58](hN[31],hN[59])
    hN[63] = 26120120577923
    hN[56][hN[57]] = hN[58]
    hN[57] = v56
    hN[59] = v0
    hN[70] = 2686708663523
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[76] = "\158]\205\147\138Z\194\139\204"
    hN[58] = hN[59][hN[61]]
    hN[56] = hN[57][hN[58]]
    hN[58] = function()
        local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
        event_connection_2 = v170()
        event_connection_2 = local_player_5_ref_13_ref
        if event_connection_2 then
            character_3 = v0
            lookup = character_3.Puzzle
            event_connection_2 = task[lookup]
            lookup = 2
            character_4 = event_connection_2(lookup)
            character_4 = v167()
            character_4 = v169()
        end
        event_connection_2 = local_player_5_ref_13_ref
        if event_connection_2 then
            character_3 = v0
            lookup = character_3.Puzzle
            event_connection_2 = task[lookup]
            lookup = 2
            character_4 = event_connection_2(lookup)
            character_4 = v181()
            character_4 = v188()
        end
        event_connection_2 = local_player_5_ref_13_ref
        if event_connection_2 then
            character_3 = v0
            local_player_5_ref_23 = 32015311092284
            ui_node_6 = v1
            lookup = character_3.Puzzle
            event_connection_2 = task[lookup]
            lookup = 1
            character_4 = event_connection_2(lookup)
            character_4 = v180()
        end
        return
    end
    hN[57] = "Connect"
    hN[57] = hN[56][hN[57]]
    hN[57] = hN[57](hN[56],hN[58])
    hN[68] = 25465271004754
    hN[56] = {}
    local v189 = hN[56]
    hN[66] = 27845379650214
    hN[62] = "\247\162\207\157$\250\170\151\153("
    hN[63] = 24309288987703
    hN[56] = v189
    hN[59] = v0
    hN[67] = 14895333808920
    hN[65] = "\163\135\250i\147D(\220\129\145"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[60] = "game"
    hN[69] = 24213510499339
    hN[59] = env[hN[60]]
    hN[62] = v0
    hN[60] = "GetService"
    hN[73] = 24993956097398
    hN[63] = v1
    hN[60] = hN[59][hN[60]]
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[60] = hN[60](hN[59],hN[61])
    hN[66] = 12289319884378
    hN[56][hN[58]] = hN[60]
    hN[62] = "\225@\187\204\005^\127"
    hN[56] = v189
    hN[63] = 9859285570031
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[65] = "a?\226\143\189\246\226"
    hN[58] = hN[59][hN[61]]
    hN[60] = "game"
    hN[59] = env[hN[60]]
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[60] = "GetService"
    hN[60] = hN[59][hN[60]]
    hN[60] = hN[60](hN[59],hN[61])
    hN[72] = 8533452672901
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[71] = 25274115075577
    hN[59] = v0
    hN[66] = "\239#\251\228\154\135\131"
    hN[62] = "?\235\160\150\244\017E\156\236\008\209"
    hN[63] = 28127303201577
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = v189
    hN[63] = v0
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[60] = hN[61][hN[62]]
    hN[67] = 22371620628657
    hN[79] = 22602700712221
    hN[65] = "\252\181d\130,\025\181\028\233b\176"
    hN[62] = v0
    hN[66] = 18358860734821
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[63] = 28490119033810
    hN[59] = hN[60][hN[61]]
    hN[62] = "\163T\163L\185"
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[75] = 17147459264304
    hN[61] = hN[60](hN[62],hN[63])
    hN[66] = " <\023\1388"
    hN[58] = hN[59][hN[61]]
    hN[59] = run_background_task_ref_2
    hN[60] = "Tab"
    hN[63] = v0
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[60] = hN[59][hN[60]]
    hN[62] = hN[63][hN[65]]
    hN[78] = 25206312562137
    hN[64] = v0
    hN[65] = v1
    hN[67] = "9?\232\187\214\177\003\2293"
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[65] = v0
    hN[68] = "\164\185\167j"
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[69] = "\238k\219\151P\169"
    hN[66] = v0
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[70] = "\155%P\000Ux"
    hN[67] = v0
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[67] = false
    hN[61] = {[hN[62]] = hN[63], [hN[64]] = hN[65], [hN[66]] = hN[67]}
    hN[62] = "j\193\165\178\012\1581\"\149"
    hN[60] = hN[60](hN[59],hN[61])
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[63] = 11706692654411
    hN[59] = v0
    hN[60] = v1
    hN[68] = 16475059625463
    hN[67] = 16298360004005
    hN[74] = 2351721612359
    hN[61] = hN[60](hN[62],hN[63])
    hN[71] = 32632441174875
    hN[58] = hN[59][hN[61]]
    hN[60] = v189
    hN[66] = 15276772662217
    hN[62] = v0
    hN[65] = "v\177A[\191"
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[63] = v0
    hN[64] = v1
    hN[66] = "\203\187\198\007\204"
    hN[65] = hN[64](hN[66],hN[67])
    hN[70] = 5136886270296
    hN[62] = hN[63][hN[65]]
    hN[67] = "e\246h\217\157G\243\168-\200\139\229u\185\172&\012n\243>\160\031\175\197<\018\216\007\2273,y\225\217n\002\213"
    hN[64] = v0
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[65] = v0
    hN[69] = 33867495931290
    hN[68] = "k\193P2"
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[69] = "\243<\242!\173\183\239\248&\161_\252"
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[70] = "\134\002\216\207\249"
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[71] = "U\236}"
    hN[66] = hN[67][hN[69]]
    hN[68] = v0
    hN[69] = v1
    hN[70] = hN[69](hN[71],hN[72])
    hN[77] = 10584509829952
    hN[72] = "\163:\027\163\176"
    hN[67] = hN[68][hN[70]]
    hN[69] = v0
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[68] = hN[69][hN[71]]
    hN[70] = v0
    hN[71] = v1
    hN[73] = ""
    hN[72] = hN[71](hN[73],hN[74])
    hN[74] = "\148]\173\131\1907\127\006\188"
    hN[69] = hN[70][hN[72]]
    hN[96] = 27640055853638
    hN[71] = v0
    hN[72] = v1
    hN[73] = hN[72](hN[74],hN[75])
    hN[70] = hN[71][hN[73]]
    hN[71] = 30
    hN[73] = v0
    hN[74] = v1
    hN[75] = hN[74](hN[76],hN[77])
    hN[60] = "Paragraph"
    hN[72] = hN[73][hN[75]]
    hN[77] = ""
    hN[74] = v0
    hN[75] = v1
    hN[76] = hN[75](hN[77],hN[78])
    hN[73] = hN[74][hN[76]]
    hN[75] = v0
    hN[78] = "\198o\011\025}n\237\191\233v\004\137\198"
    hN[76] = v1
    hN[77] = hN[76](hN[78],hN[79])
    hN[74] = hN[75][hN[77]]
    hN[77] = v0
    hN[75] = 80
    hN[78] = v1
    hN[60] = hN[59][hN[60]]
    hN[79] = hN[78](hN[80],hN[81])
    hN[76] = hN[77][hN[79]]
    hN[77] = false
    hN[61] = {[hN[62]] = hN[63], [hN[64]] = hN[65],[hN[66]] = hN[67], [hN[68]] = hN[69],[hN[70]] = hN[71],[hN[72]] = hN[73], [hN[74]] = hN[75], [hN[76]] = hN[77]}
    hN[63] = 21849636972478
    hN[60] = hN[60](hN[59],hN[61])
    hN[62] = "\211\130`Mo|\025"
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[71] = 23263873739345
    hN[58] = hN[59][hN[61]]
    hN[66] = 28599152292869
    hN[60] = v189
    hN[62] = v0
    hN[65] = "7\150\188\215I"
    hN[76] = 4883852789986
    hN[72] = 26939604300032
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[74] = 17935964938400
    hN[70] = 8210482859759
    hN[59] = hN[60][hN[61]]
    hN[98] = 26822442709194
    hN[68] = 10974553854966
    hN[66] = "Hr\214\220x"
    hN[63] = v0
    hN[67] = 33535569394944
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[60] = "Section"
    hN[67] = "\193\153\249\163\020\198F\147;"
    hN[60] = hN[59][hN[60]]
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[65] = v0
    hN[66] = v1
    hN[69] = 21260159837868
    hN[68] = "/ud\206"
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[69] = ">\018~\223R\203"
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[68] = v1
    hN[70] = "p\176\164\207\128\007"
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[67] = false
    hN[68] = 7508837879208
    hN[61] = {[hN[62]] = hN[63], [hN[64]] = hN[65], [hN[66]] = hN[67]}
    hN[66] = 23105816668679
    hN[70] = 31903633373704
    hN[69] = 10293065208505
    hN[60] = hN[60](hN[59],hN[61])
    hN[56][hN[58]] = hN[60]
    hN[63] = 14203090950613
    hN[56] = v189
    hN[83] = 25136210095544
    hN[59] = v0
    hN[60] = v1
    hN[62] = "\223\162\001\219:P"
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[65] = "\228\031T\171f"
    hN[60] = v189
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[63] = v0
    hN[67] = 6438362368950
    hN[64] = v1
    hN[66] = "\t\023\171&`"
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[67] = "\nF\0065/\r\216\206"
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[77] = 16484162641404
    hN[68] = "\249|\231C"
    hN[65] = v0
    hN[71] = 31722348378547
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[69] = "\229\191A\243\n\146\156\176"
    hN[66] = v0
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[68] = v1
    hN[70] = "H\151\r\151j*"
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[69] = 3107364259238
    hN[67] = false
    hN[61] = {[hN[62]] = hN[63],[hN[64]] = hN[65],[hN[66]] = hN[67]}
    hN[60] = "Section"
    hN[60] = hN[59][hN[60]]
    hN[63] = 12979773872028
    hN[66] = 21993376360449
    hN[60] = hN[60](hN[59],hN[61])
    hN[62] = "|\133\208\015d:G"
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[59] = v0
    hN[70] = 24719728569591
    hN[60] = v1
    hN[71] = 26939670376704
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[65] = "7zUC\170"
    hN[60] = v189
    hN[67] = 8244668927743
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[63] = v0
    hN[66] = "W\162\029\133\202"
    hN[64] = v1
    hN[68] = 28256546534245
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[65] = v1
    hN[67] = "\017\218\170mf\249\191Fjx"
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[65] = v0
    hN[66] = v1
    hN[60] = "Section"
    hN[68] = "\247]+\225"
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[69] = "'\191p\188q\252"
    hN[66] = v0
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[94] = 34959831449495
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[68] = v1
    hN[70] = "\026\028\012\018\209\129"
    hN[60] = hN[59][hN[60]]
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[67] = false
    hN[61] = {[hN[62]] = hN[63], [hN[64]] = hN[65],[hN[66]] = hN[67]}
    hN[60] = hN[60](hN[59],hN[61])
    hN[56][hN[58]] = hN[60]
    hN[66] = 22167797639250
    hN[56] = v189
    hN[70] = 17436210208695
    hN[59] = v0
    hN[63] = 8244250529535
    hN[60] = v1
    hN[65] = "\204\244\208\234\000"
    hN[62] = "(\246;\140w"
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[60] = v189
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[68] = 33238206626933
    hN[79] = 11582995256593
    hN[67] = 288750944390
    hN[59] = hN[60][hN[61]]
    hN[63] = v0
    hN[66] = "H\185Xe{"
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[69] = 24519519251609
    hN[67] = "\228_\236\243\011T\136\171\190"
    hN[64] = v0
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[68] = "~f\140\218"
    hN[65] = v0
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[60] = "Section"
    hN[67] = v1
    hN[69] = "\023P\255"
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[86] = 791518806384
    hN[67] = v0
    hN[68] = v1
    hN[70] = "\135\tWlw\014"
    hN[71] = 8638344351670
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[67] = false
    hN[78] = 13117242447836
    hN[61] = {[hN[62]] = hN[63],[hN[64]] = hN[65], [hN[66]] = hN[67]}
    hN[60] = hN[59][hN[60]]
    hN[73] = 4623072692328
    hN[60] = hN[60](hN[59],hN[61])
    hN[56][hN[58]] = hN[60]
    hN[62] = ")\026\249\225\133z\003P\162"
    hN[63] = 14541459708531
    hN[56] = v189
    hN[65] = "|'\020\210\200"
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[60] = v189
    hN[70] = 8509799960442
    hN[66] = 4854538815700
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[66] = "\253\nr>\182"
    hN[67] = 10158602670714
    hN[59] = hN[60][hN[61]]
    hN[71] = 12181278447144
    hN[69] = 33453691108570
    hN[63] = v0
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[68] = 1206724575793
    hN[67] = "t\201\142#Wt\156\148@\142\227K:"
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[68] = "$\236T\019"
    hN[65] = v0
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[67] = v1
    hN[69] = "G\158\006\188{\161"
    hN[68] = hN[67](hN[69],hN[70])
    hN[70] = "\200J\177Eq!"
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[68] = v1
    hN[60] = "Section"
    hN[69] = hN[68](hN[70],hN[71])
    hN[60] = hN[59][hN[60]]
    hN[66] = hN[67][hN[69]]
    hN[67] = false
    hN[61] = {[hN[62]] = hN[63], [hN[64]] = hN[65],[hN[66]] = hN[67]}
    hN[60] = hN[60](hN[59],hN[61])
    hN[56][hN[58]] = hN[60]
    hN[70] = 6699142466607
    hN[66] = 16720282836585
    hN[63] = 19529478857606
    hN[62] = "!\137\252\202\233\250\180:\164\142"
    hN[56] = v189
    hN[59] = v0
    hN[65] = "\190\142\248\203\017"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[60] = v189
    hN[62] = v0
    hN[63] = v1
    hN[69] = 4641727400049
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[63] = v0
    hN[66] = ";\201CG\017"
    hN[82] = 15001398991689
    hN[67] = 260780081273
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[71] = 6057035582212
    hN[67] = "\172I\250\007\185\016!^{KX"
    hN[64] = v0
    hN[65] = v1
    hN[68] = 33732569808219
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[65] = v0
    hN[66] = v1
    hN[68] = "\189\243?\001"
    hN[60] = "Section"
    hN[60] = hN[59][hN[60]]
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[69] = "&\159\005\128\166\206\\N"
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[68] = v1
    hN[70] = "G\n~\247\254\015"
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[67] = false
    hN[61] = {[hN[62]] = hN[63],[hN[64]] = hN[65], [hN[66]] = hN[67]}
    hN[60] = hN[60](hN[59],hN[61])
    hN[66] = 3418403735095
    hN[63] = 14934792608554
    hN[62] = "\159\25044b\2389T"
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[65] = "\030|\1888\020"
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[60] = v189
    hN[62] = v0
    hN[63] = v1
    hN[67] = 2595011871928
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[63] = v0
    hN[64] = v1
    hN[68] = 27914566480582
    hN[66] = "\011\150\253\004W"
    hN[65] = hN[64](hN[66],hN[67])
    hN[71] = 20986740925996
    hN[62] = hN[63][hN[65]]
    hN[67] = "\139\\\219\168|\153G\154]\240\145\222\157\189\159\202-N"
    hN[64] = v0
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[65] = v0
    hN[66] = v1
    hN[68] = "\247\230\211\192"
    hN[69] = 25411780095545
    hN[67] = hN[66](hN[68],hN[69])
    hN[69] = "\137\024@0cq\142"
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[67] = v1
    hN[70] = 10839680799671
    hN[60] = "Section"
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[67] = v0
    hN[68] = v1
    hN[70] = "\006\240l(\227t"
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[84] = 20782229448141
    hN[60] = hN[59][hN[60]]
    hN[67] = false
    hN[61] = {[hN[62]] = hN[63],[hN[64]] = hN[65],[hN[66]] = hN[67]}
    hN[60] = hN[60](hN[59],hN[61])
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[65] = "\168Z\198&\\"
    hN[59] = v0
    hN[62] = "v\181\212\025\246"
    hN[66] = 375037264046
    hN[80] = 22541198223616
    hN[60] = v1
    hN[63] = 28519144354784
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[67] = 12742039197485
    hN[60] = v189
    hN[68] = 1579022779103
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[66] = "\222E0\1306"
    hN[59] = hN[60][hN[61]]
    hN[63] = v0
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[67] = "=\242m\244\198\005&3\027\017e\001"
    hN[65] = v1
    hN[69] = 22542834903297
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[70] = 13030790141875
    hN[65] = v0
    hN[66] = v1
    hN[68] = "bw\152."
    hN[67] = hN[66](hN[68],hN[69])
    hN[69] = "\016\n\148"
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[60] = "Section"
    hN[67] = v0
    hN[81] = 28052035056390
    hN[70] = "hc\191\243j\148"
    hN[71] = 34817229406037
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[66] = hN[67][hN[69]]
    hN[60] = hN[59][hN[60]]
    hN[67] = false
    hN[61] = {[hN[62]] = hN[63],[hN[64]] = hN[65], [hN[66]] = hN[67]}
    hN[63] = 11877982049691
    hN[64] = "2\232e\166\133\251\003\019\242K\158\245z\1816"
    hN[60] = hN[60](hN[59],hN[61])
    hN[65] = 30467000350571
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[59] = v0
    hN[62] = "\252\181>\011\240\155_\145I\\Ru3"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[67] = 26419441774606
    hN[61] = v0
    hN[62] = v1
    hN[69] = 18429804339590
    hN[63] = hN[62](hN[64],hN[65])
    hN[60] = hN[61][hN[63]]
    hN[65] = "0n\221;\238\193\211B\188\165\156\196\028t\144"
    hN[62] = v0
    hN[63] = v1
    hN[66] = 8271201668875
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[63] = v0
    hN[71] = 33590858186009
    hN[68] = 137167061055
    hN[66] = "{.T?\003\222\191\027\218\012\183?\030\235\006"
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[64] = v0
    hN[67] = "\185\184=A\255\253\135\025\156\161\158\234!\194h"
    hN[70] = 27626166350400
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[68] = "\005\194\215?R\031\006\178\234E\2022\030@"
    hN[65] = v0
    hN[66] = v1
    hN[67] = hN[66](hN[68],hN[69])
    hN[69] = "\196\255Z\150\166^\008g \138s> \1760"
    hN[64] = hN[65][hN[67]]
    hN[66] = v0
    hN[67] = v1
    hN[68] = hN[67](hN[69],hN[70])
    hN[65] = hN[66][hN[68]]
    hN[70] = "\155T^\140\147V\149>\2331\022\245NU\201"
    hN[67] = v0
    hN[68] = v1
    hN[69] = hN[68](hN[70],hN[71])
    hN[71] = ".\159\139\196\184\250x\199\230\145,\199tIR"
    hN[66] = hN[67][hN[69]]
    hN[68] = v0
    hN[69] = v1
    hN[70] = hN[69](hN[71],hN[72])
    hN[67] = hN[68][hN[70]]
    hN[69] = v0
    hN[72] = "FY\221\231\196\139\219\210KA\209\187L\190"
    hN[75] = 8475515031402
    hN[70] = v1
    hN[71] = hN[70](hN[72],hN[73])
    hN[68] = hN[69][hN[71]]
    hN[70] = v0
    hN[71] = v1
    hN[73] = "m\133\147\210\182I\182\019y\003Ps\224\163A"
    hN[72] = hN[71](hN[73],hN[74])
    hN[69] = hN[70][hN[72]]
    hN[74] = "7\021V\002j(\227\026\234\210\196'0z\165"
    hN[71] = v0
    hN[72] = v1
    hN[73] = hN[72](hN[74],hN[75])
    hN[70] = hN[71][hN[73]]
    hN[72] = v0
    hN[73] = v1
    hN[75] = "\171\162\245\175v\145\146\206\027\1628\199\215U"
    hN[74] = hN[73](hN[75],hN[76])
    hN[76] = "\235\027@yW=\225\183\219\006\025\2168S\234"
    hN[71] = hN[72][hN[74]]
    hN[73] = v0
    hN[74] = v1
    hN[75] = hN[74](hN[76],hN[77])
    hN[72] = hN[73][hN[75]]
    hN[74] = v0
    hN[75] = v1
    hN[77] = "\193Lg\003\003\251e\015\144<\207\128A\154"
    hN[76] = hN[75](hN[77],hN[78])
    hN[73] = hN[74][hN[76]]
    hN[75] = v0
    hN[76] = v1
    hN[78] = "5\204\210\164\142\157\245\160\151\213\133q\158\226\145"
    hN[77] = hN[76](hN[78],hN[79])
    hN[74] = hN[75][hN[77]]
    hN[76] = v0
    hN[77] = v1
    hN[79] = "d\163\157\229\030\137\177\212\179vw^*\227 "
    hN[78] = hN[77](hN[79],hN[80])
    hN[75] = hN[76][hN[78]]
    hN[80] = "\157l\202C\149!\231\199\160(\003\242\243m\029"
    hN[77] = v0
    hN[78] = v1
    hN[79] = hN[78](hN[80],hN[81])
    hN[81] = "7\167\157\180\250\027z\211\004\1975\020<p"
    hN[76] = hN[77][hN[79]]
    hN[78] = v0
    hN[79] = v1
    hN[80] = hN[79](hN[81],hN[82])
    hN[77] = hN[78][hN[80]]
    hN[79] = v0
    hN[82] = "\154\012\128\138\012\212:\179\182\203tC\017\218K"
    hN[80] = v1
    hN[81] = hN[80](hN[82],hN[83])
    hN[78] = hN[79][hN[81]]
    hN[83] = "\142\"\131\237z\165\187\178\175\218Q\184C\182\142"
    hN[80] = v0
    hN[81] = v1
    hN[82] = hN[81](hN[83],hN[84])
    hN[79] = hN[80][hN[82]]
    hN[81] = v0
    hN[84] = "\222\163\133$\002\170\127\253\206I\146\201i\197\150"
    hN[82] = v1
    hN[83] = hN[82](hN[84],hN[85])
    hN[80] = hN[81][hN[83]]
    hN[85] = "\2400^\019\220!?\255@\014\003\0012V\150"
    hN[82] = v0
    hN[83] = v1
    hN[84] = hN[83](hN[85],hN[86])
    hN[81] = hN[82][hN[84]]
    hN[83] = v0
    hN[84] = v1
    hN[86] = "U\130O\193\0201\238\131\005+6\128Y\192"
    hN[85] = hN[84](hN[86],hN[87])
    hN[82] = hN[83][hN[85]]
    hN[84] = v0
    hN[85] = v1
    hN[87] = "ED\192h\180o9\168\149\240\200\006a\250"
    hN[86] = hN[85](hN[87],hN[88])
    hN[83] = hN[84][hN[86]]
    hN[85] = v0
    hN[88] = "0#\141pSZ\0314OOcD\196\236u"
    hN[86] = v1
    hN[87] = hN[86](hN[88],hN[89])
    hN[84] = hN[85][hN[87]]
    hN[86] = v0
    hN[87] = v1
    hN[89] = "XB8\174\225\196bw\019\007L\011t\146"
    hN[88] = hN[87](hN[89],hN[90])
    hN[85] = hN[86][hN[88]]
    hN[87] = v0
    hN[90] = "\198\173\150\221\227\224\1685\000\240\0013LfE"
    hN[88] = v1
    hN[89] = hN[88](hN[90],hN[91])
    hN[86] = hN[87][hN[89]]
    hN[88] = v0
    hN[91] = "q\027\134\255,\137\211\182[Pn*\182K"
    hN[89] = v1
    hN[90] = hN[89](hN[91],hN[92])
    hN[87] = hN[88][hN[90]]
    hN[89] = v0
    hN[92] = "\245\233\227MML\004\210E@\011\197\240R"
    hN[90] = v1
    hN[91] = hN[90](hN[92],hN[93])
    hN[88] = hN[89][hN[91]]
    hN[90] = v0
    hN[93] = "\166?\190L\228\204!r\208-\234 \150\002"
    hN[91] = v1
    hN[92] = hN[91](hN[93],hN[94])
    hN[94] = "tn\021\029\004]\155\223\164;\020\001\019\198<"
    hN[89] = hN[90][hN[92]]
    hN[91] = v0
    hN[92] = v1
    hN[93] = hN[92](hN[94],hN[95])
    hN[90] = hN[91][hN[93]]
    hN[95] = "\220\2125\185Uh\201\182\2358r\002\\kE"
    hN[92] = v0
    hN[93] = v1
    hN[94] = hN[93](hN[95],hN[96])
    hN[96] = "Z9\160\199\142=\130@\165]\162\016`$z"
    hN[91] = hN[92][hN[94]]
    hN[93] = v0
    hN[94] = v1
    hN[95] = hN[94](hN[96],hN[97])
    hN[92] = hN[93][hN[95]]
    hN[97] = "\218\240\1428\227\028\255\028e&?\154\023c\144"
    hN[94] = v0
    hN[95] = v1
    hN[96] = hN[95](hN[97],hN[98])
    hN[93] = hN[94][hN[96]]
    hN[59] = {hN[60], hN[61], hN[62], hN[63], hN[64], hN[65],hN[66],hN[67],hN[68],hN[69],hN[70],hN[71],hN[72], hN[73],hN[74], hN[75],hN[76],hN[77],hN[78],hN[79],hN[80], hN[81],hN[82],hN[83],hN[84], hN[85], hN[86], hN[87],hN[88],hN[89], hN[90], hN[91],hN[92],hN[93]}
    hN[67] = "8\228t\159\029\251ia\180\181pyc"
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[68] = 26476465352745
    hN[59] = v0
    hN[60] = v1
    hN[63] = 27777222914694
    hN[62] = "\137\133v\141\157lkv\138V\200:K"
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = {}
    hN[56][hN[58]] = hN[59]
    hN[58] = "ipairs"
    hN[56] = env[hN[58]]
    hN[62] = v189
    hN[64] = v0
    hN[65] = v1
    hN[66] = hN[65](hN[67],hN[68])
    hN[63] = hN[64][hN[66]]
    hN[61] = hN[62][hN[63]]
    hN[62] = {hN[56](hN[61])}
    hN[60] = hN[62][3]
    hN[58] = hN[62][1]
    hN[59] = hN[62][2]
    hN[60],hN[61] = hN[58](hN[59],hN[60])
    if hN[60] then
    hN[63] = v189
    hN[65] = v0
    hN[66] = v1
    hN[56] = hN[60]
    hN[69] = 19264236970762
    hN[68] = "\227\240\233\008,<\213\228\031\247\154\148q"
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[68] = "\212&\172-,\194\135Wn\185\223\156."
    hN[62] = hN[63][hN[64]]
    hN[65] = v0
    hN[66] = v1
    hN[69] = 26183708995488
    hN[56] = nil
    hN[67] = hN[66](hN[68],hN[69])
    hN[64] = hN[65][hN[67]]
    hN[63] = hN[64] .. hN[61]
    hN[61] = nil
    local_player_5_ref_13_ref = 6490282
    hN[64] = true
    hN[62][hN[63]] = hN[64]
    else
        goto block_7689698
    end
    ::block_7689698::
    hN[56] = v189
    hN[62] = "\030Q\023\017u*.\203\176\218\157`X\018v\170"
    hN[59] = v0
    hN[63] = 18231697563945
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = false
    hN[62] = "H\2316/m7F\0247s\208H\128ep|&r\174\233\133\130"
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[63] = 23887309663091
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[62] = "zG\145\167t\250\231\208\136\244\183\238"
    hN[59] = false
    hN[56][hN[58]] = hN[59]
    hN[63] = 8935301828672
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[62] = "f\16629\031\196p<\216\213"
    hN[59] = {}
    hN[63] = 26707212595348
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = nil
    hN[63] = 28771162453077
    hN[56][hN[58]] = hN[59]
    hN[62] = "\1749pT\160\135_\234"
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = 25
    hN[62] = "\220\143R\131\213P\003\226\t\128S"
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[63] = 25419464470076
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = .05
    hN[56][hN[58]] = hN[59]
    hN[63] = 4640082937968
    hN[56] = v189
    hN[59] = v0
    hN[62] = "B\184\0274\019\244\181KP\181S\192\136KG\208"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[62] = "\137\004\248\031\209\208\253\003\154V4\155h\153ST"
    hN[59] = false
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[63] = 5169785604455
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[66] = 25399991610931
    hN[59] = false
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "H\134\186X3\031\149\215\201\225@\150"
    hN[59] = v0
    hN[63] = 12776290604861
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = 32692118010743
    hN[58] = hN[59][hN[61]]
    hN[59] = false
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "h#\226\244\132#\251=\163\002\006j\247"
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = false
    hN[56][hN[58]] = hN[59]
    hN[65] = "\240\012\180\229a\172\135"
    hN[56] = v189
    hN[63] = 20171184612528
    hN[59] = v0
    hN[60] = v1
    hN[62] = "\151\223\003\017\181"
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = 2728128595190
    hN[58] = hN[59][hN[61]]
    hN[59] = 90
    hN[62] = "\t\214\143\021=\136\140:p\253"
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = 18289975353668
    hN[58] = hN[59][hN[61]]
    hN[59] = 30
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "\015\146D\127\008\202\149\224\201\255\134D\191"
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = "Color3"
    hN[60] = env[hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[63] = 50
    hN[61] = hN[62][hN[64]]
    hN[65] = "#\128\028{\252\006\231"
    hN[59] = hN[60][hN[61]]
    hN[62] = 50
    hN[61] = 255
    hN[60] = hN[59](hN[61],hN[62],hN[63])
    hN[62] = "\139\138\186\005R\na\194\\&\025\0302\160\254\137["
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[59] = v0
    hN[66] = 24874573622591
    hN[63] = 3519647401574
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = "Color3"
    hN[60] = env[hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[63] = 255
    hN[59] = hN[60][hN[61]]
    hN[61] = 160
    hN[62] = 60
    hN[60] = hN[59](hN[61],hN[62],hN[63])
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[63] = 23963570858902
    hN[62] = "|\139\131\024\246\165\136\007\031\219VM\017\169\006u9"
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = "Color3"
    hN[66] = 4686203488390
    hN[60] = env[hN[61]]
    hN[65] = "\014\214\194\191|\018\137"
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[66] = 28798595413090
    hN[59] = hN[60][hN[61]]
    hN[63] = 100
    hN[61] = 50
    hN[62] = 255
    hN[60] = hN[59](hN[61],hN[62],hN[63])
    hN[56][hN[58]] = hN[60]
    hN[63] = 9016838983782
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[62] = "\175\143\157\129\014\154\213:8n\133\151\133"
    hN[61] = hN[60](hN[62],hN[63])
    hN[62] = "i\138\208P\128\186l"
    hN[58] = hN[59][hN[61]]
    hN[59] = false
    hN[63] = 24106172902361
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = 8
    hN[56][hN[58]] = hN[59]
    hN[62] = "\184\019~\240\150b>"
    hN[56] = v189
    hN[63] = 28395594478502
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = 6189894486850
    hN[58] = hN[59][hN[61]]
    hN[59] = 6
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "\021\166\211\012\137\146/"
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[63] = 23881632263024
    hN[59] = 8
    hN[62] = "\157M\021\158e\238\146"
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = "Color3"
    hN[60] = env[hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[65] = "\226|\246\023\003\014\202"
    hN[64] = hN[63](hN[65],hN[66])
    hN[63] = 255
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[61] = 100
    hN[62] = 200
    hN[60] = hN[59](hN[61],hN[62],hN[63])
    hN[56][hN[58]] = hN[60]
    hN[56] = v189
    hN[59] = v0
    hN[63] = 33829950340489
    hN[66] = 17422138056624
    hN[62] = "\\\138\025L\214HQ6"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = 31928293276179
    hN[58] = hN[59][hN[61]]
    hN[59] = - 1020924.5 -(- 1020925)
    hN[56][hN[58]] = hN[59]
    hN[62] = "\208<\234\209\244\176\191I\130"
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = 20436666033452
    hN[58] = hN[59][hN[61]]
    hN[59] = 0
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[62] = "k\018\182R\027\161\140\008+"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[62] = "\251\178\209M\247\229/\252g"
    hN[58] = hN[59][hN[61]]
    hN[59] = 0
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[63] = 26422801149968
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = 23220386540092
    hN[58] = hN[59][hN[61]]
    hN[59] = 0
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[65] = "V)w"
    hN[59] = v0
    hN[62] = "s\012\007w\161\024\148y\243'\188\249bt"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = {}
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "a\170\247*\189\247\127t"
    hN[59] = v0
    hN[63] = 4516530898999
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = "Instance"
    hN[60] = env[hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[65] = "\194\004:\198CY"
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[66] = 6267711998822
    hN[64] = hN[63](hN[65],hN[66])
    hN[63] = "\211\166Q`\227\203\127\132"
    hN[61] = hN[62][hN[64]]
    hN[60] = hN[59](hN[61])
    hN[56][hN[58]] = hN[60]
    hN[58] = v189
    hN[60] = v0
    hN[64] = 28403840562090
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[64] = 32974924594171
    hN[59] = hN[60][hN[62]]
    hN[56] = hN[58][hN[59]]
    hN[63] = 26357439885297
    hN[59] = v0
    hN[60] = v1
    hN[62] = "\166\242\248{"
    hN[61] = hN[60](hN[62],hN[63])
    hN[63] = "\191\230\137\133Rp]+\203"
    hN[58] = hN[59][hN[61]]
    hN[60] = v0
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[59] = hN[60][hN[62]]
    hN[56][hN[58]] = hN[59]
    hN[58] = v189
    hN[63] = "\196\240\026\152\195<\144\207"
    hN[60] = v0
    hN[64] = 21990630926336
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[63] = 16592532266542
    hN[59] = hN[60][hN[62]]
    hN[56] = hN[58][hN[59]]
    hN[62] = "\234jT\129\"\221"
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[62] = "\209\0024L\162NJ\0262"
    hN[58] = hN[59][hN[61]]
    hN[60] = "workspace"
    hN[63] = 2430635443307
    hN[64] = 27160416530791
    hN[59] = env[hN[60]]
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[66] = 16949206621908
    hN[58] = hN[59][hN[61]]
    hN[59] = {}
    hN[56][hN[58]] = hN[59]
    hN[59] = "task"
    hN[58] = env[hN[59]]
    hN[60] = v0
    hN[61] = v1
    hN[63] = "\"\184J6)"
    hN[62] = hN[61](hN[63],hN[64])
    hN[59] = hN[60][hN[62]]
    hN[56] = hN[58][hN[59]]
    hN[59] = function(arg1)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_24, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
            event_connection_2 = {}
            character_4 = {}
            character_3 = event_connection_2
            lookup = {}
            ui_node_6 = "Players"
event_connection_2 = workspace:FindFirstChild(ui_node_6)
            ui_node_6 = event_connection_2
            if ui_node_6 then
                event_connection_2 = "Killers"
                event_connection_3 = ui_node_6:FindFirstChild(event_connection_2)
                if event_connection_3 then
                    local_player_5_ref_2 = {event_connection_3.GetChildren(event_connection_3)}
                    ui_node_2 = {ipairs(unpack_fn(local_player_5_ref_2))}
                    local_player_5_ref_23 = ui_node_2[3]
                    ui_node_7 = ui_node_2[2]
                    event_connection_2 = ui_node_2[1]
                    local_player_5_ref_2 = event_connection_2
                    while true do
                        local_player_5_ref_23,local_player_5_ref_11_ref = local_player_5_ref_2(ui_node_7,local_player_5_ref_23)
                        if not local_player_5_ref_23 then
                            break
                        end
                        local_player_5_ref_20 = "Model"
local_player_5_ref_20 = local_player_5_ref_11_ref:IsA(local_player_5_ref_20)
                        if local_player_5_ref_20 then
                            local_player_5_ref_20 = character_3.Icon
                            local_player_5_ref_20 = not local_player_5_ref_20
                            event_connection_4 = local_player_5_ref_20
                        end
                        if event_connection_4 then
                            local_player_5_ref_13_ref = true
                            character_3.Icon = local_player_5_ref_13_ref
                            event_connection_4 = table.insert(lookup,local_player_5_ref_11_ref)
                        end
                    end
                end
            end
            ui_node_7 = "Killers"
event_connection_3 = workspace:FindFirstChild(ui_node_7)
            if event_connection_3 then
                local_player_5_ref_11_ref = event_connection_3.GetChildren
                ui_node_2 = {local_player_5_ref_11_ref(event_connection_3)}
                local_player_5_ref_11_ref = {ipairs(unpack_fn(ui_node_2))}
                ui_node_7 = local_player_5_ref_11_ref[1]
                local_player_5_ref_2 = local_player_5_ref_11_ref[3]
                local_player_5_ref_23 = local_player_5_ref_11_ref[2]
                while true do
                    local_player_5_ref_2,local_player_5_ref_11_ref = ui_node_7(local_player_5_ref_23,local_player_5_ref_2)
                    if not local_player_5_ref_2 then
                        break
                    end
                    local_player_5_ref_24 = 2362848543820
                    local_player_5_ref_20 = "Model"
local_player_5_ref_20 = local_player_5_ref_11_ref:IsA(local_player_5_ref_20)
                    if local_player_5_ref_20 then
                        local_player_5_ref_20 = character_3[local_player_5_ref_11_ref]
                        local_player_5_ref_20 = not local_player_5_ref_20
                        event_connection_4 = local_player_5_ref_20
                    end
                    if event_connection_4 then
                        local_player_5_ref_13_ref = true
                        local_player_5_ref_18 = 432226779337
                        character_3[local_player_5_ref_11_ref] = local_player_5_ref_13_ref
                        local_player_5_ref_20 = v0
                        local_player_5_ref_11_ref = v1
                        event_connection_4 = table.insert(lookup,local_player_5_ref_11_ref)
                    end
                    local_player_5_ref_11_ref = nil
                end
            end
            ui_node_2 = {ipairs(lookup)}
            ui_node_7 = ui_node_2[1]
            local_player_5_ref_2 = ui_node_2[3]
            local_player_5_ref_23 = ui_node_2[2]
            while true do
                local_player_5_ref_2,local_player_5_ref_11_ref = ui_node_7(local_player_5_ref_23,local_player_5_ref_2)
                if not local_player_5_ref_2 then
                    break
                end
                local_player_5_ref_13_ref = true
                character_4[local_player_5_ref_11_ref] = local_player_5_ref_13_ref
            end
            character_3 = nil
            local_player_5_ref_13_ref = v189
            local_player_5_ref_20 = 26326419419107
            local_player_5_ref_23 = character_4
            local_player_5_ref_13_ref.killerSet = local_player_5_ref_23
            event_connection_3 = nil
            ui_node_6 = nil
            local_player_5_ref_2 = v0
            ui_node_2 = v1
            lookup = nil
            character_4 = nil
            local_player_5_ref_13_ref = task.wait
            local_player_5_ref_23 = 2
            ui_node_7 = local_player_5_ref_13_ref(local_player_5_ref_23)
        return
    end
    hN[58] = hN[56](hN[59])
    hN[59] = "getKillers"
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, local_player_5_ref_20, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = {}
        event_connection_3 = v189
        ui_node_6 = event_connection_3.killerSet
        event_connection_3 = {pairs(ui_node_6)}
        lookup = event_connection_3[2]
        character_3 = event_connection_3[3]
        event_connection_2 = event_connection_3[1]
        ui_node_6 = event_connection_2
        if character_3 then
            event_connection_3 = character_3
            local_player_5_ref_20 = 16935397203662
            local_player_5_ref_2 = v0
            ui_node_2 = v1
            local_player_5_ref_11_ref = "insert"
            ui_node_7 = table.insert(character_4,event_connection_3)
            local_player_5_ref_13_ref = 12013234
            event_connection_3 = nil
        end
        event_connection_2 = {character_4}
        return "insert"
    end
    hN[58][hN[59]] = hN[56]
    hN[59] = "getServerPing"
    hN[58] = v189
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
        lookup = function(arg1)
                local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
                local_player_5_ref_23 = v1
                ui_node_6 = character_3.GetService
                local_player_5_ref_2 = local_player_5_ref_23(ui_node_2,local_player_5_ref_11_ref)
                ui_node_2 = 33514024746230
                local_player_5_ref_2 = 23125291690512
                lookup = ui_node_6.Network
                event_connection_3 = v1
                character_4 = lookup.ServerStatsItem
                local_player_5_ref_23 = 3945480374061
                character_3 = v0
                lookup = character_3[event_connection_3]
                event_connection_2 = character_4[lookup]
                ui_node_7 = 27128248054104
                lookup = v0
                local_player_5_ref_13_ref = event_connection_2.Value
                return local_player_5_ref_13_ref
            end
        character_3 = {pcall(lookup)}
        character_4 = character_3[2]
        event_connection_2 = character_3[1]
        lookup = event_connection_2
        if lookup then
            ui_node_6 = character_4
        end
        character_3 = 1000
        event_connection_3 = 100
        event_connection_2 = ui_node_6 or event_connection_3
        local_player_5_ref_13_ref = event_connection_2 / character_3
        event_connection_2 = {local_player_5_ref_13_ref}
        return
    end
    hN[58][hN[59]] = hN[56]
    hN[59] = "getPredictedRoot"
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        local v190 = arg1
        event_connection_2 = v189
        character_3 = v0
        lookup = character_3[event_connection_3]
        event_connection_2 = event_connection_2[lookup]()
        lookup = event_connection_2
        local_player_5_ref_13_ref = Vector3.new
        event_connection_3 = 0
        character_3 = 0
        event_connection_4 = 23909788101501
        ui_node_6 = 0
        event_connection_2 = local_player_5_ref_13_ref(character_3,ui_node_6,event_connection_3)
local_player_5_ref_13_ref = pcall
        ui_node_6 = function(arg1, arg2, arg3)
                local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                event_connection_2 = v190
                lookup = v0
                character_3 = v1
                ui_node_6 = "AssemblyLinearVelocity"
                local_player_5_ref_13_ref = event_connection_2.AssemblyLinearVelocity
                return
            end
        event_connection_2 = local_player_5_ref_13_ref(ui_node_6)
        ui_node_6 = v190
        event_connection_2 = ui_node_6.Position
        event_connection_3 = local_player_5_ref_13_ref
        ui_node_6 = event_connection_3 * lookup
        local_player_5_ref_13_ref = event_connection_2 + ui_node_6
        event_connection_3 = v190
        ui_node_6 = event_connection_3.CFrame
        ui_node_7 = v0
        local_player_5_ref_11_ref = 16897072881340
        local_player_5_ref_23 = v1
        event_connection_2 = {local_player_5_ref_13_ref, event_connection_2}
        return
    end
    hN[58][hN[59]] = hN[56]
    hN[59] = "isLocalPlayerKiller"
    hN[56] = function()
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
        character_4 = v189
        character_3 = v0
        ui_node_7 = 30177500100324
        lookup = character_3.LookVector
        event_connection_2 = character_4[lookup]
        lookup = v0
        character_3 = v1
        local character_6 = event_connection_2.Character
        event_connection_2 = character_6
        if not event_connection_2 then
            return local_player_5_ref_13_ref
        else
            local_player_5_ref_13_ref = function(arg1)
                    local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
                    character_4 = arg1
                    if not character_4 then
                        return local_player_5_ref_13_ref
                    else
                        event_connection_3 = character_4.GetChildren
                        ui_node_6 = {event_connection_3(character_4)}
                        event_connection_3 = {ipairs(unpack_fn(ui_node_6))}
                        character_3 = event_connection_3[3]
                        if character_3 then
                            return local_player_5_ref_13_ref
                        end
                        local_player_5_ref_13_ref = false
                        event_connection_2 = {local_player_5_ref_13_ref}
                        return local_player_5_ref_13_ref
                        end
                end
            lookup = false
            local_player_5_ref_13_ref = env[event_connection_2]
            character_3 = "Players"
event_connection_2 = local_player_5_ref_13_ref:FindFirstChild(character_3)
            character_3 = event_connection_2
            if character_3 then
                ui_node_6 = "Killers"
                event_connection_2 = {character_3.FindFirstChild(character_3,ui_node_6)}
                return local_player_5_ref_13_ref
                return local_player_5_ref_13_ref
                return
            end
            local_player_5_ref_11_ref = 27968052589279
            local_player_5_ref_23 = v1
            event_connection_3 = "Killers"
            ui_node_6 = {workspace.FindFirstChild(workspace,event_connection_3)}
        end
    end
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[59] = "getModelRoot"
    hN[58] = v189
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
        character_4 = arg1
        character_3 = "HumanoidRootPart"
lookup = character_4:FindFirstChild(character_3)
        if not lookup then
            character_3 = false
            ui_node_6 = character_4.FindFirstChild
            if not ui_node_6 then
                local_player_5_ref_11_ref = 30398688032587
                ui_node_7 = v0
                local_player_5_ref_23 = v1
                ui_node_6 = character_4.FindFirstChildWhichIsA
                lookup = ui_node_6
            end
            local_player_5_ref_13_ref = 13613534
            event_connection_2 = lookup
        end
        event_connection_2 = {event_connection_2}
        return
    end
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
        character_4 = v189
        character_3 = v0
        lookup = character_3.BasePart
        event_connection_2 = character_4[lookup]
        character_4 = event_connection_2.Character
        if character_4 then
            ui_node_6 = v0
            local_player_5_ref_2 = 30337069381422
            event_connection_3 = v1
            local_player_5_ref_13_ref = 1858510
            character_3 = "HumanoidRootPart"
lookup = character_4:FindFirstChild(character_3)
            event_connection_2 = lookup
        end
        event_connection_2 = {event_connection_2}
        return "7\019\131\195[Y"
    end
    hN[58] = v189
    hN[59] = "getPlayerRoot"
    hN[58][hN[59]] = hN[56]
    hN[58] = v189
    hN[65] = "%\133\218"
    hN[56] = function(arg1)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, local_player_5_ref_20, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        lookup = Vector3.new
        ui_node_6 = 0
        ui_node_7 = 0
        event_connection_3 = -50
        character_3 = {lookup(ui_node_6,event_connection_3,ui_node_7)}
event_connection_2 = workspace:Raycast(character_4,unpack_fn(character_3))
        lookup = event_connection_2
        if lookup then
            local_player_5_ref_23 = lookup.Position
            local_player_5_ref_20 = 13381053978711
            ui_node_7 = local_player_5_ref_23.Y
            local_player_5_ref_23 = .05
            event_connection_3 = ui_node_7 + local_player_5_ref_23
            character_3 = event_connection_3
        end
        if not character_3 then
            ui_node_7 = v0
            local_player_5_ref_13_ref = 7819686
            local_player_5_ref_11_ref = 3408922199603
            local_player_5_ref_23 = v1
            ui_node_6 = character_4.Y
            event_connection_3 = 3
            character_3 = ui_node_6 - event_connection_3
            event_connection_2 = character_3
        end
        event_connection_2 = {event_connection_2}
        return "7\019\131\195[Y"
    end
    hN[59] = "getFloorY"
    hN[58][hN[59]] = hN[56]
    hN[59] = "rotateY"
    hN[62] = "\160\tq:\196\174\002\211\016\239"
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        lookup = arg2
        event_connection_2 = math.cos(lookup)
        local_player_5_ref_13_ref = math.sin
        ui_node_6 = event_connection_2
        character_3 = local_player_5_ref_13_ref(lookup)
        local_player_5_ref_13_ref = Vector3.new
        local_player_5_ref_23 = character_4.X
        ui_node_7 = local_player_5_ref_23 * ui_node_6
        local_player_5_ref_2 = character_4.Z
        local_player_5_ref_23 = local_player_5_ref_2 * character_3
        event_connection_3 = ui_node_7 - local_player_5_ref_23
        ui_node_7 = 0
        local_player_5_ref_20 = 33174376905816
        ui_node_2 = character_4.X
        local_player_5_ref_2 = ui_node_2 * character_3
        local_player_5_ref_20 = v0
        local_player_5_ref_20 = v1
        local_player_5_ref_11_ref = character_4.Z
        ui_node_2 = local_player_5_ref_11_ref * ui_node_6
        local_player_5_ref_23 = local_player_5_ref_2 + ui_node_2
        event_connection_2 = {local_player_5_ref_13_ref(event_connection_3,ui_node_7,local_player_5_ref_23)}
        event_connection_2 = {unpack_fn(event_connection_2)}
        return unpack_fn(event_connection_2)
    end
    hN[63] = 22788596590963
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2, arg3)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, local_5, local_25, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, local_24, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_24, local_player_5_ref_23, ui_node_2, math_lib_9, event_connection_4, character_3
        character_4 = arg1
        lookup = v189
        event_connection_3 = v1
        event_connection_2 = lookup.LocalPlayer
        character_3 = v0
        lookup = character_3[event_connection_3]
        lookup = event_connection_2[lookup]
        character_3 = not lookup
        if not character_3 then
            character_3 = not character_4
            event_connection_2 = character_3
        end
        if event_connection_2 then
            return local_player_5_ref_13_ref
        else
            event_connection_2 = v189
            ui_node_6 = {event_connection_2.getPredictedRoot(character_4)}
            event_connection_2 = ui_node_6[1]
            character_3 = ui_node_6[2]
            ui_node_6 = event_connection_2
            local_player_5_ref_13_ref = Vector3.new
            event_connection_3 = character_3.X
            ui_node_7 = 0
            local_player_5_ref_23 = character_3.Z
            event_connection_2 = local_player_5_ref_13_ref(event_connection_3,ui_node_7,local_player_5_ref_23)
            event_connection_3 = event_connection_2
            event_connection_2 = event_connection_3.Magnitude
            ui_node_7 = .01
            if event_connection_2 < ui_node_7 then
                return local_player_5_ref_13_ref
            else
                event_connection_3 = event_connection_3.Unit
                ui_node_7 = ui_node_6.X
                local_player_5_ref_2 = event_connection_3.X
                ui_node_2 = .8
                local_player_5_ref_23 = local_player_5_ref_2 * ui_node_2
                event_connection_2 = ui_node_7 + local_player_5_ref_23
                ui_node_7 = event_connection_2
                local_player_5_ref_23 = ui_node_6.Z
                ui_node_2 = event_connection_3.Z
                local_player_5_ref_11_ref = .8
                local_player_5_ref_2 = ui_node_2 * local_player_5_ref_11_ref
                event_connection_2 = local_player_5_ref_23 + local_player_5_ref_2
                local_player_5_ref_2 = v189
                local_player_5_ref_23 = event_connection_2
                event_connection_2 = local_player_5_ref_2.fcDistance
                local_player_5_ref_2 = event_connection_2
                local_player_5_ref_11_ref = v189
                ui_node_2 = local_player_5_ref_11_ref.fcFOV
                local_player_5_ref_11_ref = 2
                event_connection_2 = ui_node_2 / local_player_5_ref_11_ref
                local_player_5_ref_11_ref = lookup.GetChildren
                ui_node_2 = event_connection_2
                local_player_5_ref_20 = {local_player_5_ref_11_ref(lookup)}
                local_player_5_ref_11_ref = {ipairs(unpack_fn(local_player_5_ref_20))}
                event_connection_4 = local_player_5_ref_11_ref[2]
                local_player_5_ref_11_ref = local_player_5_ref_11_ref[1]
                local_player_5_ref_20 = local_player_5_ref_11_ref[3]
                while true do
                    local_player_5_ref_20,local_player_5_ref_11_ref = local_player_5_ref_11_ref(event_connection_4,local_player_5_ref_20)
                    if not local_player_5_ref_20 then
                        break
                    end
                    text_label = "BasePart"
event_connection_2 = local_player_5_ref_11_ref:IsA(text_label)
                    if event_connection_2 then
                        local_player_5_ref_20 = local_player_5_ref_11_ref.Position
                        text_label = local_player_5_ref_20.X
                        event_connection_2 = text_label - ui_node_7
                        text_label = event_connection_2
                        local_player_5_ref_18 = local_player_5_ref_11_ref.Position
                        local_player_5_ref_20 = local_player_5_ref_18.Z
                        event_connection_2 = local_player_5_ref_20 - local_player_5_ref_23
                        local_player_5_ref_20 = event_connection_2
                        event_connection_2 = math.sqrt
                        local_player_5_ref_11_ref = text_label * text_label
                        local_player_5_ref_11_ref = local_player_5_ref_20 * local_player_5_ref_20
                        local_player_5_ref_24 = local_player_5_ref_11_ref + local_player_5_ref_11_ref
                        local_player_5_ref_18 = event_connection_2(local_player_5_ref_24)
                        event_connection_2 = local_player_5_ref_18 <= local_player_5_ref_2
                        if event_connection_2 then
                            local_player_5_ref_24 = .01
                            event_connection_2 = local_player_5_ref_18 < local_player_5_ref_24
                            if event_connection_2 then
                            return "7\019\131\195[Y"
                            else
                                goto block_6204211
                            end
                            ::block_6204211::
                            local_player_5_ref_11_ref = event_connection_3.X
                            local_player_5_ref_11_ref = text_label * local_player_5_ref_11_ref
                            math_lib_8 = event_connection_3.Z
                            local_player_5_ref_11_ref = local_player_5_ref_20 * math_lib_8
                            local_player_5_ref_24 = local_player_5_ref_11_ref + local_player_5_ref_11_ref
                            event_connection_2 = local_player_5_ref_24 / local_player_5_ref_18
                            local_player_5_ref_24 = event_connection_2
                            event_connection_2 = math.deg
                            local_player_5_ref_11_ref = math.acos
                            local_player_5_ref_11_ref = v1
                            local_25 = 1
                            local_9 = math.clamp
                            local_4 = -1
                            math_lib_9 = {local_9(local_player_5_ref_24,local_4,local_25)}
                            math_lib_8 = {local_player_5_ref_11_ref(unpack_fn(math_lib_9))}
                            local_player_5_ref_11_ref = event_connection_2(unpack_fn(math_lib_8))
                            event_connection_2 = local_player_5_ref_11_ref <= ui_node_2
                            if event_connection_2 then
                            return "7\019\131\195[Y"
                            else
                                goto block_15608057
                            end
                            ::block_15608057::
                            local_player_5_ref_24 = nil
                        end
                        text_label = nil
                        local_player_5_ref_18 = nil
                    end
                    local_player_5_ref_13_ref = 13778548
                    local_player_5_ref_20 = nil
                    local_player_5_ref_11_ref = nil
                end
                event_connection_2 = {event_connection_2}
                return "7\019\131\195[Y"
            end
        end
    end
    hN[59] = "isInConeForKiller"
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
event_connection_2 = task
        lookup = v0
        character_3 = v1
        ui_node_7 = 15983975587091
        local_player_5_ref_13_ref = task.spawn
        character_4 = function(arg1, arg2, arg3, arg4, arg5)
                local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
local_player_5_ref_13_ref = pcall
                character_4 = function(arg1, arg2, arg3)
                            local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, character_3
                            ui_node_6 = character_3.GetService
                            lookup = ui_node_6["2S\195\131\194\188H2\195\131\194\129\195\131\194\186"]
                            event_connection_3 = v1
                            character_4 = lookup.Network
                            character_3 = v0
                            lookup = character_3[event_connection_3]
                            event_connection_2 = character_4[lookup]
                            character_4 = event_connection_2.RemoteEvent
                            event_connection_2 = "UseActorAbility"
                            character_3 = buffer.fromstring
                            local_player_5_ref_11_ref = 19068931039919
                            ui_node_7 = v0
                            local_player_5_ref_23 = v1
                            event_connection_3 = "\003\005\000\000\000Block"
                            ui_node_6 = {character_3(event_connection_3)}
                            lookup = {unpack_fn(ui_node_6)}
local_player_5_ref_13_ref = character_4:FireServer(event_connection_2,lookup)
                            return
                        end
                event_connection_2 = local_player_5_ref_13_ref(character_4)
                return
            end
        event_connection_2 = local_player_5_ref_13_ref(character_4)
        return
    end
    hN[58] = v189
    hN[59] = "triggerBlock"
    hN[58][hN[59]] = hN[56]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = "RaycastParams"
    hN[60] = env[hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[63] = "$`&Z\196\207\024.B\242"
    hN[66] = "\212\169\145[\147\235* \197\1363\001\221\228\175\1693"
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[64] = 21383353804517
    hN[60] = hN[59]()
    hN[56][hN[58]] = hN[60]
    hN[58] = v189
    hN[60] = v0
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[59] = hN[60][hN[62]]
    hN[63] = 13375950280788
    hN[56] = hN[58][hN[59]]
    hN[62] = "\128\202n1\023\195\158\193~\248"
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[62] = "Enum"
    hN[67] = 20108694316179
    hN[58] = hN[59][hN[61]]
    hN[61] = env[hN[62]]
    hN[63] = v0
    hN[64] = v1
    hN[65] = hN[64](hN[66],hN[67])
    hN[62] = hN[63][hN[65]]
    hN[65] = "\139\179\219<\159d/"
    hN[60] = hN[61][hN[62]]
    hN[62] = v0
    hN[66] = 5410477345239
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[59] = hN[60][hN[61]]
    hN[62] = "\251Cd\127\183\142\185"
    hN[56][hN[58]] = hN[59]
    hN[58] = v189
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, event_connection_2, ui_node_6, local_player_5_ref_20, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        event_connection_2 = v189
        character_3 = v0
        lookup = character_3["\003\005\000\000\000Block"]
        event_connection_2 = event_connection_2[lookup]()
        lookup = event_connection_2
        event_connection_2 = v189
        event_connection_2 = event_connection_2.getModelRoot(character_4)
        ui_node_6 = not lookup
        character_3 = event_connection_2
        if not ui_node_6 then
            ui_node_6 = not character_3
            event_connection_2 = ui_node_6
        end
        if event_connection_2 then
            return local_player_5_ref_13_ref
        else
            ui_node_6 = v189
            event_connection_2 = ui_node_6.LocalPlayer
            ui_node_6 = event_connection_2.Character
            event_connection_3 = {character_4}
            if ui_node_6 then
                event_connection_2 = table.insert(event_connection_3,ui_node_6)
            end
            event_connection_2 = v189
            local_player_5_ref_13_ref = event_connection_2.wallParams
            ui_node_7 = event_connection_3
            local_player_5_ref_13_ref.FilterDescendantsInstances = ui_node_7
            ui_node_7 = lookup.Position
            local_player_5_ref_2 = character_3.Position
            text_label = 11835899778439
            ui_node_2 = lookup.Position
            local_player_5_ref_23 = local_player_5_ref_2 - ui_node_2
            ui_node_2 = v189
            local_player_5_ref_2 = ui_node_2.wallParams
event_connection_2 = workspace:Raycast(ui_node_7,local_player_5_ref_23,local_player_5_ref_2)
            ui_node_7 = event_connection_2
            if not ui_node_7 then
                return local_player_5_ref_13_ref
            else
                local_player_5_ref_23 = ui_node_7.Instance
                if local_player_5_ref_23 then
                    if local_player_5_ref_23 == character_4 then
                    return local_player_5_ref_13_ref
                    else
                        goto block_6040633
                    end
                    ::block_6040633::
                    local_player_5_ref_2 = v0
                    local_player_5_ref_20 = 26507984252983
                    ui_node_2 = v1
                    local_player_5_ref_23 = local_player_5_ref_23.Parent
                end
                local_player_5_ref_13_ref = NGJdMLrE54N3
                event_connection_2 = {event_connection_2}
                return local_player_5_ref_13_ref[event_connection_2]
            end
        end
    end
    hN[59] = "hasWallBetween"
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_24, local_player_5_ref_23, ui_node_2, math_lib_9, event_connection_4, character_3
        lookup = v189
        character_4 = arg1
        event_connection_3 = v1
        event_connection_2 = lookup.LocalPlayer
        character_3 = v0
        local_player_5_ref_23 = 6386350082973
        lookup = character_3[event_connection_3]
        lookup = event_connection_2[lookup]
        if not lookup then
            return local_player_5_ref_13_ref
        else
            event_connection_3 = {lookup.GetChildren(lookup)}
            ui_node_7 = {ipairs(unpack_fn(event_connection_3))}
            event_connection_2 = ui_node_7[1]
            character_3 = ui_node_7[2]
            event_connection_3 = event_connection_2
            ui_node_6 = ui_node_7[3]
            while true do
                ui_node_6,local_player_5_ref_23 = event_connection_3(character_3,ui_node_6)
                if not ui_node_6 then
                    break
                end
                local_player_5_ref_13_ref = local_player_5_ref_23.IsA
                local_player_5_ref_2 = "BasePart"
                if local_player_5_ref_13_ref(local_player_5_ref_23,local_player_5_ref_2) then
                    local_player_5_ref_20 = character_4.GetDescendants
                    event_connection_4 = {local_player_5_ref_20(character_4)}
                    local_player_5_ref_20 = {ipairs(unpack_fn(event_connection_4))}
                    ui_node_2 = local_player_5_ref_20[2]
                    local_player_5_ref_2 = local_player_5_ref_20[1]
                    local_player_5_ref_11_ref = local_player_5_ref_20[3]
                    while true do
                        local_player_5_ref_11_ref,local_player_5_ref_20 = local_player_5_ref_2(ui_node_2,local_player_5_ref_11_ref)
                        if not local_player_5_ref_11_ref then
                            break
                        end
                        text_label = "BasePart"
local_player_5_ref_11_ref = local_player_5_ref_20:IsA(text_label)
                        if local_player_5_ref_11_ref then
                            local_4 = 18768978829859
                            local_player_5_ref_24 = local_player_5_ref_23.Position
                            local_player_5_ref_18 = v189
                            math_lib_9 = 9312462065904
                            local_9 = "\183\181<\029\202x\142E"
                        end
                        return local_player_5_ref_13_ref
                        ::block_10913004::
                        local_player_5_ref_11_ref = 11827597006211
                        local_player_5_ref_20 = local_player_5_ref_2.Position
                        local_player_5_ref_11_ref = local_player_5_ref_23.Position
                        local_player_5_ref_20 = local_player_5_ref_20 - local_player_5_ref_11_ref
                        event_connection_4 = local_player_5_ref_20.Magnitude
                        local_player_5_ref_11_ref = 3984873801535
                        local_player_5_ref_20 = v189
                        text_label = v0
                        local_player_5_ref_20 = v1
                        local_player_5_ref_20 = local_player_5_ref_20.abRadius
                        local_player_5_ref_11_ref = event_connection_4 <= local_player_5_ref_20
                        return local_player_5_ref_13_ref
                    end
                    local_player_5_ref_2 = v189
                    local_player_5_ref_11_ref = v0
                    event_connection_4 = v1
                    local_player_5_ref_11_ref = 12719656998691
                    local_player_5_ref_2 = local_player_5_ref_2.getModelRoot(character_4)
                    if local_player_5_ref_2 then goto block_10913004 end
                end
                ui_node_7 = nil
                local_player_5_ref_23 = nil
            end
            local_player_5_ref_13_ref = false
            event_connection_2 = {local_player_5_ref_13_ref}
            return
        end
    end
    hN[58] = v189
    hN[59] = "isAnyPartInRadius"
    hN[58][hN[59]] = hN[56]
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, local_4, character_4, local_player_5_ref_2, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, local_9, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_24, local_player_5_ref_23, ui_node_2, math_lib_9, event_connection_4, character_3
        character_4 = arg1
        lookup = not character_4
        if not lookup then
            character_3 = character_4.Parent
            lookup = not character_3
            event_connection_2 = lookup
        end
        if event_connection_2 then
            return "Parent"
        else
            lookup = v189
            event_connection_3 = v1
            event_connection_2 = lookup.LocalPlayer
            character_3 = v0
            lookup = character_3[event_connection_3]
            lookup = event_connection_2[lookup]
            if not lookup then
                return local_player_5_ref_13_ref
            else
                character_3 = v189
                event_connection_2 = character_3.hbSizeX
                character_3 = 2
                local_player_5_ref_13_ref = event_connection_2 / character_3
                ui_node_6 = v189
                character_3 = local_player_5_ref_13_ref
                event_connection_2 = ui_node_6.hbSizeY
                ui_node_6 = 2
                local_player_5_ref_13_ref = event_connection_2 / ui_node_6
                event_connection_3 = v189
                ui_node_6 = local_player_5_ref_13_ref
                local_player_5_ref_11_ref = "\231\161\196\220\158\215\028"
                event_connection_2 = event_connection_3.hbSizeZ
                event_connection_3 = 2
                local_player_5_ref_13_ref = event_connection_2 / event_connection_3
                ui_node_2 = lookup.GetChildren
                event_connection_3 = local_player_5_ref_13_ref
                local_player_5_ref_2 = {ui_node_2(lookup)}
                ui_node_2 = {ipairs(unpack_fn(local_player_5_ref_2))}
                ui_node_7 = ui_node_2[2]
                local_player_5_ref_23 = ui_node_2[3]
                event_connection_2 = ui_node_2[1]
                local_player_5_ref_2 = event_connection_2
                while true do
                    local_player_5_ref_23,local_player_5_ref_11_ref = local_player_5_ref_2(ui_node_7,local_player_5_ref_23)
                    if not local_player_5_ref_23 then
                        break
                    end
                    event_connection_4 = "BasePart"
                    if local_player_5_ref_11_ref.IsA(local_player_5_ref_11_ref,event_connection_4) then
                        local_player_5_ref_13_ref = character_4.CFrame
                        local_player_5_ref_20 = local_player_5_ref_11_ref.Position
event_connection_4 = local_player_5_ref_13_ref:PointToObjectSpace(local_player_5_ref_20)
                        local_player_5_ref_11_ref = math.abs
                        local_player_5_ref_20 = event_connection_4.X
                        text_label = local_player_5_ref_11_ref(local_player_5_ref_20)
                        local_player_5_ref_20 = text_label <= character_3
                        if local_player_5_ref_20 then
                            local_player_5_ref_11_ref = local_player_5_ref_13_ref
                            local_player_5_ref_20 = math.abs
                            local_player_5_ref_24 = event_connection_4.Y
                            local_player_5_ref_18 = local_player_5_ref_20(local_player_5_ref_24)
                            text_label = local_player_5_ref_18 <= ui_node_6
                            if text_label then
                                local_player_5_ref_20 = math.abs
                                local_player_5_ref_11_ref = v0
                                math_lib_8 = v1
                                local_player_5_ref_24 = event_connection_4.Z
                                local_player_5_ref_18 = local_player_5_ref_20(local_player_5_ref_24)
                                text_label = local_player_5_ref_18 <= event_connection_3
                                local_player_5_ref_20 = text_label
                            end
                            local_player_5_ref_20 = local_player_5_ref_20
                        end
                        if local_player_5_ref_20 then
                        return local_player_5_ref_13_ref
                        else
                            goto block_1289547
                        end
                        ::block_1289547::
                        event_connection_4 = nil
                    end
                    local_player_5_ref_11_ref = nil
                    ui_node_2 = nil
                end
                local_player_5_ref_13_ref = false
                event_connection_2 = {local_player_5_ref_13_ref}
                return local_player_5_ref_13_ref
            end
        end
    end
    hN[59] = "isPlayerInHitbox"
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, event_connection_2, ui_node_6, local_player_5_ref_20, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        event_connection_2 = v189
        character_3 = v0
        character_4 = arg1
        lookup = character_3[event_connection_3]
        if event_connection_2[lookup] then
            lookup = v189
            event_connection_2 = lookup.killerHitboxes
            lookup = event_connection_2[character_4]
            if lookup then
                local_player_5_ref_2 = v189
                local_player_5_ref_2 = local_player_5_ref_2.isPlayerInHitbox(lookup)
            end
            return bhvRJcLLaqzwj
        else
            lookup = v189
            event_connection_2 = lookup.faceCheckEnabled
            if event_connection_2 then
                lookup = v189
                lookup = lookup.getModelRoot(character_4)
                if lookup then
                    ui_node_2 = v189
                    event_connection_4 = v0
                    local_player_5_ref_20 = v1
                    text_label = 8834124501009
                    ui_node_2 = ui_node_2.isInConeForKiller(lookup)
                end
                return "7\019\131\195[Y"
            else
                local_player_5_ref_13_ref = env["70rFxVcYBGUrm"]
                local_player_5_ref_2 = 6999917759675
                lookup = v189
                ui_node_6 = v0
                event_connection_3 = v1
                lookup = {lookup.isAnyPartInRadius(character_4)}
                event_connection_2 = {unpack_fn(lookup)}
                return
            end
        end
    end
    hN[59] = "killerDetected"
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
        character_4 = arg1
        lookup = v189
        event_connection_2 = lookup.killerHitboxes
        local_player_5_ref_13_ref = event_connection_2[character_4]
        local_player_5_ref_13_ref = local_player_5_ref_13_ref
        if local_player_5_ref_13_ref then
local_player_5_ref_13_ref = pcall
            local_player_5_ref_2 = 27603103330869
            character_3 = function(arg1)
                    local local_player_5_ref_13_ref, event_connection_2
                    local_player_5_ref_13_ref = local_player_5_ref_13_ref
event_connection_2 = local_player_5_ref_13_ref:Destroy()
                    return "Destroy"
                end
            event_connection_2 = local_player_5_ref_13_ref(character_3)
            ui_node_6 = v0
            event_connection_3 = v1
        end
        lookup = local_player_5_ref_13_ref
        character_4 = nil
        local_player_5_ref_13_ref = env["3xFBEOLTK1dEO"]
        return
    end
    hN[59] = "removeHitbox"
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        ui_node_6 = v189
        character_3 = ui_node_6.killerHitboxes
        ui_node_6 = {pairs(character_3)}
        character_4 = ui_node_6[2]
        event_connection_2 = ui_node_6[1]
        lookup = ui_node_6[3]
        character_3 = event_connection_2
        while true do
            lookup = character_3(character_4,lookup)
            if not lookup then
                break
            end
            event_connection_4 = 7181195480336
            ui_node_6 = lookup
            event_connection_3 = v189
            local_player_5_ref_23 = v0
            local_player_5_ref_2 = v1
            event_connection_3 = event_connection_3.removeHitbox(ui_node_6)
            ui_node_6 = nil
        end
        return
    end
    hN[58] = v189
    hN[59] = "removeAllHitboxes"
    hN[58][hN[59]] = hN[56]
    hN[63] = 9946427314711
    hN[56] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        ui_node_6 = v189
        event_connection_3 = "killerHitboxes"
        character_3 = ui_node_6.killerHitboxes
        ui_node_6 = {pairs(character_3)}
        event_connection_2 = ui_node_6[1]
        character_4 = ui_node_6[2]
        character_3 = event_connection_2
        lookup = ui_node_6[3]
        while true do
            lookup,event_connection_3 = character_3(character_4,lookup)
            if not lookup then
                break
            end
            if event_connection_3 then
                local_player_5_ref_23 = event_connection_3.Parent
                ui_node_7 = local_player_5_ref_23
            end
            if ui_node_7 then
                ui_node_7 = Vector3.new
                ui_node_2 = v189
                local_player_5_ref_2 = ui_node_2.hbSizeX
                local_player_5_ref_11_ref = v189
                local_player_5_ref_18 = 19730173944803
                ui_node_2 = local_player_5_ref_11_ref.hbSizeY
                event_connection_4 = v189
                local_player_5_ref_11_ref = v1
                local_player_5_ref_11_ref = event_connection_4.hbSizeZ
                local_player_5_ref_23 = ui_node_7(local_player_5_ref_2,ui_node_2,local_player_5_ref_11_ref)
                event_connection_3.Size = local_player_5_ref_23
                local_player_5_ref_23 = v189
                local_player_5_ref_20 = 32467565427470
                ui_node_7 = local_player_5_ref_23.hbColor
                event_connection_3.Color = ui_node_7
                local_player_5_ref_23 = v189
                ui_node_2 = v0
                local_player_5_ref_11_ref = v1
                ui_node_7 = local_player_5_ref_23.hbTransp
                event_connection_3.Transparency = ui_node_7
            end
            ui_node_6 = nil
            local_player_5_ref_13_ref = 9906640
            event_connection_3 = nil
        end
        return
    end
    hN[58] = v189
    hN[59] = "updateAllHitboxes"
    hN[58][hN[59]] = hN[56]
    hN[58] = v189
    hN[56] = function(arg1)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_24, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        ui_node_6 = v189
        event_connection_3 = "killerHitboxes"
        character_3 = ui_node_6.killerHitboxes
        ui_node_6 = {pairs(character_3)}
        lookup = ui_node_6[3]
        character_4 = ui_node_6[2]
        event_connection_2 = ui_node_6[1]
        character_3 = event_connection_2
        while true do
            lookup,event_connection_3 = character_3(character_4,lookup)
            if not lookup then
                break
            end
            if event_connection_3 then
                local_player_5_ref_23 = event_connection_3.Parent
                ui_node_7 = local_player_5_ref_23
            end
            if ui_node_7 then
                ui_node_7 = event_connection_3:FindFirstChild(ui_node_7)
                if ui_node_7 then
                    local_player_5_ref_23 = CFrame.new
                    local_player_5_ref_11_ref = v189
                    ui_node_2 = local_player_5_ref_11_ref.hbOffsetX
                    event_connection_4 = v189
                    local_player_5_ref_24 = 28627548566546
                    local_player_5_ref_11_ref = event_connection_4.hbOffsetY
                    local_player_5_ref_20 = v189
                    local_player_5_ref_11_ref = v0
                    text_label = v1
                    event_connection_4 = local_player_5_ref_20.hbOffsetZ
                    local_player_5_ref_2 = local_player_5_ref_23(ui_node_2,local_player_5_ref_11_ref,event_connection_4)
                    ui_node_7.C0 = local_player_5_ref_2
                end
                ui_node_7 = nil
            end
            event_connection_3 = nil
            local_player_5_ref_13_ref = 2002143
            ui_node_6 = nil
        end
        return
    end
    hN[59] = "updateHitboxOffset"
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        lookup = v189
        event_connection_2 = lookup.killerHitboxes
        lookup = event_connection_2[character_4]
        if lookup then
            character_3 = lookup.Parent
            event_connection_2 = character_3
        end
        if event_connection_2 then
            return "Parent"
        else
            event_connection_2 = v189
            ui_node_7 = "getModelRoot"
            event_connection_2 = event_connection_2.getModelRoot(character_4)
            character_3 = event_connection_2
            if not character_3 then
                return ui_node_7[local_player_5_ref_13_ref]
            else
                local_player_5_ref_13_ref = Instance.new
                ui_node_6 = "Part"
                event_connection_2 = local_player_5_ref_13_ref(ui_node_6)
                ui_node_6 = event_connection_2
                event_connection_2 = "KillerHitbox"
                ui_node_6.Name = event_connection_2
                event_connection_2 = false
                ui_node_6.Anchored = event_connection_2
                event_connection_2 = false
                ui_node_6.CanCollide = event_connection_2
                event_connection_2 = false
                ui_node_6.CanTouch = event_connection_2
                event_connection_2 = false
                ui_node_6.CastShadow = event_connection_2
                event_connection_2 = true
                ui_node_6.Massless = event_connection_2
                event_connection_3 = Enum.Material
                event_connection_2 = event_connection_3.ForceField
                ui_node_6.Material = event_connection_2
                event_connection_3 = v189
                event_connection_2 = event_connection_3.hbColor
                ui_node_6.Color = event_connection_2
                event_connection_3 = v189
                event_connection_2 = event_connection_3.hbTransp
                ui_node_6.Transparency = event_connection_2
                event_connection_2 = Vector3.new
                local_player_5_ref_23 = v189
                ui_node_7 = local_player_5_ref_23.hbSizeX
                local_player_5_ref_2 = v189
                local_player_5_ref_23 = local_player_5_ref_2.hbSizeY
                ui_node_2 = v189
                local_player_5_ref_2 = ui_node_2.hbSizeZ
                event_connection_3 = event_connection_2(ui_node_7,local_player_5_ref_23,local_player_5_ref_2)
                ui_node_6.Size = event_connection_3
                local_player_5_ref_18 = 16820318576280
                event_connection_3 = character_3.CFrame
                ui_node_7 = CFrame.new
                ui_node_2 = v189
                local_player_5_ref_2 = ui_node_2.hbOffsetX
                local_player_5_ref_11_ref = v189
                ui_node_2 = local_player_5_ref_11_ref.hbOffsetY
                event_connection_4 = v189
                local_player_5_ref_11_ref = event_connection_4.hbOffsetZ
                local_player_5_ref_23 = ui_node_7(local_player_5_ref_2,ui_node_2,local_player_5_ref_11_ref)
                event_connection_2 = event_connection_3 * local_player_5_ref_23
                ui_node_6.CFrame = event_connection_2
                local_player_5_ref_13_ref = Instance.new
                event_connection_3 = "Motor6D"
                event_connection_2 = local_player_5_ref_13_ref(event_connection_3)
                event_connection_3 = event_connection_2
                local_player_5_ref_20 = 9598361145717
                event_connection_2 = "HBWeld"
                event_connection_3.Name = event_connection_2
                event_connection_2 = character_3
                event_connection_3.Part0 = event_connection_2
                event_connection_2 = ui_node_6
                event_connection_3.Part1 = event_connection_2
                event_connection_2 = CFrame.new
                local_player_5_ref_2 = v189
                local_player_5_ref_23 = local_player_5_ref_2.hbOffsetX
                ui_node_2 = v189
                local_player_5_ref_2 = ui_node_2.hbOffsetY
                local_player_5_ref_11_ref = v189
                local_player_5_ref_20 = v1
                ui_node_2 = local_player_5_ref_11_ref.hbOffsetZ
                ui_node_7 = event_connection_2(local_player_5_ref_23,local_player_5_ref_2,ui_node_2)
                event_connection_3.C0 = ui_node_7
                local_player_5_ref_2 = 0
                event_connection_2 = CFrame.new
                ui_node_2 = 0
                local_player_5_ref_23 = 0
                ui_node_7 = event_connection_2(local_player_5_ref_23,local_player_5_ref_2,ui_node_2)
                event_connection_3.C1 = ui_node_7
                local_player_5_ref_20 = 9924248883725
                event_connection_2 = ui_node_6
                event_connection_3.Parent = event_connection_2
                ui_node_7 = v189
                event_connection_2 = ui_node_7.hbFolder
                ui_node_6.Parent = event_connection_2
                event_connection_4 = 1676478513932
                event_connection_2 = v189
                local_player_5_ref_23 = v0
                local_player_5_ref_2 = v1
                ui_node_2 = "killerHitboxes"
                local_player_5_ref_13_ref = event_connection_2.killerHitboxes
                event_connection_2 = ui_node_6
                local_player_5_ref_13_ref[character_4] = event_connection_2
                event_connection_2 = {ui_node_6}
                return
            end
        end
    end
    hN[59] = "getOrCreateHitbox"
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = {}
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "u\167M\147\223\003\251\145\161"
    hN[59] = v0
    hN[63] = 23478865095349
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[65] = "Cg4"
    hN[59] = nil
    hN[56][hN[58]] = hN[59]
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, ui_node_2, event_connection_4, character_3
        character_4 = arg1
        lookup = v189
        event_connection_2 = lookup.tracked
        lookup = event_connection_2[character_4]
        if not lookup then
            return
        else
            local_player_5_ref_23 = v0
            event_connection_4 = 32134404225651
            event_connection_3 = lookup.conns
            ui_node_7 = {ipairs(event_connection_3)}
            event_connection_2 = ui_node_7[1]
            character_3 = ui_node_7[2]
            ui_node_6 = ui_node_7[3]
            event_connection_3 = event_connection_2
            while true do
                ui_node_6,local_player_5_ref_23 = event_connection_3(character_3,ui_node_6)
                if not ui_node_6 then
                    break
                end
                local_player_5_ref_23 = local_player_5_ref_23
                local_player_5_ref_23 = local_player_5_ref_23
local_player_5_ref_13_ref = pcall
                local_64 = function()
                        local local_player_5_ref_13_ref, event_connection_2
                        local_player_5_ref_13_ref = local_player_5_ref_23
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
                        return
                    end
                local_player_5_ref_2 = local_player_5_ref_23(local_64)
            end
            return
        end
    end
    hN[59] = "untrack"
    hN[63] = 22571552745742
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[59] = "getSoundKiller"
    hN[56] = function(arg1, arg2, arg3, arg4, arg5, arg6)
        local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, character_3
        character_4 = arg1
        lookup = character_4.Parent
        if lookup then
            character_3 = lookup ~= workspace
            event_connection_2 = character_3
        end
        if event_connection_2 then goto block_7232852 else goto block_14399744 end
        ::block_7232852::
        character_3 = v0
        local_player_5_ref_13_ref = lookup.IsA
        event_connection_2 = character_3.workspace
        if local_player_5_ref_13_ref(lookup,event_connection_2) then goto block_4385333 else goto block_6699084 end
        ::block_4385333::
        character_3 = v189
        event_connection_3 = v0
        local_64 = 20720094537136
        event_connection_2 = character_3.killerSet
        if event_connection_2[lookup] then
        return "killerSet"
        else
            goto block_8953669
        end
        ::block_8953669::
        return local_player_5_ref_13_ref
        ::block_6699084::
        character_3 = v0
        local_player_5_ref_23 = 10420888589044
        ui_node_6 = v1
        event_connection_2 = character_3[event_connection_3]
        local_player_5_ref_13_ref = lookup[event_connection_2]
        lookup = local_player_5_ref_13_ref
        ::block_14399744::
        event_connection_2 = {event_connection_2}
        return "7\019\131\195[Y"
    end
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, event_connection_2, ui_node_6, local_player_5_ref_20, event_connection_3, local_player_5_ref_23, local_64, event_connection_4, character_3
        character_4 = arg1
        lookup = v189
        event_connection_2 = lookup.autoblockEnabled
        if not event_connection_2 then
            return
        else
            character_3 = v189
            lookup = character_3.swingSoundIds
            event_connection_2 = #lookup
            lookup = event_connection_2 > lookup
            if lookup then
                ui_node_7 = v189
                event_connection_3 = ui_node_7.swingSoundSet
                ui_node_7 = character_4.SoundId
                ui_node_6 = event_connection_3[ui_node_7]
                character_3 = not ui_node_6
                event_connection_2 = character_3
            end
            if event_connection_2 then
                return
            else
                event_connection_2 = v189
                event_connection_2 = event_connection_2.getSoundKiller(character_4)
                character_3 = event_connection_2
                if not character_3 then
                    return
                else
                    ui_node_6 = v189
                    ui_node_6 = ui_node_6.killerDetected(character_3)
                    if not ui_node_6 then
                        return
                    else
                        event_connection_3 = v189
                        ui_node_6 = event_connection_3.wallCheckEnabled
                        if ui_node_6 then
                            event_connection_3 = v189
                            event_connection_2 = event_connection_3
                        end
                        if event_connection_2 then
                            return
                        else
                            text_label = 31998866782772
                            lookup = nil
                            local_player_5_ref_13_ref = math.max
                            ui_node_6 = 0
                            local_player_5_ref_23 = v189
                            character_4 = nil
                            ui_node_7 = local_player_5_ref_23.abBlockTime
                            local_64 = v189
                            event_connection_4 = v0
                            local_player_5_ref_20 = v1
                            local_64 = local_64.getServerPing()
                            local_player_5_ref_2 = 0.5
                            local_player_5_ref_23 = local_64 * local_player_5_ref_2
                            event_connection_3 = ui_node_7 - local_player_5_ref_23
                            event_connection_2 = local_player_5_ref_13_ref(ui_node_6,event_connection_3)
                            ui_node_6 = event_connection_2
event_connection_2 = task
                            ui_node_7 = v0
                            local_player_5_ref_23 = v1
                            local_player_5_ref_11_ref = 14734264556237
                            local_player_5_ref_13_ref = task.delay
                            event_connection_3 = function(arg1, arg2, arg3, arg4, arg5)
                                    local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                                    event_connection_3 = "\161j\215\141\142\146\180HY\012\022\130"
                                    event_connection_2 = v189
                                    lookup = v0
                                    ui_node_7 = 20798903952853
                                    ui_node_6 = "triggerBlock"
                                    event_connection_2 = event_connection_2.triggerBlock()
                                    local_player_5_ref_13_ref = env["60oZykCJ5FeM"]
                                    return
                                end
                            character_3 = nil
                            event_connection_2 = local_player_5_ref_13_ref(ui_node_6,event_connection_3)
                            return
                        end
                    end
                end
            end
        end
    end
    hN[58] = v189
    hN[59] = "tryBlock"
    hN[66] = 5333214955955
    hN[58][hN[59]] = hN[56]
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, character_3
        local v195 = arg1
        lookup = v189
        event_connection_2 = lookup.autoblockEnabled
        if not event_connection_2 then
            return
        else
            character_3 = v195
            lookup = not character_3
            if not lookup then
                local_player_5_ref_11_ref = 6576149433334
                ui_node_6 = v195
                character_3 = ui_node_6.Parent
                lookup = not character_3
                event_connection_2 = lookup
            end
            if event_connection_2 then
                return
            else
                event_connection_2 = v195
                event_connection_3 = v1
                character_3 = "Sound"
lookup = event_connection_2:IsA(character_3)
                if not lookup then
                    return
                else
                    event_connection_2 = v189
                    character_3 = v0
                    lookup = character_3[event_connection_3]
                    local_player_5_ref_13_ref = event_connection_2[lookup]
                    lookup = v195
                    event_connection_2 = local_player_5_ref_13_ref(lookup)
                    lookup = v189
                    event_connection_3 = v1
                    event_connection_2 = lookup.tracked
                    lookup = v195
                    lookup = event_connection_2[lookup]
                    if lookup then
                        character_3 = v0
                        event_connection_2 = character_3[event_connection_3]
                        if lookup[event_connection_2] then
                        return
                        else
                            goto block_9426065
                        end
                        ::block_9426065::
                        event_connection_2 = true
                        lookup.fired = event_connection_2
event_connection_2 = task
                        event_connection_3 = v1
                        local_player_5_ref_13_ref = task.delay
                        character_3 = .05
                        ui_node_6 = function(arg1, arg2, arg3, arg4)
                                local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
                                character_4 = v189
                                character_3 = v0
                                lookup = character_3[event_connection_3]
                                event_connection_2 = character_4[lookup]
                                character_4 = v195
                                if event_connection_2[character_4] then
                                    character_4 = v189
                                    character_3 = v0
                                    lookup = character_3[event_connection_3]
                                    event_connection_2 = character_4[lookup]
                                    character_4 = v195
                                    local_player_5_ref_13_ref = event_connection_2[character_4]
                                    ui_node_6 = "\240\018\238\162\243"
                                    character_3 = "fired"
                                    character_4 = false
                                    local_player_5_ref_13_ref.fired = character_4
                                end
                                return
                            end
                        event_connection_2 = local_player_5_ref_13_ref(character_3,ui_node_6)
                    end
                    event_connection_2 = v189
                    lookup = nil
                    ui_node_6 = v0
                    event_connection_3 = v1
                    local_player_5_ref_2 = 19972502512724
                    local_player_5_ref_13_ref = event_connection_2.tryBlock
                    character_3 = v195
                    character_4 = v195
                    event_connection_2 = local_player_5_ref_13_ref(character_3)
                    return
                end
            end
        end
    end
    hN[59] = "handleSoundStart"
    hN[58][hN[59]] = hN[56]
    hN[58] = v189
    hN[59] = "trackSound"
    hN[62] = "<y\241A\012\168<=\135"
    hN[56] = function(arg1, arg2, arg3, arg4, arg5)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, event_connection_4, character_3
        local v196 = arg1
        lookup = v189
        event_connection_3 = v1
        event_connection_2 = lookup.tracked
        lookup = v196
        if event_connection_2[lookup] then
            return
        else
            event_connection_2 = v189
            character_3 = v0
            lookup = character_3[event_connection_3]
            local_player_5_ref_13_ref = event_connection_2[lookup]
            event_connection_2 = v196
            ui_node_6 = {}
            ui_node_7 = false
            lookup = {conns = ui_node_6,fired = ui_node_7}
            local_player_5_ref_13_ref[event_connection_2] = lookup
            lookup = v189
            event_connection_2 = lookup.tracked
            lookup = v196
            lookup = event_connection_2[lookup]
event_connection_2 = table
            local_player_5_ref_13_ref = table.insert
            character_3 = lookup.conns
            ui_node_6 = v196
            ui_node_7 = "Playing"
event_connection_3 = ui_node_6:GetPropertyChangedSignal(ui_node_7)
            ui_node_7 = function(arg1, arg2, arg3)
                    local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                    event_connection_2 = v196
                    if event_connection_2.Playing then
                        event_connection_2 = v189
                        ui_node_7 = 4864894585049
                        event_connection_3 = "\231eI\2517\162\172U\238\194\244~\193Q\203\168"
                        lookup = v0
                        character_3 = v1
                        local_player_5_ref_13_ref = event_connection_2.handleSoundStart
                        character_4 = v196
                        event_connection_2 = local_player_5_ref_13_ref(character_4)
                    end
                    return
                end
            ui_node_6 = {event_connection_3.Connect(event_connection_3,ui_node_7)}
            event_connection_2 = local_player_5_ref_13_ref(character_3,unpack_fn(ui_node_6))
event_connection_2 = table
            local_player_5_ref_13_ref = table.insert
            character_3 = lookup.conns
            event_connection_3 = v196
            ui_node_6 = event_connection_3.Played
            ui_node_7 = function()
                    local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                    ui_node_7 = 2197480752127
                    event_connection_2 = v189
                    lookup = v0
                    character_3 = v1
                    ui_node_6 = "handleSoundStart"
                    local_player_5_ref_13_ref = event_connection_2.handleSoundStart
                    character_4 = v196
                    event_connection_2 = local_player_5_ref_13_ref(character_4)
                    return "handleSoundStart"
                end
            event_connection_3 = {ui_node_6.Connect(ui_node_6,ui_node_7)}
            event_connection_2 = local_player_5_ref_13_ref(character_3,unpack_fn(event_connection_3))
event_connection_2 = table
            local_player_5_ref_13_ref = table.insert
            character_3 = lookup.conns
            ui_node_6 = v196
            ui_node_7 = "SoundId"
event_connection_3 = ui_node_6:GetPropertyChangedSignal(ui_node_7)
            local_player_5_ref_23 = event_connection_3.Connect
            ui_node_7 = function(arg1, arg2, arg3)
                    local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, character_3
                    event_connection_2 = v196
                    if event_connection_2.Playing then
                        event_connection_2 = v189
                        event_connection_3 = "\130\157Rd8\254?\216\030F\127\175\156Ud\158"
                        lookup = v0
                        character_3 = v1
                        ui_node_7 = 6165265173302
                        local_player_5_ref_13_ref = event_connection_2.handleSoundStart
                        character_4 = v196
                        event_connection_2 = local_player_5_ref_13_ref(character_4)
                    end
                    return
                end
            ui_node_6 = {local_player_5_ref_23(event_connection_3,ui_node_7)}
            event_connection_4 = 1378158183041
            event_connection_2 = local_player_5_ref_13_ref(character_3,unpack_fn(ui_node_6))
event_connection_2 = table
            local_player_5_ref_13_ref = table.insert
            character_3 = lookup.conns
            event_connection_3 = v196
            local_player_5_ref_23 = v0
            local_player_5_ref_2 = v1
            ui_node_6 = event_connection_3.AncestryChanged
            ui_node_7 = function(arg1, arg2, arg3)
                    local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
                    event_connection_2 = nil
                    lookup = arg2
                    if lookup == event_connection_2 then
                        event_connection_2 = v189
                        ui_node_6 = v0
                        ui_node_7 = "untrack"
                        local_player_5_ref_13_ref = event_connection_2.untrack
                        character_3 = v196
                        event_connection_2 = local_player_5_ref_13_ref(character_3)
                    end
                    return
                end
            event_connection_3 = {ui_node_6.Connect(ui_node_6,ui_node_7)}
            event_connection_2 = local_player_5_ref_13_ref(character_3,unpack_fn(event_connection_3))
            event_connection_2 = v196
            if event_connection_2.Playing then
                local_player_5_ref_2 = 18949354988151
                event_connection_2 = v189
                ui_node_6 = v0
                event_connection_3 = v1
                local_player_5_ref_13_ref = event_connection_2.handleSoundStart
                character_3 = v196
                event_connection_2 = local_player_5_ref_13_ref(character_3)
            end
            return
        end
    end
    hN[58][hN[59]] = hN[56]
    hN[59] = "startAutoBlock"
    hN[56] = function(arg1)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, event_connection_4, character_3
        event_connection_2 = v189
        if event_connection_2.addedConn then
            event_connection_2 = v189
            local_player_5_ref_13_ref = event_connection_2.addedConn
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
        end
        ui_node_6 = v189
        character_3 = ui_node_6.killerSet
        ui_node_6 = {pairs(character_3)}
        character_4 = ui_node_6[2]
        lookup = ui_node_6[3]
        event_connection_2 = ui_node_6[1]
        character_3 = event_connection_2
        while true do
            lookup = character_3(character_4,lookup)
            if not lookup then
                break
            end
            ui_node_6 = lookup
            local_player_5_ref_2 = {ui_node_6.GetDescendants(ui_node_6)}
            local_64 = {ipairs(unpack_fn(local_player_5_ref_2))}
            event_connection_3 = local_64[1]
            local_player_5_ref_23 = local_64[3]
            ui_node_7 = local_64[2]
            while true do
                local_player_5_ref_23,local_64 = event_connection_3(ui_node_7,local_player_5_ref_23)
                if not local_player_5_ref_23 then
                    break
                end
                local_player_5_ref_11_ref = "Sound"
                if local_64.IsA(local_64,local_player_5_ref_11_ref) then
                    local_player_5_ref_11_ref = v189
                    local_player_5_ref_20 = v0
                    local_player_5_ref_20 = v1
                    local_player_5_ref_20 = 22985160731087
                    local_player_5_ref_11_ref = local_player_5_ref_11_ref.trackSound(local_64)
                end
            end
        end
        local_64 = 28105902945055
        local_player_5_ref_13_ref = v189
character_3 = workspace
        event_connection_3 = v0
        ui_node_7 = v1
        event_connection_2 = {}
        lookup = workspace.DescendantAdded
        ui_node_6 = function(arg1, arg2, arg3, arg4, arg5)
                local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, character_3
                character_4 = arg1
                local_player_5_ref_13_ref = character_4.IsA
                event_connection_2 = "Sound"
                if local_player_5_ref_13_ref(character_4,event_connection_2) then
                    event_connection_2 = v189
                    character_3 = v0
                    lookup = character_3["\194\188\194\151\014\029\195\176"]
                    event_connection_2 = event_connection_2[lookup](character_4)
                    if event_connection_2 then
                        local_player_5_ref_23 = 20374460343567
                        event_connection_2 = v189
                        character_3 = v0
                        ui_node_6 = v1
                        lookup = character_3["\194\188\194\151\014\029\195\176"]
                        event_connection_2 = event_connection_2[lookup](character_4)
                    end
                end
                return
            end
character_3 = lookup:Connect(ui_node_6)
        local_player_5_ref_13_ref[character_4] = character_3
        return
    end
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[56] = function(arg1, arg2)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, event_connection_4, character_3
        event_connection_2 = v189
        if event_connection_2.addedConn then
            event_connection_2 = v189
            local_player_5_ref_13_ref = event_connection_2.addedConn
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
        end
        ui_node_6 = v189
        character_3 = ui_node_6.tracked
        ui_node_6 = {pairs(character_3)}
        character_4 = ui_node_6[2]
        event_connection_2 = ui_node_6[1]
        character_3 = event_connection_2
        local_player_5_ref_13_ref = 11712273
        lookup = ui_node_6[3]
        while true do
            lookup = character_3(character_4,lookup)
            if not lookup then
                break
            end
            ui_node_6 = lookup
            event_connection_3 = v189
            local_player_5_ref_23 = v0
            local_player_5_ref_2 = v1
            event_connection_4 = 9157375529128
            event_connection_3 = event_connection_3.untrack(ui_node_6)
            ui_node_6 = nil
        end
        return
    end
    hN[58] = v189
    hN[59] = "stopAutoBlock"
    hN[58][hN[59]] = hN[56]
    hN[59] = "passesDetection"
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3, arg4)
        local local_player_5_ref_13_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, character_3
        character_4 = arg1
        lookup = v189
        lookup = lookup.killerDetected(character_4)
        if not lookup then
            return local_player_5_ref_13_ref
        else
            character_3 = v189
            lookup = character_3.wallCheckEnabled
            if lookup then
                character_3 = v189
                event_connection_3 = v0
                ui_node_7 = v1
                local_64 = 10886011638733
                character_3 = character_3.hasWallBetween(character_4)
                event_connection_2 = character_3
            end
            if event_connection_2 then
                return local_player_5_ref_13_ref
            else
                local_player_5_ref_13_ref = true
                event_connection_2 = {local_player_5_ref_13_ref}
                return local_player_5_ref_13_ref
            end
        end
    end
    hN[58][hN[59]] = hN[56]
    hN[59] = "registerActiveSwing"
    hN[56] = function(arg1, arg2, arg3)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, ui_node_7, lookup, event_connection_2, ui_node_6, local_player_5_ref_20, event_connection_3, local_player_5_ref_23, local_64, event_connection_4, character_3
        lookup = v189
        character_4 = arg1
        event_connection_2 = lookup.betterAutoblockEnabled
        if not event_connection_2 then
            return "betterAutoblockEnabled"
        else
            lookup = not character_4
            if not lookup then
                ui_node_6 = "Sound"
character_3 = character_4:IsA(ui_node_6)
                lookup = not character_3
                event_connection_2 = lookup
            end
            if event_connection_2 then
                return
            else
                character_3 = v189
                lookup = character_3.swingSoundIds
                event_connection_2 = #lookup
                lookup = event_connection_2 > lookup
                if lookup then
                    ui_node_7 = v189
                    event_connection_3 = ui_node_7.swingSoundSet
                    local_player_5_ref_20 = 2219150361609
                    ui_node_7 = character_4.SoundId
                    ui_node_6 = event_connection_3[ui_node_7]
                    character_3 = not ui_node_6
                    event_connection_2 = character_3
                end
                if event_connection_2 then
                    return
                else
                    event_connection_2 = v189
                    event_connection_2 = event_connection_2.getSoundKiller(character_4)
                    character_3 = event_connection_2
                    if not character_3 then
                        return
                    else
                        event_connection_3 = v189
                        event_connection_4 = 22942529268155
                        ui_node_6 = event_connection_3.activeSwings
                        event_connection_2 = ui_node_6[character_4]
                        if not event_connection_2 then
                            event_connection_2 = v189
                            local_player_5_ref_13_ref = event_connection_2.activeSwings
                            local_player_5_ref_11_ref = 12053402818028
                            local_player_5_ref_23 = v1
                            ui_node_7 = false
                            event_connection_2 = {killer = character_3,blocked = ui_node_7}
                            local_player_5_ref_13_ref[character_4] = event_connection_2
                        end
                        return
                    end
                end
            end
        end
    end
    hN[58] = v189
    hN[58][hN[59]] = hN[56]
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3)
        local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, event_connection_4, character_3
        event_connection_2 = v189
        if event_connection_2.BetterLoop then
            event_connection_2 = v189
            local_player_5_ref_13_ref = event_connection_2.BetterLoop
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
        end
        local_64 = 28920338429083
        local_player_5_ref_13_ref = v189
        character_3 = v189
        lookup = character_3.RunService
        ui_node_6 = v0
        event_connection_3 = v1
        local_player_5_ref_2 = 25757809405658
        character_4 = lookup.RenderStepped
        character_3 = function(arg1, arg2)
                local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, text_label, ui_node_7, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_23, local_64, event_connection_4, character_3
                character_3 = v189
                lookup = character_3.betterAutoblockEnabled
                character_4 = not lookup
                if not character_4 then
                    character_3 = v189
                    lookup = character_3.autoblockEnabled
                    character_4 = not lookup
                    event_connection_2 = character_4
                end
                if event_connection_2 then
                    return
                else
                    event_connection_2 = v189
                    event_connection_2 = event_connection_2.isLocalPlayerKiller()
                    if event_connection_2 then
                        return
                    else
                        ui_node_6 = v189
                        event_connection_3 = "activeSwings"
                        character_3 = ui_node_6.activeSwings
                        ui_node_6 = {pairs(character_3)}
                        event_connection_2 = ui_node_6[1]
                        character_3 = event_connection_2
                        lookup = ui_node_6[3]
                        character_4 = ui_node_6[2]
                        while true do
                            lookup,event_connection_3 = character_3(character_4,lookup)
                            if not lookup then
                                break
                            end
                            ui_node_6 = lookup
                            local_player_5_ref_23 = not ui_node_6
                            if not local_player_5_ref_23 then
                                local_player_5_ref_11_ref = ui_node_6.Parent
                                local_64 = not local_player_5_ref_11_ref
                                if not local_64 then
                                    local_player_5_ref_20 = 29048913982678
                                    local_player_5_ref_11_ref = ui_node_6.Playing
                                    local_64 = not local_player_5_ref_11_ref
                                    local_player_5_ref_23 = local_64
                                end
                                ui_node_7 = local_player_5_ref_23
                            end
                            if ui_node_7 then
                            else
                                ui_node_7 = event_connection_3.blocked
                                if not ui_node_7 then
                                    ui_node_7 = event_connection_3.killer
                                    if ui_node_7 then
                                        local_player_5_ref_2 = ui_node_7.Parent
                                        local_player_5_ref_23 = local_player_5_ref_2
                                    end
                                    if local_player_5_ref_23 then
                                        local_player_5_ref_23 = v189
                                        local_player_5_ref_23 = local_player_5_ref_23.passesDetection(ui_node_7)
                                        if local_player_5_ref_23 then
                                            local_player_5_ref_23 = true
                                            event_connection_3.blocked = local_player_5_ref_23
                                            local_player_5_ref_23 = v189
                                            local_player_5_ref_23 = local_player_5_ref_23.triggerBlock()
                                        end
                                    else
                                    end
                                    ui_node_7 = nil
                                end
                            end
                            ui_node_6 = nil
                            event_connection_3 = nil
                        end
                        return gTyGxyennrMUAX
                    end
                end
            end
lookup = character_4:Connect(character_3)
        local_player_5_ref_13_ref[event_connection_2] = lookup
        return
    end
    hN[59] = "startBetterLoop"
    hN[58][hN[59]] = hN[56]
    hN[59] = "stopBetterLoop"
    hN[58] = v189
    hN[56] = function(arg1, arg2, arg3)
        local local_player_5_ref_13_ref, character_4, ui_node_7, lookup, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_11_ref, character_3
        event_connection_2 = v189
        if event_connection_2.BetterLoop then
            event_connection_2 = v189
            ui_node_7 = 26319179886559
            local_player_5_ref_13_ref = event_connection_2.BetterLoop
event_connection_2 = local_player_5_ref_13_ref:Disconnect()
        end
        local_player_5_ref_13_ref = v189
        event_connection_3 = 19244496872193
        lookup = v1
        character_4 = {}
        local_player_5_ref_13_ref.activeSwings = character_4
        return
    end
    hN[58][hN[59]] = hN[56]
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[61] = "Instance"
    hN[60] = env[hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[66] = 21463647250186
    hN[59] = hN[60][hN[61]]
    hN[62] = v0
    hN[63] = v1
    hN[65] = "F\208\0141F\008"
    hN[64] = hN[63](hN[65],hN[66])
    hN[61] = hN[62][hN[64]]
    hN[63] = "9\160f'\225L\187\233\220"
    hN[60] = hN[59](hN[61])
    hN[64] = 24989190778228
    hN[56][hN[58]] = hN[60]
    hN[58] = v189
    hN[60] = v0
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[59] = hN[60][hN[62]]
    hN[56] = hN[58][hN[59]]
    hN[59] = v0
    hN[60] = v1
    hN[63] = 28275744224110
    hN[62] = "\244\0046q"
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[60] = v0
    hN[61] = v1
    hN[63] = "\028F\137Y\018c\222\235G\225_\211"
    hN[64] = 25456228593229
    hN[62] = hN[61](hN[63],hN[64])
    hN[59] = hN[60][hN[62]]
    hN[64] = 28784986993756
    hN[63] = ">\024\011\005H\015\015\218e"
    hN[56][hN[58]] = hN[59]
    hN[58] = v189
    hN[60] = v0
    hN[61] = v1
    hN[62] = hN[61](hN[63],hN[64])
    hN[59] = hN[60][hN[62]]
    hN[56] = hN[58][hN[59]]
    hN[59] = v0
    hN[63] = 5144774953307
    hN[62] = "\019\210F\165\151:"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[60] = "workspace"
    hN[62] = "\133\229\253\026\131\235\008X"
    hN[58] = hN[59][hN[61]]
    hN[59] = env[hN[60]]
    hN[56][hN[58]] = hN[59]
    hN[63] = 11584874927378
    hN[56] = v189
    hN[59] = v0
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = {}
    hN[63] = 16345766092219
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[59] = v0
    hN[62] = "\173\002\215\195\006\2235{\029"
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = 0
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "\214\210d\228\213\254\201\211\004\154\169\253"
    hN[59] = v0
    hN[63] = 20554892600675
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = 40
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "\212\002@\147$8#\218n2\1718\181&"
    hN[59] = v0
    hN[60] = v1
    hN[63] = 5320841251245
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = 90000
    hN[56][hN[58]] = hN[59]
    hN[56] = v189
    hN[62] = "=>\193^j86:\226\152\205j"
    hN[59] = v0
    hN[63] = 6919203409046
    hN[60] = v1
    hN[61] = hN[60](hN[62],hN[63])
    hN[58] = hN[59][hN[61]]
    hN[59] = {}
    hN[56][hN[58]] = hN[59]
    hN[65] = 28329621533576
    hN[56] = 0
    hN[59] = v189
    hN[61] = v0
    hN[62] = v1
    hN[64] = "!\130\201^\247W\247.\2501\146\245"
    hN[63] = hN[62](hN[64],hN[65])
    hN[60] = hN[61][hN[63]]
    hN[58] = hN[59][hN[60]]
    hN[59] = hN[58]
    hN[58] = 1
    hN[60] = hN[58]
    hN[58] = 0
    hN[61] = hN[60] < hN[58]
    hN[58] = hN[56] - hN[60]
    hN[62] = not hN[61]
    hN[58] = hN[58] + hN[60]
    hN[56] = hN[58] <= hN[59]
    hN[56] = hN[62] and hN[56]
    hN[62] = hN[58] >= hN[59]
    hN[62] = hN[61] and hN[62]
    hN[56] = hN[62] or hN[56]
    hN[62] = 7570284
    hN[56] = 4596989
    -- unresolved transition: pc or hN[56]
    ::block_3179257::
    local_player_5_ref_20 = v1
    local_player_5_ref_11_ref = 30412241762129
    local_player_5_ref_11_ref = local_player_5_ref_20(floor_fn_3_ref,local_player_5_ref_11_ref)
event_connection_4 = v10:Wait()
    local_player_5_ref_23 = event_connection_4
    goto block_11395901
end
local_player_5_ref_2 = BasePart
local_player_5_ref_20 = v5(local_player_5_ref_11_ref,floor_fn_3_ref)
text_label = 6548668730345
local_64 = local_player_5_ref_2(local_player_5_ref)
local_player_5_ref_13_ref = 12617159
local_64 = ogg
event_connection_4 = v0
local_player_5_ref_20 = v1
local_player_5_ref_20 = v5(local_player_5_ref_11_ref,floor_fn_3_ref)
local_player_5_ref_2 = local_player_5_ref_2[local_player_5_ref]
local_player_5_ref_20 = 20915505358347
local_player_5_ref_11_ref = function()
    local local_player_5_ref_13_ref, local_player_5_ref_11_ref, character_4, local_player_5_ref_2, math_lib_8, text_label, ui_node_7, local_player_5_ref_18, lookup, local_player_5_ref_20, event_connection_2, ui_node_6, event_connection_3, local_player_5_ref_24, local_player_5_ref_23, local_64, event_connection_4, character_3
    local_player_5_ref_13_ref = task.wait
    character_4 = 3
    event_connection_2 = local_player_5_ref_13_ref(character_4)
    character_4 = "=== WORKSPACE CHILDREN ==="
    event_connection_2 = print(character_4)
    event_connection_3 = "GetChildren"
    ui_node_6 = {workspace.GetChildren(workspace)}
    character_3 = {ipairs(unpack_fn(ui_node_6))}
    character_4 = character_3[2]
    lookup = character_3[3]
    event_connection_2 = character_3[1]
    character_3 = event_connection_2
    while true do
        lookup,event_connection_3 = character_3(character_4,lookup)
        if not lookup then
            break
        end
        local_player_5_ref_23 = event_connection_3.Name
        local_player_5_ref_2 = event_connection_3.ClassName
        ui_node_7 = print(local_player_5_ref_23,local_player_5_ref_2)
        event_connection_3 = nil
    end
    character_3 = v0
    lookup = character_3[event_connection_3]
    character_4 = print(lookup)
    character_3 = v0
    lookup = character_3[event_connection_3]
character_4 = workspace:FindFirstChild(lookup)
    if character_4 then
        event_connection_3 = {character_4.GetChildren(character_4)}
        ui_node_7 = {ipairs(unpack_fn(event_connection_3))}
        lookup = ui_node_7[1]
        character_3 = ui_node_7[2]
        ui_node_6 = ui_node_7[3]
        while true do
            ui_node_6,ui_node_7 = lookup(character_3,ui_node_6)
            if not ui_node_6 then
                break
            end
            local_player_5_ref_2 = "Players ->"
            local_64 = ui_node_7.Name
            local_player_5_ref_11_ref = ui_node_7.ClassName
            local_player_5_ref_23 = print(local_player_5_ref_2,local_64,local_player_5_ref_11_ref)
            local_player_5_ref_11_ref = {ui_node_7.GetChildren(ui_node_7)}
            event_connection_4 = {ipairs(unpack_fn(local_player_5_ref_11_ref))}
            local_64 = event_connection_4[3]
            local_player_5_ref_23 = event_connection_4[1]
            local_player_5_ref_2 = event_connection_4[2]
            while true do
                local_64,event_connection_4 = local_player_5_ref_23(local_player_5_ref_2,local_64)
                if not local_64 then
                    break
                end
                local_player_5_ref_20 = "  ->"
                local_player_5_ref_11_ref = event_connection_4.Name
                text_label = event_connection_4.ClassName
                local_player_5_ref_20 = print(local_player_5_ref_20,local_player_5_ref_11_ref,text_label)
            end
        end
    end
    return
end
local_64 = local_player_5_ref_2(local_player_5_ref)
event_connection_4 = local_player_5_ref(v5,local_player_5_ref_20)
