# WinDM-AI Modules

Game modules for the [WinDM-AI](https://github.com/vtmartens/WinDM-AI) engine. The engine
repository contains no campaign data; modules are self-contained `.zip` archives in the
format it loads.

| Module | Id | Engine | File |
|---|---|---|---|
| The Yawning Portal Demo 1.1.0 | `yawning_portal_demo` | 1.0.0 | [`yawning-portal/demo.zip`](yawning-portal/demo.zip) |

## Install

Copy the archive to `%LOCALAPPDATA%\WinDM-AI\Modules\demo.zip`, then start WinDM-AI and
choose **Load Demo Module**. Alternatively use **Open Module…** and pick the zip from
anywhere.

## Building a module

The Yawning Portal source lives in `yawning-portal/src/` (manifest plus the `data/`
tree). Rebuild the archive with:

```powershell
.\yawning-portal\build.ps1
```

The script writes `yawning-portal/demo.zip` with forward-slash archive paths, so the
module is readable by non-Windows tools. It requires Windows PowerShell 5.1 or later and
does not need the engine repository.

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

### 1.1.0

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

### 1.0.0

- First module: the complete Yawning Portal demo campaign.

## Versioning

Module versions follow `manifest.json`. Tags in this repository match: `v1.1.0` is the
Yawning Portal demo 1.1.0.
