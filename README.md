# Cryptid Edition
**[This fork uses a custom server for gameplay](https://github.com/Drathonix/BalatroMultiplayerRyuuServer)**

This Fork was specifically made to add additional support for Cryptid as the current version of balatro multiplayer has a few significant issues that occur due to Cryptid's schenanegans. Here's a list of changes and fixes.

1. Added a way for servers to send over a name to clients to differentiate.
2. The Server side now properly handles the Hands value when it is a non-integer value, in cryptid this causes the round to end when hands < 1, but the server only ends when hands are <= 0. This can cause a client freeze, effectively ending the game, as such I've patched the problem.
3. Patched a client side issue where the player's "discard" deck would be re-added to the "draw" deck causing a strange issue where card duplication would occur and the duplicate cards would not only be permanently added to the deck, they would also be permanently flipped over.
4. Patched a client side issue where upon draining the "draw" and "held" deck (no more cards to play) while having >=1 hands remaining the game would freeze, this has been fixed by having the client set hands to 0 when no cards are left.
5. Patched an intrusive lovely patch that broke Cryptid's Loopy card which resets its values at the end of the round, originally multiplayer replaced the entire function which effectively deleted the Cryptid injected code, Multiplayer now just injects all the relevant code into the function. This may fix problems with other mods as well.
6. Added a "Nerf Cryptid" ruleset, This ruleset replaced the Blitz ruleset with "ERROR". This is because I was too lazy to setup translation and didn't want to bother messing with the buttons (I HATE GUIS). 

# Balatro Multiplayer Mod

![ModIcon](https://github.com/Balatro-Multiplayer/BalatroMultiplayer/blob/2cd9015963c1118e0b849f11e7c335f97b74f36c/assets/2x/modicon.png)

A multiplayer mod for Balatro, allowing players to compete with each other.

## 📥 Installation

Detailed installation instructions are available on our website:
[https://balatromp.com/docs/getting-started/installation](https://balatromp.com/docs/getting-started/installation)

*Requires [Steamodded](https://github.com/Steamodded/smods) (>=1.0.0~BETA-0711a) and [Lovely Injector](https://github.com/ethangreen-dev/lovely-injector) (>=0.8)

Quick installation steps:

1. Download the latest release from the [Releases page](https://github.com/Balatro-Multiplayer/BalatroMultiplayer/releases)
2. Extract the files into a new folder in your Balatro mods directory
3. Run the game

## 🎲 Usage

1. Launch Balatro with the multiplayer mod enabled
2. From the main menu, select "Play", then "Create Lobby"
3. Select a ruleset/gamemode
4. Press "View Code" and send the code to the person you want to play with
5. The other player will select "Play", then "Join Lobby" and enter the code
6. Press "Start" to start the game!
   
## 🤝 Contributing

We welcome contributions to the Balatro Multiplayer Mod! Here's how you can help:

### How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Contribution Guidelines

- Follow the existing code style and conventions
- Write clear, descriptive commit messages
- Clearly explain the feature you have implemented in the pull request
- Ensure to properly test the feature and provide example seeds where the feature can clearly be seen working (if relevant)

Contributions that make content changes like modifying how the base game works, adding cards or blinds, or adding gamemodes will likely not be accepted. We are currently trying to maintain the competitive integrity of the mod and these types of changes need to be decided on by our team before being added.

### Looking to contribute but don't have a feature in mind?

Check the [issues](https://github.com/Balatro-Multiplayer/BalatroMultiplayer/issues), there are usually issues with the "Help Wanted" tag that are just looking for someone to work on them! I (Virtualized) try and be very clear about what the problem is and what the expected solution is in these issues so hopefully there is little confusion, but feel free to DM or ping `virtualized` on discord for clarification.

## 📜 License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](https://github.com/V-rtualized/balatro-multiplayer/blob/main/LICENSE.md) file for details.

## 👏 Acknowledgements

- The LocalThunk for creating such an amazing game
- [All the contributors](https://github.com/Balatro-Multiplayer/BalatroMultiplayer/graphs/contributors) for their hard work
- Our Discord community for feedback, testing, and support

---

Join our [Discord server](https://discord.gg/balatromp) for support, to report bugs, or just to chat!
[Website](https://balatromp.com) | [GitHub](https://github.com/Balatro-Multiplayer/balatro-multiplayer)
