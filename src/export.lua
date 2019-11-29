function script_path()
    local str = debug.getinfo(2, 'S').source:sub(2)
    return str:match('(.*\\)')
 end
 
function export(sprite, directory, variant, export_equipment, opaque)
    local layer_folder_ref=sprite.layers[3]
    local prev_state_bg=layer_folder_ref.isVisible
    layer_folder_ref.isVisible=false

    local layer_equipment=sprite.layers[4].layers[3].layers[2]
    local prev_state_equipment=layer_equipment.isVisible
    if export_equipment then
        layer_equipment.isVisible=true
        app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/equipment/mini16.bmp', slice='mini16' }
        app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/equipment/minif16.bmp', slice='minif16' }
    end
    layer_equipment.isVisible=false

    local layer_false_blues=sprite.layers[4].layers[2].layers[1]
    local layer_true_blues=sprite.layers[4].layers[2].layers[2]
    local prev_state_false_blues=layer_false_blues.isVisible
    local prev_state_true_blues=layer_true_blues.isVisible
    if opaque then
        layer_true_blues.isVisible=true
        layer_false_blues.isVisible=false
    else
        layer_true_blues.isVisible=false
        layer_false_blues.isVisible=true
    end

    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/alphabet_brass.bmp', slice='alphabet_brass' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/alphabet_classic.bmp', slice='alphabet_classic' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/alphabet_heavy.bmp', slice='alphabet_heavy' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/alphabet_light.bmp', slice='alphabet_light' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/alphabet_shadow.bmp', slice='alphabet_shadow' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/dungeon16.bmp', slice='dungeon16' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/mini16.bmp', slice='mini16' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/minif16.bmp', slice='minif16' }
    app.command.SaveFileCopyAs{ useUI='false', filename=directory..variant..'/gfx/sprite16.bmp', slice='sprite16' }

    layer_false_blues.isVisible=prev_state_false_blues
    layer_true_blues.isVisible=prev_state_true_blues
    layer_equipment.isVisible=prev_state_equipment
    layer_folder_ref.isVisible=prev_state_bg
end

local open=io.open
local dir_file=open(script_path()..'dir.txt', 'rb')
local directory=dir_file:read '*a'
dir_file:close()
local sprite=app.activeSprite
export(sprite, directory, 'blues', true, false)
export(sprite, directory, 'true_blues', false, true)
--[[
export(sprite, 'D:/Games/Roguelikes/', 'powder118_win')
--]]
