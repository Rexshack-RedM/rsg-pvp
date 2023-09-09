local Translations = {
error = {
    var = 'o texto vai aqui',
},
success = {
    var = 'o texto vai aqui',
},
primary = {
    pvp_on = 'PVP: LIGADO',
    pvp_off = 'PVP: DESLIGADO',
},
menu = {
    var = 'o texto vai aqui',
},
commands = {
    toggle_pvp = 'Ativar/desativar PVP',
},
progressbar = {
    var = 'o texto vai aqui',
},
}

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end

-- Lang:t('primary.pvp_on')
-- Lang:t('primary.pvp_off')
-- Lang:t('commands.toggle_pvp')
