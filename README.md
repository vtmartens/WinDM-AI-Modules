# WinDM-AI Modules

Game modules for the [WinDM-AI](https://github.com/vtmartens/WinDM-AI) engine. The engine
repository contains no campaign data; modules are self-contained `.zip` archives in the
format it loads.

| Module | Id | Engine | File |
|---|---|---|---|
| The Yawning Portal Demo 1.1.0 | `yawning_portal_demo` | 1.0.0 | [`yawning-portal/demo.zip`](yawning-portal/demo.zip) |
| The Sunken Bell 1.0.1 | `sunken_bell_demo` | 1.3.2 | [`sunken-bell/demo.zip`](sunken-bell/demo.zip) |

## Install

For The Yawning Portal, copy the archive to `%LOCALAPPDATA%\WinDM-AI\Modules\demo.zip`,
then start WinDM-AI and choose **Load Demo Module**. Alternatively use **Open Module…** and
pick the zip from anywhere.

The Sunken Bell is a separate module. Use **Open Module…** and select
`sunken-bell/demo.zip` without replacing the demo module.

## Building a module

Each module's source lives in its `src/` directory (manifest plus the `data/` tree).
Rebuild an archive with its build script:

```powershell
.\yawning-portal\build.ps1
.\sunken-bell\build.ps1
```

The scripts write `demo.zip` beside each source tree with forward-slash archive paths, so
the modules are readable by non-Windows tools. They require Windows PowerShell 5.1 or later
and do not need the engine repository.

## Module format

A module is a zip containing `manifest.json` and a `data/` tree: classes, backgrounds,
maps, NPCs, conversations, quests, items, monsters, encounters, factions, conditions,
crafting recipes, rune trials, scenes and tutorials. Module id, name and version live in
the manifest.

Content lives here; rules do not. Combat, shops, abilities, levelling, class skills and
the profession/reputation rules are implemented in the engine.

Optional keys the engine understands — `respawn_map`, `default_class`,
`default_background`, `default_difficulty` in the manifest, `rest`, `road_events` and
`bounty_board` on a map, and `faction` on the black market — are documented in the engine
README.

## Changes

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

Module versions follow `manifest.json`. Tags in this repository match: `v1.1.0` is the
Yawning Portal demo 1.1.0, and `sunken-bell-v1.0.1` is The Sunken Bell 1.0.1.
