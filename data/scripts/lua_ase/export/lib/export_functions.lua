local function deep_copy(var)
    local copy
    copy=var
    return copy
end

local function save_slice(slice_name, dir, subdir, file_name)
    subdir=subdir or ''
    file_name=file_name or slice_name

    app.command.SaveFileCopyAs{
        useUI='false',
        filename=dir..subdir..file_name..'.bmp',
        slice=slice_name
    }
end

function export(sprite, dir, override, equipment, extra_alph, alph_in, alph_out)
    local layers={
        ref_under=sprite.layers[3],
        ref_over=sprite.layers[6],
        equipment=sprite.layers[4].layers[3].layers[2],
        extra_alph=sprite.layers[4].layers[1].layers[6]
    }
    local prev_states={
        ref_under=deep_copy(layers.ref_under.isVisible),
        ref_over=deep_copy(layers.ref_over.isVisible),
        equipment=deep_copy(layers.equipment.isVisible),
        extra_alph=deep_copy(layers.extra_alph.isVisible)
    }
    layers.ref_under.isVisible=false
    layers.ref_over.isVisible=false

    save_slice('alphabet_brass', dir)
    save_slice('alphabet_classic', dir)
    save_slice('alphabet_heavy', dir)
    save_slice('alphabet_light', dir)
    save_slice('alphabet_shadow', dir)

    if extra_alph then
        layers.extra_alph.isVisible=true
        local alph_list={}
        for i, layer in ipairs(layers.extra_alph.layers) do
            alph_list[layer.name]=i
        end
        if override then
            layers.alph_in={}
            for i=1, 5 do
                if (alph_in[i]--[[~=nil]] and alph_in[i]~='')
                and (alph_out[i]--[[~=nil]] and alph_out[i]~='')
                and (alph_list[alph_in[i]]--[[extra alph exists]]) then
                    -- Makes sure the alph is visible
                    layers.alph_in[i]=layers.extra_alph.layers[
                        alph_list[alph_in[i]]]
                    prev_states.alph_in[i]=deep_copy(
                        layers.alph_in[i].isVisible)
                    layers.alph_in[i].isVisible=true
                    save_slice('alphabet_extra_'..alph_in[i], dir, '',
                    'alphabet_'..alph_out[i])
                    layers.alph_in[i].isVisible=prev_states.alph_in[i]
                end
            end
        else
            for i, layer in ipairs(layers.extra_alph.layers) do
                if layer.isVisible then
                    save_slice('alphabet_extra_'..layer.name, dir,
                    'extra_alphabets/', 'alphabet_'..layer.name)
                end
            end
        end
        layers.extra_alph.isVisible=prev_states.extra_alph
    end

    save_slice('dungeon16', dir)

    if equipment then
        if override then
            layers.equipment.isVisible=true
            save_slice('mini16', dir)
            save_slice('minif16', dir)
        else
            layers.equipment.isVisible=false
            save_slice('mini16', dir)
            save_slice('minif16', dir)
            layers.equipment.isVisible=true
            save_slice('mini16', dir, 'equipment/')
            save_slice('minif16', dir, 'equipment/')
        end
        layers.equipment.isVisible=prev_states.equipment
    end

    save_slice('sprite16', dir)

    layers.ref_under.isVisible=prev_states.ref_under
    layers.ref_over.isVisible=prev_states.ref_over
end
