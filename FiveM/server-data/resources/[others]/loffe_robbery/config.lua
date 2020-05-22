Config = {}
Translation = {}

Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped
Config.Locale = 'fr' -- 'en', 'sv' or 'custom'

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    {coords = vector3(24.03, -1345.63, 29.5-0.98),    heading = 266.0, money = {5000, 15000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(373.04, 328.76, 103.57-0.98),   heading = 254.0, money = {7500, 20000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(2554.77, 380.78, 108.62-0.98),  heading = 357.0, money = {7500, 20000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-3244.67, 1000.08, 12.83-0.98), heading = 355.0, money = {7500, 20000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(549.48, 2669.0, 42.16-0.98),    heading = 98.0,  money = {7500, 20000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1958.75, 3742.07, 32.34-0.98),  heading = 299.0, money = {7500, 20000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(2675.83, 3280.52, 55.24-0.98),  heading = 330.0, money = {7500, 20000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1728.84, 6417.43, 35.04-0.98),  heading = 244.0, money = {7500, 20000}, cops = 1, blip = false, name = '7/11',     cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1134.08, -982.43, 46.41-0.98),  heading = 278.0, money = {7500, 20000}, cops = 1, blip = false, name = 'Liquor',   cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-1221.80, -908.75, 12.33-0.98), heading = 34.0,  money = {7500, 20000}, cops = 1, blip = false, name = 'Liquor',   cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-1486.04, -377.86, 40.16-0.98), heading = 135.0, money = {7500, 20000}, cops = 1, blip = false, name = 'Liquor',   cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-2966.25, 390.97, 15.04-0.98),  heading = 87.5,  money = {7500, 20000}, cops = 1, blip = false, name = 'Liquor',   cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1165.89, 2710.97, 38.16-0.98),  heading = 181.0, money = {7500, 20000}, cops = 1, blip = false, name = 'Liquor',   cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1392.86, 3606.64, 34.98-0.98),  heading = 201.0, money = {7500, 20000}, cops = 1, blip = false, name = 'Liquor',   cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98),  heading = 91.0,  money = {7500, 20000}, cops = 1, blip = false, name = 'Gasoline', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-47.20, -1759.02, 29.42-0.98),  heading = 51.0,  money = {7500, 20000}, cops = 1, blip = false, name = 'Gasoline', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1164.85, -322.74, 69.20-0.98),  heading = 100.5, money = {7500, 20000}, cops = 1, blip = false, name = 'Gasoline', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-1820.14, 794.30, 138.09-0.98), heading = 137.0, money = {7500, 20000}, cops = 1, blip = false, name = 'Gasoline', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1697.88, 4922.90, 42.06-0.98),  heading = 324.0, money = {7500, 20000}, cops = 1, blip = false, name = 'Gasoline', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false}

}

Translation = {
    ['en'] = {
        ['shopkeeper'] = 'shopkeeper',
        ['robbed'] = "I was just robbed and ~r~don't ~w~have any money left!",
        ['cashrecieved'] = 'You got:',
        ['currency'] = '$',
        ['scared'] = 'Scared:',
        ['no_cops'] = 'There are ~r~not~w~ enough cops online!',
        ['cop_msg'] = 'We have sent a photo of the robber taken by the CCTV camera!',
        ['set_waypoint'] = 'Set waypoint to the store',
        ['hide_box'] = 'Close this box',
        ['robbery'] = 'Robbery in progress',
        ['walked_too_far'] = 'You walked too far away!'
    },
    ['sv'] = {
        ['shopkeeper'] = 'butiksbiträde',
        ['robbed'] = 'Jag blev precis rånad och har inga pengar kvar!',
        ['cashrecieved'] = 'Du fick:',
        ['currency'] = 'SEK',
        ['scared'] = 'Rädd:',
        ['no_cops'] = 'Det är inte tillräckligt med poliser online!',
        ['cop_msg'] = 'Vi har skickat en bild på rånaren från övervakningskamerorna!',
        ['set_waypoint'] = 'Sätt GPS punkt på butiken',
        ['hide_box'] = 'Stäng denna rutan',
        ['robbery'] = 'Pågående butiksrån',
        ['walked_too_far'] = 'Du gick för långt bort!'
    },
    ['fr'] = { -- edit this to your language
        ['shopkeeper'] = 'Vendeur',
        ['robbed'] = 'Je viens d\'être braqué, je n\'ai ~r~plus~w~ d\'argent !',
        ['cashrecieved'] = 'Vous avez reçu:',
        ['currency'] = '$',
        ['scared'] = 'Effrayé:',
        ['no_cops'] = 'Il n\'y a ~r~pas~w~ assez de policiers en ville !',
        ['cop_msg'] = 'Une photo du braqueur a été prise par les caméras de surveillance !',
        ['set_waypoint'] = 'GPS configuré sur le braquage',
        ['hide_box'] = 'Fermer la fenêtre',
        ['robbery'] = 'Braquage en cours',
        ['walked_too_far'] = 'Vous êtes partis trop loin !'
    }
}
