local function default(var, var_default)
    -- Does not mess with the falsey variables like the regular or
    if type(var)=='string' and var=='' or var==nil then
        return var_default
    end
    return var
end

dlg=Dialog('Terminal Blues: Export')

:separator{text='Repository (./export/)'}

:check{label='Palettes:',
    id='repo_blues',
    text='Blues   ',
    selected=default(cfg.repo.palettes[1], cfg_def.repo.palettes[1])}
:check{
    id='repo_prot',
    text='Protea ',
    selected=default(cfg.repo.palettes[2], cfg_def.repo.palettes[2])}
:check{
    id='repo_deut',
    text='Deutzia',
    selected=default(cfg.repo.palettes[3], cfg_def.repo.palettes[3])}
:check{
    id='repo_trit',
    text='Tritoma',
    selected=default(cfg.repo.palettes[4], cfg_def.repo.palettes[4])}

:entry{label='Versions:',
    id='ver_blues',
    text=default(cfg.repo.versions[1], cfg_def.repo.versions[1])}
:entry{
    id='ver_prot',
    text=default(cfg.repo.versions[2], cfg_def.repo.versions[2])}
:entry{
    id='ver_deut',
    text=default(cfg.repo.versions[3], cfg_def.repo.versions[3])}
:entry{
    id='ver_trit',
    text=default(cfg.repo.versions[4], cfg_def.repo.versions[4])}

:separator{text='Custom Directory (will create ./gfx/)'}

:check{label='Export:',
    id='custom_export',
    selected=default(cfg.custom.export, cfg_def.custom.export),
    --[[onclick=function() TOGGLE DISPLAY of CUSTOM SETTINGS end]]}
:entry{label='Directory:',
    id='custom_dir',
    text=default(cfg.custom.dir, cfg_def.custom.dir)}
:combobox{label='Palette:',
    id='custom_palette',
    option=default(cfg.custom.palette, cfg_def.custom.palette),
    options={'master', 'blues', 'prot', 'deut', 'trit'}}

:check{label='Options:',
    id='override',
    text='Override gfx',
    selected=default(cfg.custom.override, cfg_def.custom.override)}
:check{
    id='equipment',
    text='@ equipment',
    selected=default(cfg.custom.equipment, cfg_def.custom.equipment)}
:check{
    id='extra_alphabets',
    text='Extra alphabets',
    selected=default(cfg.custom.extra_alphabets, cfg_def.custom.extra_alphabets),
    --[[onclick=function() show_alphabets() end]]}

:entry{label='Fonts in:', 
    id='alph_in_1',
    text=default(cfg.custom.alph_in[1], cfg_def.custom.alph_in[1])}
:entry{
    id='alph_in_2',
    text=default(cfg.custom.alph_in[2], cfg_def.custom.alph_in[2])}
:entry{
    id='alph_in_3',
    text=default(cfg.custom.alph_in[3], cfg_def.custom.alph_in[3])}
:entry{
    id='alph_in_4',
    text=default(cfg.custom.alph_in[4], cfg_def.custom.alph_in[4])}
:entry{
    id='alph_in_5',
    text=default(cfg.custom.alph_in[5], cfg_def.custom.alph_in[5])}
:entry{label='Fonts out:', 
    id='alph_out_1',
    text=default(cfg.custom.alph_out[1], cfg_def.custom.alph_out[1])}
:entry{
    id='alph_out_2',
    text=default(cfg.custom.alph_out[2], cfg_def.custom.alph_out[2])}
:entry{
    id='alph_out_3',
    text=default(cfg.custom.alph_out[3], cfg_def.custom.alph_out[3])}
:entry{
    id='alph_out_4',
    text=default(cfg.custom.alph_out[4], cfg_def.custom.alph_out[4])}
:entry{
    id='alph_out_5',
    text=default(cfg.custom.alph_out[5], cfg_def.custom.alph_out[5])}

:separator{}

:button{
    id='ok',
    text='Export (Creates Transactions)'}
:button{
    id='cancel',
    text='Cancel'}
