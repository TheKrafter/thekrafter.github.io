# Images on Maps
- [Back](/kraftersrealm)

Thanks to the *ImageFrame* plugin, you can upload images and put them on maps within our world.

- [Get an existing ImageMap
- [Create ImageMaps](#create)

### Get an existing image

To get an existing ImageMap, use the following command:
```
/frame get <name> combined
```
- Replace `<name>` with the name of your ImageMap
- `combined` is optional, but gives you one combined map

### Create ImageMaps

**[Video Tutorial](https://youtu.be/N0PnFbWPD1A)**

1. Upload your image via [img.krafterdev.xyz](https://img.krafterdev.xyz) and copy the URL.
   - Your image can be a `png`, `jpg`, or animated `gif`. Animated `gif` images are played at 20 fps.
   - ONLY images uploaded via the link above are accepted. (That is, to `litter.catbox.moe`)

2. Figure out where you want to place your image, and place the appropriate item frames.

3. Use the following command to create the required maps.
   ```
   /frame create <name> <url> <width> <height> combined
   ```
   *Do not include the `<`, `>`, `[`, or `]` when using the command.*
   - `<name>`: the name for your imagemap
   - `<url>`: the URL for your image from Step 1
   - `<width>`: the width to make the image, in blocks
   - `<height>`: the height to make the image, in blocks
   - `<combined>`: optionally specify `combined` at the end of the command, to get one *ImageMap* item instead of individual maps

### Markers

You can add banner markers to maps with the following command. They show up on all copies of the map.

Use the command, and then right-click where to place it on the image map.
```
/frame marker add <image_name> <marker_name> <direction:0-15> <marker_type> [optional:caption]
```
- `<image_name>`: the name of your imagemap
- `<marker_name>`: the name of the marker (for editing later)
- `<direction>`: the rotation of the banner icon, 0-15
- `<marker_type>`: the type of marker to place (i.e. banner_red, red_x, ...)
- `[caption]`: (optional) the label for the marker on the map

### Permissions

### All Commands

*You can use `/imageframe`, `/frame`, or `/if` for commands.*
```
/imageframe select - Select item frames to put image maps on
/imageframe create <name> <url> <width> <height> - Create a new image map
/imageframe create <name> <url> selection - Create a new image map and put it directly in your selected item frames
/imageframe create <name> <url> <width> <height> combined - Create a new image map and get its Combined ImageMap item
/imageframe overlay <name> <url> - Create a new image map that adds an overlay on a Minecraft Vanilla map you are holding
/imageframe overlay <name> <url> selection - Create a new image map that adds an overlay on a Minecraft Vanilla map in your selected item frames
/imageframe clone <name> <new_name> - Create a new image map with the same properties as the old one
/imageframe clone <name> <new_name> selection - Create a new image map with the same properties as the old one and put it directly in your selected item frames
/imageframe clone <name> <new_name> combined - Create a new image map with the same properties as the old one and get its Combined ImageMap item
/imageframe playback <name> pause - Toggle pause for an animated image map
/imageframe playback <name> jumpto <seconds> - Jump to a specific second for an animated image map
/imageframe refresh [optional:image_name] [optional:new_url] - Refresh a map you've created from source url
/imageframe info - Get info related to the image map you are holding
/imageframe get <name> - Get a self-created pre-existing image map
/imageframe get <name> selection - Put a self-created pre-existing image map directly on your selected item frames
/imageframe get <name> combined - Get a self-created pre-existing image map in its Combined ImageMap form
/imageframe delete <name> - Delete a self-created pre-existing image map
/imageframe rename <name> <new_name> - Rename a self-created pre-existing image map
/imageframe list - List all self-created pre-existing image maps
/imageframe marker add <image_name> <marker_name> <direction:0-15> <marker_type> [optional:caption] - Add a marker to your map
/imageframe marker remove <image_name> <marker_name> - Remove a marker from your map
/imageframe marker clear <image_name> - Clear all markers from your map
/imageframe setaccess <name> <player> <permission> - Set access permission of other players for your map
```
