# Tulip SMP - Commands

- [Back](/tulipsmp/docs)

> **Tip!** Command options marked like `[this]` are required, ones marked with `<these>` are optional. 

### Contents

- [For Players](#for-players)
- [For Jr. Moderators](#for-jr-moderators)
- [For Moderators](#for-moderators)
- [For Administrators](#for-administrators)


## For Players

Commands players and above can use.

(Almost) all commands you can use ingame are listed here.


#### /msgtoggle

- `/msgtoggle`

Toggles whether you can recieve private messages via [/msg](#msg)

#### /help

- `/help`

Get info on using different commands.

#### /delhome

- `/delhome [name]`

Delete a home you have set via [/home](#home)

#### /tptoggle

- `/tptoggle`

Toggles whether you can use teleportation related commands.

> Moderators can still teleport you or teleport to you.

#### /disposal

- `/disposal`

Opens a trash can to put items in, which will be deleted.

#### /trash

*Alias for [/disposal](#disposal).*

#### /condense

- `/condense`

Compresses what you are holding into more compact blocks.

#### /mail

- `/mail read`
- `/mail clear <number>`
- `/mail send [to] [message]`
- `/mail sendtemp [to] [message] [expire time]`

Send, read, or clear mail. Players are also alerted of mail they recieve when they join.

> Moderators can toggle whether they are watching players' mail with [/socialspy](#socialspy).


#### /hat

- `/hat`

Puts the item you are holding in your helmet slot.

#### /info

- `/info`

See information about the server and links to resources.

#### /tpahere

- `/tpahere [player]`

Request a player teleport to you. They must accept with [/tpaccept](#tpaccept) or deny with [/tpdeny](#tpdeny). You can cancel a request with [/tpcancel](#tpacancel).

#### /realname

- `/realname [player]`

Check the real username of a player (useful if they have a nickname you do not recognize).

#### /rules

- `/rules`

View server rules. This list may be outdated, always check discord for the latest iteration.

#### /sethome

- `/sethome [name]`

Set a home you can teleport to later.

> *Players* and *Jr. Moderators* can have 50 homes. *Moderators* can have 100. *Administrators* can have 10k.

#### /warpinfo

- `/warpinfo [warp]`

View informations about a [warp](#warp).

#### /warp

- `/warp [name]`

Warp to a set location. You can view information about these locations with [/warpinfo](#warpinfo).

> Moderators and above can set warps with [/setwarp]
(#setwarp).

#### /compass

- `/compass`

Describes your current bearing.

#### /me

- `/me [message]`

Send a message in chat starting with "* YourUserName".

#### /payconfirmtoggle

- `/payconfirmtoggle`

Toggle whether you need to confirm before making payments with <a href="#pay">/pay</a>.

#### /list

- `/list`

See who else is online.

#### /ignore

- `/ignore`

Effectively blocks another user ingame. 

> *If you ever need to use this, there is probably something very wrong. Please open a Ticket and speak to the Moderators if you need to use this. It is only provided as an emergency safeguard.*

#### /near

- `/near`

See who's near you ingame.

#### /nearby

*Alias for [/near](#near).*

#### /balancetop

- `/balancetop`

List top players in terms of ingame balance.

#### /baltop

*Alias for [/balancetop](#balancetop).*

#### /balance

- `/balance`

Check your current balance.

#### /bal

*Alias for [/balance](#balance)*

#### /money

*Alias for [/balance](#balance)*

#### /workbench

- `/workbench`

Opens a crafting table.

#### /stonecutter

- `/stonecutter`

Opens a stonecutter.

#### /enderchest

#### /motd

- `/motd`

Views the MOTD shown when you join the server.

#### /tpacancel

- `/tpacancel <player>`

Cancels all outstanding teleport requests.

Specify `<player>` to cancel requests only with them.

#### /back

- `/back`

Teleport to your previous location.

#### /return

*Alias for [/back](#back).#

#### /seen

- `/seen [player]`

Shows the last logout time of a player.

#### /home

- `/home <name>`

Teleport to your home named `<name>`, which you can set with [/sethome](#sethome).

#### /tpdeny

- `/tpdeny <from player>`

Reject teleport requests.

#### /tpno

*Alias for [/tpdeny](#tpdeny).*

#### /getpos

- `/getpos`

Get your current position.

#### /helpop

- `/helpop [message]`

Sends a message to all online Moderators.

#### /skull

- `/skull <owner>`

Get the player head of you, or that of another `<owner>`.

#### /head

*Alias for [/skull](#skull).*

#### /tpa

- `/tpa [player]`

Request to teleport to a `[player]`.

#### /tpask

*Alias for [/tpa](#tpa).*

#### /paytoggle

- `/paytoggle`

Toggles whether you are currently accepting payments.

#### /itemlore

- `/itemlore [add|set|clear] <text|line> <text>`

Adds lore to an item.

Examples:

  - `/itemlore clear`: Clears your item's itemlore.
  - `/itemlore add Hello World!`: Adds "Hello World!" to the itemlore.
  - `/itemlore set 3 Sussus Amongus`: Sets the third line of itemlore to "Sussus Amongus".

#### /ilore

*Alias for [/itemlore](#itemlore).*

#### /itemname

- `/itemname <name>`

Rename an item, or omit `<name>` to clear the name.

#### /iname

*Alias for [/itemname](#itemname).*

#### /afk

- `/afk`

Marks you as away from keyboard.

#### /away

*Alias for [/afk](#afk).*

#### /nick

- `/nick [name|off]`

Set your nickname or turn it off.

> Moderators can use the following to change or reset a player's username:
> - `/nick [player] [name|off]`

#### /pay

- `/pay [player] [amount]`

Pay another player from your balance.

#### /r

- `/r [message]`

Quick reply to the last player to message you.

#### /reply

*Alias for [/r](#r).*

#### /rtoggle

- `/rtoggle`

Change whether the recipient of replies in [/r](#r) is the last recipient or last sender.

#### /showkit

- `/showkit [kit name]`

Show contents of a kit.

#### /tpaccept

- `/tpaccept <player>`

Accept teleport requests.

> See [/tpa](#tpa) or [/tpahere](#tpahere) for how to send teleport requests.

#### /tpr

- `/tpr`

Teleport to a random location.

#### /tpauto

- `/tpauto [player]`

Automatically accept teleport requests.

#### /playtime

- `/playtime [player]`

Shows your or a `[player]`'s ingame playtime.

#### /spawn

- `/spawn`

Teleport to world spawn.

#### /msg

- `/msg [player] [message]`

Send a private `[message]` to a `[player]`.

#### /recipe

- `/recipe <item>`

View how to craft an item.


## For Jr. Moderators

Commands Jr. Moderators and above can use


## For Moderators

Commands Moderators and above can use


## For Administrators

Command only Administrators can use
