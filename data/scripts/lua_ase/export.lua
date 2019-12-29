--[[
Errors
--]]
local sprite=app.activeSprite
if not sprite then
    app.alert('Export what?')
    return
end

local function save_slice(slice_name, directory, subdir, file_name)
    subdir=subdir or ''
    file_name=file_name or slice_name

    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..subdir..file_name..'.bmp',
        slice=slice_name
    }
end

local function export(sprite, directory, equipment, extra_alphabets)
    local layer_ref_under=sprite.layers[3]
    local layer_ref_over=sprite.layers[6]
    local prev_state_ref_under=layer_ref_under.isVisible
    local prev_state_ref_over=layer_ref_over.isVisible
    layer_ref_under.isVisible=false
    layer_ref_over.isVisible=false

    local layer_equipment=sprite.layers[4].layers[3].layers[2]
    local prev_state_equipment=layer_equipment.isVisible
    if equipment then
        layer_equipment.isVisible=true
        save_slice('mini16', directory, 'equipment/')
        save_slice('minif16', directory, 'equipment/')
    end
    layer_equipment.isVisible=false

    save_slice('alphabet_brass', directory)
    save_slice('alphabet_classic', directory)
    save_slice('alphabet_heavy', directory)
    save_slice('alphabet_light', directory)
    save_slice('alphabet_shadow', directory)
    save_slice('dungeon16', directory)
    save_slice('mini16', directory)
    save_slice('minif16', directory)
    save_slice('sprite16', directory)

    local layer_extra_alphabets=sprite.layers[4].layers[1].layers[6]
    local prev_state_alphabets=layer_extra_alphabets.isVisible
    if extra_alphabets then
        layer_extra_alphabets.isVisible=true
        for i, layer in ipairs(layer_extra_alphabets.layers) do
            if layer.isVisible==true then
                save_slice('alphabet_extra_'..layer.name, directory, 'extra_alphabets/', 'alphabet_'..layer.name)
            end
        end
    end
    layer_extra_alphabets.isVisible=prev_state_alphabets

    layer_equipment.isVisible=prev_state_equipment
    
    layer_ref_under.isVisible=prev_state_ref_under
    layer_ref_over.isVisible=prev_state_ref_over
end

local project_directory=sprite.filename:match("(.*[/\\])")
app.transaction(
    function()
        --[[ Insert powder directory (for testing) then insert a hyphen at line's beginning (make it three hyphens) to disable this comment
        export(sprite, 'D:/Games/Roguelikes/powder118_win/gfx/', false, false)
        --]]

        sprite:loadPalette(project_directory..'data/palettes/blues.gpl')
        export(sprite, project_directory..'export/blues/', true, true)
        
        sprite:loadPalette(project_directory..'data/palettes/prot.gpl')
        export(sprite, project_directory..'export/protea/', true, true)
    end
)
