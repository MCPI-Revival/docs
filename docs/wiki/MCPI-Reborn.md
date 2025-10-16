***MCPI-Reborn*** is a modification of Minecraft: Pi Edition, that
unlocks previously disabled content, fixes broken features, adds tons of
configuration, enables support for dedicated servers, and heavily
improves compatibility with newer operating systems, and non-ARM
devices. MCPI-Reborn uses the C++ programming language.

It was initially made public as "Minecraft: Pi Edition for Docker" in
2020, before being expanded on to include more modifications, and
eventually renamed to Minecraft: Pi Edition: Reborn in 2021, and
dropping Docker altogether in favor of QEMU and GLFW.

## Game Modifications

| Name                                              | Type    | Info                                                                                                                                                       | Default Value |
|---------------------------------------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| Add Biome Colors To Grass                         | Feature | Tints grass to biome colors, instead of plain dark green                                                                                                   | Off           |
| Add Buckets                                       | Feature | Adds buckets to pick up and place down liquids                                                                                                             | On            |
| Add Title Screen Background                       | Feature | Uses a background for the title-screen, instead of dirt tile                                                                                               | On            |
| Allow Joining Survival Mode Servers               | Fix     | Lets players join survival mode servers, which was previously disabled due to the fact that MCPI is normally locked to Creator Mode.                       | On            |
| Animated Water                                    | Feature | Enables the previously disabled procedural water animation                                                                                                 | On            |
| Bind "Q" Key To Item Dropping                     | Feature | Binds item dropping to Q.                                                                                                                                  | On            |
| Bind Common Toggleable Options To Function Keys   | Feature | Binds options (like third-person camera, and hiding the hud) to the row of function keys on the keyboard                                                   | On            |
| Classic HUD                                       | Feature | Moves the health and armor bars down to the hotbar, like the PC version of the game                                                                        | On            |
| Close Current Screen On Death                     | Fix     | Closes any open menu on death                                                                                                                              | On            |
| Disable "gui_blocks" Atlas                        | Fix     | Makes the game render high quality inventory previews of blocks, instead of loading from a low resolution file.                                            | On            |
| Disable Autojump By Default                       | Feature | Disables the auto-jump functionality added to aid mobile players                                                                                           | On            |
| Disable Block Tinting                             | Feature | Allows texture pack creators to set custom colors on foliage.                                                                                              | Off           |
| Disable Creative Mode Mining Delay                | Feature | Removes the delay between breaking blocks, allowing you to instantly break the next block.                                                                 | Off           |
| Disable Hostile AI In Creative Mode               | Fix     | Stops hostile mobs from attacking the player in Creative Mode.                                                                                             | On            |
| Disable Raw Mouse Motion (Not Recommended)        | Feature | Technical feature for WSL users or those with mouse issues.                                                                                                | Off           |
| Disable Speed Bridging                            | Feature | Disables the "Speed Bridging" mechanic in MCPE and MCPI, where you can build in-front of you without facing the front of the block you're building off of. | Off           |
| Disable V-Sync                                    | Feature | Disables V-SYNC, a graphics option which synchronizes framerate with refresh rate, preventing screen tearing.                                              | On            |
| Display Nametags By Default                       | Feature | Displays nametags for players.                                                                                                                             | On            |
| Expand Creative Mode Inventory                    | Feature | Adds every block to the creative inventory, including those not meant to be held.                                                                          | Off           |
| External Server Support                           | Feature | Allows you to join external servers by IP, instead of just LAN network games.                                                                              | On            |
| Fix Attacking                                     | Fix     | Re-enable attacking mobs and players.                                                                                                                      | On            |
| Fix Bow & Arrow                                   | Fix     | Fix the Bow item so that it fires arrows.                                                                                                                  | On            |
| Fix Camera Rendering                              | Fix     | Makes the Camera entity render.                                                                                                                            | On            |
| Fix Furnace Not Checking Item Auxiliary           | Fix     | Fixes the furnace block, so that it checks the auxiliary item slot                                                                                         | On            |
| Fix Options Screen                                | Fix     | Enables the Options menu.                                                                                                                                  | On            |
| Fix Pause Menu                                    | Fix     | Fixes the pause menu.                                                                                                                                      | On            |
| Fix Sign Placement                                | Fix     | Fixes sign placement                                                                                                                                       | On            |
| Force EGL                                         | Fix     | Enables EGL (for incompatible systems)                                                                                                                     | Off           |
| Force Mob Spawning                                | Feature | Enables mob spawning in Creative mode.                                                                                                                     | Off           |
| Force Touch GUI Button Behavior                   | Feature | Forces all buttons to behave the way they do in Touch GUI.                                                                                                 | On            |
| Force Touch GUI Inventory                         | Feature | Enables Touch GUI for the Inventory                                                                                                                        | On            |
| Full Touch GUI                                    | Feature | Uses the GUI from MCPE, instead of from MCPI                                                                                                               | Off           |
| Generate Caves                                    | Feature | Enables a cave noise generator for worlds.                                                                                                                 | On            |
| Hide Chat Messages                                | Feature | Hides chat messages.                                                                                                                                       | Off           |
| Implement Chat                                    | Feature | Lets you send chat messages.                                                                                                                               | On            |
| Implement Create World Dialog                     | Feature | Allows you to specify information about your worlds when you create them.                                                                                  | On            |
| Implement Death Messages                          | Feature | Sends a message to the chat when you die.                                                                                                                  | On            |
| Implement Game-Mode Switching                     | Feature | Lets you switch gamemodes.                                                                                                                                 | On            |
| Implement Sound Engine                            | Feature | Enables the sound engine (requires libminecraftpe.so from 0.6.1 alpha).                                                                                    | On            |
| Improved Button Hover Behavior                    | Feature | Makes buttons light up when you hover over them.                                                                                                           | On            |
| Improved Classic Title Screen                     | Feature | Adds all the buttons to the title screen.                                                                                                                  | On            |
| Improved Cursor Rendering                         | Feature | Improves cursor rendering.                                                                                                                                 | On            |
| Load Language Files                               | Feature | Makes the game load strings from language files, instead of from the binary.                                                                               | On            |
| Miscellaneous Input Fixes                         | Fix     | Fixes input in several ways.                                                                                                                               | On            |
| Remove Creative Mode Restrictions                 | Feature | Removes restrictions from Creative Mode.                                                                                                                   | Off           |
| Remove Forced GUI Lag (Can Break Joining Servers) | Feature | Makes GUI instant, without any time wasted.                                                                                                                | Off           |
| Remove Invalid Item Background                    | Feature | Removes the red background from invalid items.                                                                                                             | On            |
| Render Selected Item Text                         | Feature | Shows the item name when you select it.                                                                                                                    | On            |
| Show Block Outlines                               | Feature | Renders outlines around the block you're pointing at.                                                                                                      | On            |
| Translucent Toolbar                               | Fix     | Makes your hotbar translucent.                                                                                                                             | On            |

## 2.0 update

Reborn got a major updater on June 17, rehauling much of the codebase to
add new features, like finally the removal of Docker as a dependency,
which allowed reborn to finally be run on Windows systems via WSL2 and
GWSL (broken as of now due to dropped support for Debian Buster). Docker
was also removed as a depend on x64 linux systems as well, instead using
a custom media layer proxy to forward the calls to GLFW and having the
binary run with QEMU. Other notable changes included sound support,
ARM64 support, External Server support instead of a proxy, and binding
the Q key to drop items.

## Server software

MCPI-Reborn also has it's own server software with features like
survival mode support and mob generation designed to replace the aging
pocketmine software, which was the only server option for MCPI before it
came along. It leverages MCPI's built in LAN server function and
RakNet's WAN server connection code to stay as vanilla as possible and
fix issues like Pocketmine's broken chunk rendering issue. More info can
be found at
[<https://gitea.thebrokenrail.com/TheBrokenRail/minecraft-pi-reborn#dedicated-server>](https://gitea.thebrokenrail.com/TheBrokenRail/minecraft-pi-reborn/src/branch/master/docs/DEDICATED_SERVER.md).