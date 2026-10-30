# WinDM-AI Modules

Game modules for the [WinDM-AI](https://github.com/vtmartens/WinDM-AI) engine. The engine
repository contains no campaign data; modules are self-contained `.zip` archives in the
format it loads.

| Module | Id | Engine | File |
|---|---|---|---|
| The Yawning Portal Demo 1.1.12 | `yawning_portal_demo` | 1.3.41 | [`yawning-portal/demo.zip`](yawning-portal/demo.zip) |
| The Sunken Bell 1.0.12 | `sunken_bell_demo` | 1.3.41 | [`sunken-bell/demo.zip`](sunken-bell/demo.zip) |
| The Ember Mill 1.0.10 | `ember_mill` | 1.3.41 | [`ember-mill/demo.zip`](ember-mill/demo.zip) |
| The Glass Wastes 1.0.9 | `glass_wastes` | 1.3.41 | [`glass-wastes/demo.zip`](glass-wastes/demo.zip) |

## Install

Use **Modules** in WinDM-AI to pick an installed or bundled archive. For The Yawning
Portal, copy `yawning-portal/demo.zip` to `%LOCALAPPDATA%\WinDM-AI\Modules\demo.zip` if it
is not already bundled; **Load Demo Module** remains available as a shortcut.

The Sunken Bell is a separate module. Select `sunken-bell/demo.zip` from the module
library, or copy it into the module folder and refresh the library.

The Ember Mill is the third module. Select `ember-mill/demo.zip` from the module library,
or copy it into the module folder and refresh.

The Glass Wastes is the fourth module. Select `glass-wastes/demo.zip` from the module
library, or copy it into the module folder and refresh.

## Building a module

Each module's source lives in its `src/` directory (manifest plus the `data/` tree).
Rebuild an archive with its build script:

```powershell
.\yawning-portal\build.ps1
.\sunken-bell\build.ps1
.\ember-mill\build.ps1
.\glass-wastes\build.ps1
```

The scripts write `demo.zip` beside each source tree with forward-slash archive paths, so
the modules are readable by non-Windows tools. They require Windows PowerShell 5.1 or later
and do not need the engine repository.

## Module format

A module is a zip containing `manifest.json` and a `data/` tree: classes, subclasses,
wild shapes, feats, backgrounds, maps, NPCs, conversations, quests, items, monsters,
encounters, factions, conditions, crafting recipes, rune trials, campaign endings,
scenes and tutorials. Module id, name and version live in the manifest.

Content lives here; rules do not. Combat, shops, abilities, levelling, class skills and
the profession/reputation rules are implemented in the engine.

Optional keys the engine understands — `respawn_map`, `default_class`,
`default_background`, `default_difficulty` in the manifest, `rest`, `road_events` and
`bounty_board` on a map, `faction` on the black market, `accept_flag`, `complete_flag`,
`requires_flag`, `completion_flag`, dialogue `flag`/`not_flag` conditions, and `ranged`
on monsters or encounter enemies — are documented in the engine README.

## Changes

### The Yawning Portal Demo 1.1.12

- Adds the **Paladin** class with prepared Charisma magic, Divine Smite, Lay on Hands and
  the Oath of Devotion and Oath of the Ancients subclasses.

### The Sunken Bell 1.0.12

- Adds the shared Paladin class, oath subclasses and Lay on Hands.

### The Ember Mill 1.0.10

- Adds the shared Paladin class, oath subclasses and Lay on Hands.

### The Glass Wastes 1.0.9

- Adds the shared Paladin class, oath subclasses and Lay on Hands.

### The Yawning Portal Demo 1.1.11

- Adds the **Druid** class with prepared Wisdom magic, the Circle of the Moon and Circle
  of the Land subclasses, and bear, wolf and eagle wild shapes with temporary form HP.

### The Sunken Bell 1.0.11

- Adds the shared Druid class, Circle subclasses and wild shapes.

### The Ember Mill 1.0.9

- Adds the shared Druid class, Circle subclasses and wild shapes.

### The Glass Wastes 1.0.8

- Adds the shared Druid class, Circle subclasses and wild shapes.

### The Yawning Portal Demo 1.1.10

- Adds the **Warlock** class with Eldritch Blast, Hex, patron subclasses and the new
  Hexed curse.

### The Sunken Bell 1.0.10

- Adds the shared Warlock class, patron subclasses and Hexed condition.

### The Ember Mill 1.0.8

- Adds the shared Warlock class, patron subclasses and Hexed condition.

### The Glass Wastes 1.0.7

- Adds the shared Warlock class, patron subclasses and Hexed condition.

### The Yawning Portal Demo 1.1.9

- Adds the **Bard** class with spontaneous spellcasting, bardic abilities, College of Lore
  and College of Valor subclasses.

### The Sunken Bell 1.0.9

- Adds the shared Bard class and subclasses.

### The Ember Mill 1.0.7

- Adds the shared Bard class and subclasses.

### The Glass Wastes 1.0.6

- Adds the shared Bard class and subclasses.

### The Yawning Portal Demo 1.1.8

- Adds campaign endings for the Runeheart, the market and the Underroad.
- Adds Goblin Skirmishers, a ranged encounter.

### The Sunken Bell 1.0.8

- Adds three campaign endings for the bell, the drowned names and the forge.
- Adds Reef Archers, a ranged encounter on the reef path.

### The Ember Mill 1.0.6

- Adds four campaign endings for the mill, ledger and seal outcomes.
- Adds Ash Archers, a ranged encounter on the ash path.

### The Yawning Portal Demo 1.1.7

- Each subclass now grants a unique ability: Second Wind, Shield Wall, Scorching Ray,
  Arcane Ward, Death Mark, Misdirection, War Blessing, Foresight, Dragon Breath or
  Chaos Bolt.

### The Sunken Bell 1.0.7

- Adds the unique subclass abilities to the shared class data.

### The Ember Mill 1.0.5

- Adds the unique subclass abilities to the shared class data.

### The Glass Wastes 1.0.5

- Adds the unique subclass abilities to the shared class data.

### The Yawning Portal Demo 1.1.6

- Adds level-3 subclasses for every class, granting specialization stats, HP/mana and
  abilities.

### The Sunken Bell 1.0.6

- Adds the shared level-3 subclass table.

### The Ember Mill 1.0.4

- Adds the shared level-3 subclass table.

### The Glass Wastes 1.0.4

- Adds the shared level-3 subclass table.

### The Glass Wastes 1.0.3

- The Glass Echoes are ranged enemies that keep their distance in the Mirror Warden and
  falling-dome encounters.
- Compatibility metadata for WinDM-AI 1.3.34 combat range bands.

### The Glass Wastes 1.0.2

- Adds campaign endings for keeping the Sun Lens, giving it to the caravan, or simply
  reopening the road.
- Compatibility metadata for WinDM-AI 1.3.33 campaign endings.

### The Glass Wastes 1.0.1

- Quest and dialogue world flags: recover the Sun Lens, then choose whether to give it
  to the caravan or keep it, with a reputation consequence and branching follow-up.
- Compatibility metadata for WinDM-AI 1.3.32 world flags.

### The Glass Wastes 1.0.0

- New three-map module: Wayfarer's Rest, the Glass Flats and the Sunken Observatory.
- Three quests: Sera's **The Sun Lens**, Ilyan's **The Surveyor's Notes** and Sera's
  **A Shard for the Road**.
- Survive, protect, escape and defeat-target objective encounters, including Nim's Watch
  and the Mirror Warden.
- Sorcerer class, level-up feats, glass items, a caravan shop and source tree.

### The Yawning Portal Demo 1.1.5

- Adds module-authored feats for level-up choices: Alert, Arcane Reservoir, Brute,
  Quick and Tough.

### The Sunken Bell 1.0.5

- Adds module-authored level-up feats.

### The Ember Mill 1.0.3

- Adds module-authored level-up feats.

### The Yawning Portal Demo 1.1.4

- Adds the **Sorcerer** class: innate magic, Charisma-focused stats, and a known-spell
  repertoire that is always available without preparation.

### The Sunken Bell 1.0.4

- Adds the **Sorcerer** class with spontaneous spellcasting.

### The Ember Mill 1.0.2

- Adds the **Sorcerer** class with spontaneous spellcasting.

### The Ember Mill 1.0.1

- The Ash Path offers **The Ash Squall**, a survive-the-storm encounter with a Cinder
  Gust hazard and an Ash Hound.
- The Ash Warden fight is now a defeat-target objective: break the Warden and the
  remaining wights lose their purpose, even if they are still standing.
- Compatibility metadata for WinDM-AI 1.3.25 encounter objectives.

### The Ember Mill 1.0.0

- New three-map module: the Cinder Mill, the Ash Path and the Ember Vault.
- Three quests: Elsa's **The Ember Mill**, Cael's **The Miller's Ledger** and Elsa's
  **The Ash Bargain**.
- New monsters via existing stat blocks, the quest-gated Ash Warden encounter, a Cinder
  Wind hazard, Ember Mill items and a restockable village shop.
- Campaign chapters, achievements, road events, tutorials and source tree.

### The Sunken Bell 1.0.3

- The Bell Warden gains a 50% HP phase (guard, heal and a summoned Bell Wight) and a
  recurring **Bell Toll** hazard. Reef scavengers now use morale.

### The Sunken Bell 1.0.2

- Authored `data/campaign/chapters.json` so the campaign panel uses the module's own
  chapter order instead of the engine fallback.

### The Sunken Bell 1.0.1

- Compatibility metadata for WinDM-AI 1.3.2: module-independent map loading, map-scoped
  encounters and quest-gated encounters.

### The Sunken Bell 1.0.0

- New four-map module: the Lantern and Anchor inn, the reef path, the tide caves and the
  drowned bell chamber.
- Three quests: Mara's **The Bell Below**, Orin's **The Drowned Names** and Halla's
  **Salt and Iron**.
- New monsters, encounters, items and factions. The Bell Warden encounter is gated behind
  Mara's quest, so it cannot be fought before the quest is accepted.
- Editable source tree and `sunken-bell/build.ps1`.

### The Yawning Portal 1.1.3

- Repaired single-option dialogue nodes that lost their nested option shape.
- Added the Dark Beer, Basic Arcane Manual and Map of Undermountain trade items.

### The Yawning Portal 1.1.2

- The Rune Warden and Runeheart Sovereign gain 50% HP phases with summons, guard and
  healing. The Sovereign fight adds a recurring **Heartbeat** hazard. Waystation bandits
  and Underroad smugglers now use morale.

### The Yawning Portal 1.1.1

- Authored `data/landmarks/landmarks.json`: landmark titles, maps, statuses, details and
  action availability now come from module data. Bespoke transitions still run through
  the engine's landmark handlers.

### The Yawning Portal 1.1.0

- The Broken Waystation now has a survivor, Tamsin, and a burnt caravan wagon. Her
  **Caravan Waybill** quest sends you into the wagon with a key she provides.
- The Underroad has a hidden runner's stash and smuggler route marks to search out.
- The Sealed Sanctum has a Rune Archive, a broken ward stone and the Warden's Reliquary.
- Elminster offers **The Warden's Chronicle** after the sanctum chapter, opening the
  reliquary with his seal and paying out a sage's reward.
- The source tree and `yawning-portal/build.ps1` are now included, so content changes are
  reviewable and the archive can be rebuilt reproducibly.

### 1.0.3

- The Yawning Portal is flagged `bounty_board: true`, exposing the authored bounty
  contracts from the tavern board.

### 1.0.2

- The Trade Road map is flagged `road_events: true`, so the engine rolls the authored
  road events when the party travels there.

### 1.0.1

- Doors connect the Trade Road → Broken Waystation → Underroad → Sealed Sanctum →
  Runeheart Gate, so the Rune Trials are reachable in-world.
- Nessa (Underroad) and Mirt's Factor (Market) are placed as smuggler contacts for the
  black market.
- Archive entries use forward-slash paths so non-Windows tools can read the zip.

### Yawning Portal 1.0.0

- First module: the complete Yawning Portal demo campaign.

## Versioning

Module versions follow `manifest.json`. Tags in this repository match: `v1.1.12` is the
Yawning Portal demo 1.1.12, `sunken-bell-v1.0.12` is The Sunken Bell 1.0.12,
`ember-mill-v1.0.10` is The Ember Mill 1.0.10, and `glass-wastes-v1.0.9` is The Glass
Wastes 1.0.9.
