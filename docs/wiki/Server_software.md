Minecraft: Pocket Edition (and Pi Edition) uses a UDP protocol with the
RakNet library, without any official dedicated server support, which
means that all the multiplayer related code is designed for LAN
multiplayer among MCPE/MCPI clients. More documentation on the technical
part of MCPE/MCPI's networking can be found on
[wiki.vg](https://wiki.vg/Pocket_Minecraft_Protocol).

While there is no official way to play on a dedicated server, there have
been and are several currently developed and formerly developed
MCPE/MCPI dedicated server software.

Below is a list of all of the ones compatible with the Pi Edition of the
game.

1.  [MCPI-Reborn](MCPI-Reborn "wikilink"), a client mod for MCPI with
    loads of new features, which also has a build which uses the LAN
    multiplayer code in the original game and adapts it for use in a
    dedicated server. The issue with this approach is that it is
    extremely difficult to program any new features into the game, but
    any regular functionality supported by the game works exactly as
    expected, making this the best and most used server software for the
    game.
2.  [PocketMine-MP](PocketMine-MP "wikilink"), a server software
    originally for the Pocket Edition of the game, but with a 0.6.1
    version, and thus, MCPI support. PocketMine-MP is open source and
    extensible, so new features, gamemodes, and functionality are
    infinitely easier to implement than the Reborn server software, but
    in it's current state, it's dated, buggy, and hasn't been developed
    for nearly a decade. It is a good choice, depending on your
    use-case.
3.  [PRakNet](https://github.com/MCPI-Revival/PRakNet) is a low-level
    implementation of RakNet in Python, and while open source, it is
    very early in development and has little-to-no support for anything.
    It's also deprecated, but it might be possible to build a server on
    it's framework.
4.  [Mycelium](https://github.com/MCPI-Revival/Mycelium) is a low-level
    framework similar to PRakNet, with slightly more functionality, but
    little amounts of progress in development.