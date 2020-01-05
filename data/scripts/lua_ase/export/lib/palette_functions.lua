local full_name={
    blues='blues',
    prot='protea',
    deut='deutzia',
    trit='tritoma'
}

function pal_path(repo_dir, name, version)
    return repo_dir..'data/palettes/'..full_name[name]..'/'..name..'_'..version..'.gpl'
end

function pal_check(repo_dir, name, version)
    local pal=io.open(pal_path(repo_dir, name, version), 'r')
    if pal==nil then
        app.alert{
            title=alerts.palette.title,
            text={
                alerts.palette.text[1],
                pal_path(repo_dir, name, version)
            }
        }
        return false
    end
    return true
end