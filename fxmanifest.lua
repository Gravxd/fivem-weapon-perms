fx_version "adamant"
game "gta5"

author "Grav"
description "Script to restrict weapons with customisable notifications."

client_script "client.lua"
server_script "server.lua"

lua54 "yes"

shared_scripts {
    "@ox_lib/init.lua",
    "config.lua"
}

dependencies {
    "ox_lib"
}
