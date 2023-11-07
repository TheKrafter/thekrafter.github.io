# Tulip SMP - Claims
- [Back](/tulipsmp)

Tulip SMP has a claims system called GreifPrevention that makes keeping your builds safe from being destroyed or modified by others. This guide goes through all you need to know to get started.

## Claiming Land
1. Obtain a Wooden Shovel
2. Click the ground on two opposite corners around your base
3. If it's not the right size, click a corner of the claim and click where to move it to
4. You have a claim!

To remove your claim, stand in it and use the `/abandonclaim` command.

## Changing Permissions
1. Stand inside your claim
2. Use the `/trust` command like this:
    ```
    /trust Username
    ```
    (replace `Username` with the username of the player you want to grant access to)
3. Now they have permission to place, break, and interact with all blocks in your claim!

To remove permission from a player, use the same steps except with the `/untrust` command.

### Tips
- Use `public` as the username to change perissions for everyone
- Tap the ground with a stick to see if that block is claimed
- Shift while tapping the ground with a stick to visualize nearby claims
- Use `/trustlist` while in your claim to see who you've trusted
- Use `/claimexplosions` while in your claim to allow TNT and other explosions to break blocks
- Use `/trapped` to get out of a claim you are stuck in
- Use `/permissiontrust` to let a player trust others with the same kind of trust they have
- Use `/givepet` and click a pet to gift it to another player

### Advanced Permissions
For finer control over what people can do in your claim, use any one of the following commands instead of `/trust`:

| Command        | Permissions |
| -------------- | ----------|
| `/accesstrust` | Only use buttons, levers, trapdoors, and beds |
| `/containertrust` | The above, plus utility blocks, containers, and animals |
| `/trust` | Ability to interact with all blocks without restrictions |

## Additional Info

- You start with 200 claim blocks
- Claims must be at least 5 blocks by 4 blocks wide
- Claims are automatically removed and nature is restored after 60 days
