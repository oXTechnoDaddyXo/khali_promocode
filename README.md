<img width="1536" height="1024" alt="promocode" src="https://github.com/user-attachments/assets/40091e34-8ed8-4bd1-ac9a-0f4322bc5359" />
# khali_promocode
Promo Code Script (VORP + Config + Webhook + Notify)

# 🎟️ Promo Code System (VORP)

A simple promo code system for **VORP Core (RedM)**, allowing players to enter codes and receive rewards. Each code can only be redeemed once per character.
------------------------------------------------------------------------

## ✨ Features

- ✅ Easy to use via the command `/promocode`
- ✅ Support for **items** and **money rewards**
- ✅ SQL storage (prevents multiple redemptions)
- ✅ Discord webhook integration
- ✅ Multilingual support (German / English)
- ✅ Easily configurable

------------------------------------------------------------------------

## 📦 Installation

1. Place the script in your `resources` folder.

2. Run the following command in your `server.cfg` file: `ensure your_script_name`
3. Ensure the following dependencies are installed:

- vorp_core

- vorp_inventory

- oxmysql or compatible

------------------------------------------------------------------------

## ⚙️ Configuration

### Set Language

Config.Language = 'DE'

### Discord Webhook

Config.Webhook = "YOUR_WEBHOOK_LINK"

------------------------------------------------------------------------

## 🎁 Promo Codes hinzufügen

Config.PromoCodes = { \["WELCOME2026"\] = { rewardType = "item", item =
"bread", amount = 5 }, \["MONEYBOOST"\] = { rewardType = "money", amount
= 100 } }

------------------------------------------------------------------------

## 🏷️ Item Labels

Config.ItemLabels = { bread = "Bread", water = "Water" }

------------------------------------------------------------------------

## 💬 In-game use

/promocode CODE

Example: /promocode WELCOME2026

------------------------------------------------------------------------

## 🗄️ Database

Table: promo_redeems

Stores: - Character ID - Codes

------------------------------------------------------------------------

## 🔔 Discord Logs

Sends: - Player Name - Code - Reward

------------------------------------------------------------------------

## 🌍 Languages

- German
- English

------------------------------------------------------------------------

## ⚠️ Notes

- Codes only 1 per character
- Case insensitive

----------------------------------------------------------------------

## ❤️ Credits

oXTechnoKhaliXo Scripts

------------------------------------------------------------------------

# 🎟️ Promo Code System (VORP)

Ein einfaches Promo-Code-System für **VORP Core (RedM)**, mit dem
Spieler Codes eingeben und Belohnungen erhalten können. Jeder Code kann
pro Charakter nur einmal eingelöst werden.

------------------------------------------------------------------------

## ✨ Features

-   ✅ Einfache Nutzung über Command `/promocode`
-   ✅ Unterstützung für **Items** und **Geld-Belohnungen**
-   ✅ SQL Speicherung (verhindert mehrfaches Einlösen)
-   ✅ Discord Webhook Integration
-   ✅ Mehrsprachigkeit (DE / EN)
-   ✅ Leicht konfigurierbar

------------------------------------------------------------------------

## 📦 Installation

1.  Script in deinen `resources` Ordner legen
2.  In der `server.cfg` starten: ensure dein_script_name
3.  Stelle sicher, dass folgende Abhängigkeiten installiert sind:
    -   vorp_core
    -   vorp_inventory
    -   oxmysql oder kompatibel

------------------------------------------------------------------------

## ⚙️ Konfiguration

### Sprache einstellen

Config.Language = 'DE'

### Discord Webhook

Config.Webhook = "DEIN_WEBHOOK_LINK"

------------------------------------------------------------------------

## 🎁 Promo Codes hinzufügen

Config.PromoCodes = { \["WELCOME2026"\] = { rewardType = "item", item =
"bread", amount = 5 }, \["MONEYBOOST"\] = { rewardType = "money", amount
= 100 } }

------------------------------------------------------------------------

## 🏷️ Item Labels

Config.ItemLabels = { bread = "Brot", water = "Wasser" }

------------------------------------------------------------------------

## 💬 Nutzung im Spiel

/promocode CODE

Beispiel: /promocode WELCOME2026

------------------------------------------------------------------------

## 🗄️ Datenbank

Tabelle: promo_redeems

Speichert: - Charakter-ID - Codes

------------------------------------------------------------------------

## 🔔 Discord Logs

Sendet: - Spielername - Code - Belohnung

------------------------------------------------------------------------

## 🌍 Sprachen

-   Deutsch
-   Englisch

------------------------------------------------------------------------

## ⚠️ Hinweise

-   Codes nur 1x pro Charakter
-   Case insensitive

------------------------------------------------------------------------

## ❤️ Credits

oXTechnoKhaliXo Scripts
