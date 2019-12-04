function export(sprite, directory, equipment, extra_alphabets)
    local layer_folder_ref=sprite.layers[3]
    local prev_state_bg=layer_folder_ref.isVisible
    layer_folder_ref.isVisible=false

    local layer_equipment=sprite.layers[4].layers[3].layers[2]
    local prev_state_equipment=layer_equipment.isVisible
    if equipment then
        layer_equipment.isVisible=true
        app.command.SaveFileCopyAs{
            useUI='false',
            filename=directory..'equipment/mini16.bmp',
            slice='mini16'
        }
        app.command.SaveFileCopyAs{
            useUI='false',
            filename=directory..'equipment/minif16.bmp',
            slice='minif16'
        }
    end
    layer_equipment.isVisible=false

    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'alphabet_brass.bmp',
        slice='alphabet_brass'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'alphabet_classic.bmp',
        slice='alphabet_classic'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'alphabet_heavy.bmp',
        slice='alphabet_heavy'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'alphabet_light.bmp',
        slice='alphabet_light'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'alphabet_shadow.bmp',
        slice='alphabet_shadow'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'dungeon16.bmp',
        slice='dungeon16'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'mini16.bmp',
        slice='mini16'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'minif16.bmp',
        slice='minif16'
    }
    app.command.SaveFileCopyAs{
        useUI='false',
        filename=directory..'sprite16.bmp',
        slice='sprite16'
    }

    local layer_extra_alphabets=sprite.layers[4].layers[5]
    local prev_state_alphabets=layer_extra_alphabets.isVisible
    if extra_alphabets then
        layer_extra_alphabets.isVisible=true
        app.command.SaveFileCopyAs{
            useUI='false',
            filename=directory..'extra_alphabets/alphabet_minecraft.bmp',
            slice='alphabet_extra_minecraft'
        }
        app.command.SaveFileCopyAs{
            useUI='false',
            filename=directory..'extra_alphabets/alphabet_msx.bmp',
            slice='alphabet_extra_msx'
        }
        app.command.SaveFileCopyAs{
            useUI='false',
            filename=directory..'extra_alphabets/alphabet_textmachine_handwriting.bmp',
            slice='alphabet_extra_polyducks'
        }
        app.command.SaveFileCopyAs{
            useUI='false',
            filename=directory..'extra_alphabets/alphabet_ibm_cga_thin.bmp',
            slice='alphabet_extra_ibm_cga_thin'
        }
        app.command.SaveFileCopyAs{
            useUI='false',
            filename=directory..'extra_alphabets/alphabet_cheepicus.bmp',
            slice='alphabet_extra_cheepicus'
        }
    end
    layer_extra_alphabets.isVisible=false
    layer_extra_alphabets.isVisible=prev_state_alphabets

    layer_folder_ref.isVisible=prev_state_bg
end

local project_directory=app.activeSprite.filename:match("(.*[/\\])")
export(app.activeSprite, project_directory..'export/blues/', true, true)
--[[
export(app.activeSprite, 'D:/Games/Roguelikes/powder118_win/gfx/', false, false)
--]]