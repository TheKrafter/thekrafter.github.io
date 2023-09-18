# Tulip SMP - Permissions

- [Back](/tulipsmp/docs)

## Permission Levels

Tulip SMP has a system of permission "levels". Each level has a specific set of commands and permissions that it can use. However, each level can also use commands and permissions granted to the level below it.

Additionally, you can only tab-complete commands that you have permission to use (please let us know if there are any inconsistencies in this).

> Nerd Stuff: This is implemented using a LuckPerms track where each group inherits the permissions of the group below it. 
> Tab-completion is done via the CommandWhitelist plugin, which allows us to list the specific commands we want each group to use in the config file.

Here are those levels, from highest to lowest:

- Administrator (`admin`)
- Moderator (`mod`)
- Jr. Moderator (`jrmod`)
- Player (`default`)

For what commands each level has access to, see the [Commands](/tulipsmp/docs/commands) page.