fx_version 'adamant'

game 'gta5'

------------ RAGEUI ------------


client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",

    "src/components/*.lua",

    "src/menu/elements/*.lua",

    "src/menu/items/*.lua",

    "src/menu/panels/*.lua",

    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",

}


client_scripts {
	'cl_ammu.lua',
    'cl_accessoires.lua'
}


server_scripts {
	'sv_ammu.lua',
    'sv_accessoires.lua'
}



dependencies {
	'es_extended'
}
