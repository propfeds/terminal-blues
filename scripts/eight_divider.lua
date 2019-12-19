local palette=app.activeSprite.palettes[1]
local size=#palette-1
local pure_white=Color{r=255, g=255, b=255, a=255}
local pure_green=Color{r=000, g=255, b=000, a=064}
app.transaction(
    function()
        for i=0, size do
            -- I'm not American lol
            local colour=palette:getColor(i)
            if colour~=pure_white and colour~=pure_green then
                palette:setColor(i, Color{
                    r=(colour.red//8)*8,
                    g=(colour.green//8)*8,
                    b=(colour.blue//8)*8,
                    a=colour.alpha
                })
            end
        end
    end
)