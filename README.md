# Construct

Store and restore builds with ease

## What's in the box

* Build something then save it, then restore it whenever you want it back again.
* Auto-Save, Saves your build when you log-out, and you could then restore it when you come back.
* Sharing, Share a copy of your build via File-Storage. (See below or the File-Storage section)
* File-Storage, Allows saving the build into raw text (like storage) except visable to be copied and loaded/parsed into another location.

## Usage

> I use the term home in this document to mean any kind of build, farms, buildings, even chests.

Basically you build your home, then craft one `construct:builder` placing it in the middle outside of your home.

From there you just interact with a graphical interface to set your home's dimentions, and what you want to call your home, then hit save.

By default auto-clear will be enabled! Don't panic if you see your home dissapear, just interact with the `construct:builder` to rebuild your home.

> Auto-Save is enabled by default, so don't worry about saving your home when your going to log-off/log-out. (This combined with auto-clear allows for a single `construct:builder` to be used like a plot, reusable and so long as no one builds a bigger build everyone can fit in the same space)

## How it works

### Storing (From world to storage)

Basically I store each position, param1, param2, meta, inventories, and attempt to determine if any node timers are running and what their lengths are (I've found most mods will use something like a 1 second node timer for various processes).

From there I stuff all the stored information into storage (for now mod_storage is the only supported feature, later on I will add database supports).

If auto-clear was enabled I wipe out the old positions by setting everything to air. (If not then I just saved by didn't clear everything out, useful for if you just wanted to make essentially a backup of your place)

> Up to this point gets automatically called with Auto-Save, now for the restoring.

### Restoring (From storage to world)

First I check if the player gave a valid "place name" in the gui, if so get the stored information on it.

If auto-clear was enabled I wipe out the positions defined by the (essentially schematic) size.

From there I just swap_node the node that fits that position define it's param1 and param2, load it's meta, restore it's inventory, and if I was able to determine any node timers then attempt to restore node timers (Making it as though we never left).

> At this point the build is restored, the player can now interact with essentially an exact copy of the original.

### File Storage (From where you built to somewhere else)

> This feature could be counted as an exploite, or as an advantage.

This feature basically allows the player to download their saved build in a saved form, then they could use a single player world with the mod to load it and then continue to build or what not. (This could then be taken futher by then uploading the modified save back on to the server they were on and load that back into the world, repeating this as they wish)

> Because of the cool-ness of this feature this feature by default is enabled. (But can be disabled or limited to save only)

This feature is un-needed if your just wanting to move your build with `construct:builder`, just type your place name at the other location and it should load in just fine.

1. Simply click on the Download button in the GUI to get the text in raw for the current build (must be saved first).

2. Then Simply click on the Upload button in the GUI (this could be anywhere else so long as the mods are the same, else it could lead to corrupted data), then paste in the raw data you got from the above step, if all goes well you should see your build appear as it did on the other location you were at.

### FAQ

* I don't understand your mod?

> Think of it like Star Trek's Holo-deck. You can build something then rebuild it somewhere else.

* What's the point?

> The possibilities of usage are just about endless, you could play on your server but not be on your server. (See File-Storage)

* This seems like it's too powerful.

> First off, you still have to collect the resources to build your build, so not initially anyway, afterwards maybe. (If you classify being able to move your build around essentially taking it with you then I guess, but the idea was that players who are never online at the same time could reuse the same space)
