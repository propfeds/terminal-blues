-- Version: 1.02

dofile('data/alerts.lua')

local sprite=app.activeSprite

if sprite==nil then
    app.alert(alerts.active_sprite_nil)
    return
end

dofile('lib/export_functions.lua')
dofile('lib/palette_functions.lua')
dofile('lib/table_persistence.lua')

local repo_dir=sprite.filename:match('(.*[/\\])')

cfg_def={
    repo={
        palettes={
            true,
            true,
            true,
            false
        },
        versions={
            '1.1b6',
            '0.07',
            '0.02',
            '0'
        }
    },
    custom={
        export=false,
        dir=repo_dir..'custom_export/',
        palette='master',
        override=true,
        equipment=true,
        extra_alphabets=false,
        alph_in={'', '', '', '', ''},
        alph_out={'', '', '', '', ''}
    }
}

cfg=persistence.load(repo_dir..'data/config.lua')
if cfg==nil then
    cfg={
        repo={
            palettes={},
            versions={}
        },
        custom={
            alph_in={},
            alph_out={}
        }
    }
end

dofile('data/dialogue.lua')

dlg:show()

local dat=dlg.data
if dat.ok then
    -- Custom
    local nof_transactions=0
    if dat.custom_export then
        if dat.custom_dir=='' then
            app.alert(alerts.empty_custom_dir)
            return
        end
        -- Add a slash at the end of the dir in case the user hasn't
        if string.byte(dat.custom_dir, #dat.custom_dir)~=string.byte('/') then
            dat.custom_dir=dat.custom_dir..'/'
        end
        if dat.custom_palette~='master' then
            if pal_check(repo_dir, dat.custom_palette,
            dat['ver_'..dat.custom_palette]) then
                sprite:loadPalette(pal_path(repo_dir, dat.custom_palette,
                dat['ver_'..dat.custom_palette]))
                nof_transactions=nof_transactions+1
            end
        end
        export(sprite, dat.custom_dir..'gfx/', dat.override, dat.equipment,
            dat.extra_alphabets, {
                dat.alph_in_1,
                dat.alph_in_2,
                dat.alph_in_3,
                dat.alph_in_4,
                dat.alph_in_5
            }, {
                dat.alph_out_1,
                dat.alph_out_2,
                dat.alph_out_3,
                dat.alph_out_4,
                dat.alph_out_5
            }
        )
    elseif not dat.repo_blues and not dat.repo_prot and not dat.repo_deut
    and not dat.repo_trit then
        app.alert(alerts.no_exports)
        return
    end
    -- Repo
    if dat.repo_blues and pal_check(repo_dir, 'blues', dat.ver_blues) then
        sprite:loadPalette(pal_path(repo_dir, 'blues', dat.ver_blues))
        export(sprite, repo_dir..'export/blues/', false, true, true)
        nof_transactions=nof_transactions+1
    end
    if dat.repo_prot and pal_check(repo_dir, 'prot', dat.ver_prot) then
        sprite:loadPalette(pal_path(repo_dir, 'prot', dat.ver_prot))
        export(sprite, repo_dir..'export/protea/', false, true, true)
        nof_transactions=nof_transactions+1
    end
    if dat.repo_deut and pal_check(repo_dir, 'deut', dat.ver_deut) then
        sprite:loadPalette(pal_path(repo_dir, 'deut', dat.ver_deut))
        export(sprite, repo_dir..'export/deutzia/', false, true, true)
        nof_transactions=nof_transactions+1
    end
    if dat.repo_trit and pal_check(repo_dir, 'trit', dat.ver_trit) then
        sprite:loadPalette(pal_path(repo_dir, 'trit', dat.ver_trit))
        export(sprite, repo_dir..'export/tritoma/', false, true, true)
        nof_transactions=nof_transactions+1
    end

    -- Saving config
    persistence.store(repo_dir..'data/config.lua',
        {
            repo={
                palettes={
                    dat.repo_blues,
                    dat.repo_prot,
                    dat.repo_deut,
                    dat.repo_trit
                },
                versions={
                    dat.ver_blues,
                    dat.ver_prot,
                    dat.ver_deut,
                    dat.ver_trit
                }
            },
            custom={
                export=dat.custom_export,
                dir=dat.custom_dir,
                palette=dat.custom_palette,
                override=dat.override,
                equipment=dat.equipment,
                extra_alphabets=dat.extra_alphabets,
                alph_in={
                    dat.alph_in_1,
                    dat.alph_in_2,
                    dat.alph_in_3,
                    dat.alph_in_4,
                    dat.alph_in_5
                },
                alph_out={
                    dat.alph_out_1,
                    dat.alph_out_2,
                    dat.alph_out_3,
                    dat.alph_out_4,
                    dat.alph_out_5
                }
            }
        }
    )

    -- End screen
    app.alert{
        title=alerts.export_complete.title,
        text=alerts.export_complete.text[1]..tostring(nof_transactions)..alerts.export_complete.text[2]
    }
end