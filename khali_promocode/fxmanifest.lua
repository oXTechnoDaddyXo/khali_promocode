--[[
    ╔═══════════════════════════════════════════════════════════════════╗
    ║                                                                   ║
    ║               P R O M O C O D E                                   ║
    ║           ─────────────────────────                               ║
    ║             VORP Promocode System                                 ║
    ║               Redemption Script                                   ║
    ║                                                                   ║
    ║                                                                   ║
    ║                                                                   ║
    ╠═══════════════════════════════════════════════════════════════════╣
    ║   Server:    oXTechnoKhaliXo Scripts                              ║
    ║   Creator:   oXTechnoKhaliXo                                      ║
    ║   Discord:   https://discord.gg/8NjehNeEuZ                        ║
    ╠═══════════════════════════════════════════════════════════════════╣
    ║   © 2026 oXTechnoKhaliXo | All Rights Reserved                    ║
    ╚═══════════════════════════════════════════════════════════════════╝
]]
fx_version 'cerulean'
game 'rdr3'

name 'khali_promocode'
author 'oXTechnoKhaliXo'
description 'Promo Code Script (VORP + Config + Webhook + Notify)'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
version '1.0.0'

shared_scripts {
    'config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}

client_scripts {
    'client/*.lua'
}