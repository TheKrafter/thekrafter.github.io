---
layout: realm
title: Player Analytics
---
# Player Analytics

This server uses Plan, a Player Analytics platform.
Data gathered is stored locally on the server and is not transferred to third parties. 

If there is a data breach the owner of the server will have to notify the users. 

Transfer of this data to a third party will require consent of all parties involved, 
unless the pseudonymised user data is removed/anonymized before the transfer.


What Player Analytics gathers about you (Linked to UUID):

- Your UUID (Unique ID) and Player name
- Countries logged in from
- Used display names (Such as those changed with /nick)
- Date you first joined the server
- Sessions
  - Join and Leave dates when you have been on the server to calculate Playtime
  - The IP/address that you joined the server with (eg. play.server.com)
  - Time information about time spent in each World and GameMode.
  - Time information about being AFK
  - How many mobs were killed
  - How many deaths occurred
  - Ping information (delay to the server)
  - Player kills (Linked to user), time and weapon item name.

What Player Analytics gathers about you (Anonymous):

- Players Online every minute
- How many times each command is used
- How many entities and chunks are loaded on the server


How is this data stored:

The data is stored in a SQL Database in a pseudonymized format.
Linking the data to a real person requires a key -   
in this case UUID and access to Mojang's Account databases  
(These databases are not publicly available).


How is this data used:

This data is used for providing the staff with Analytics about their server 
so that they can make more educated decisions when improving their server.

Following information is calculated from the available data:

- How "healthy" the server is
- Are players having people to play with
- Are players staying on the server
- How many new players stay as regular players
- How many unique players stay on the server each day
- What are the most active hours on the server
- What is the most played world, and in networks what server is the most played server


Your rights:

- Right request the removal of your data.
- Right to be informed of what data is held of you (Access to own player page on default Plan setup)
- Right for rectification 
