# WinDM-AI Modules

Game modules for the [WinDM-AI](https://github.com/vtmartens/WinDM-AI) engine. The engine
repository contains no campaign data; modules are self-contained `.zip` archives in the
format it loads.

| Module | Id | Engine | File |
|---|---|---|---|
| The Yawning Portal Demo 1.0.1 | `yawning_portal_demo` | 1.0.0 | [`yawning-portal/demo.zip`](yawning-portal/demo.zip) |

## Install

Copy the archive to `%LOCALAPPDATA%\WinDM-AI\Modules\demo.zip`, then start WinDM-AI and
choose **Load Demo Module**. Alternatively use **Open Module…** and pick the zip from
anywhere.

## Module format

A module is a zip containing `manifest.json` and a `data/` tree: classes, backgrounds,
maps, NPCs, conversations, quests, items, monsters, encounters, factions, conditions,
crafting recipes, rune trials, scenes and tutorials. Module id, name and version live in
the manifest.

Content lives here; rules do not. Combat, shops, abilities, levelling, class skills and
the profession/reputation rules are implemented in the engine.

Optional keys the engine understands — `respawn_map`, `default_class`,
`default_background`, `default_difficulty` in the manifest, `rest` on a map, and `faction`
on the black market — are documented in the engine README.

## Changes

### 1.0.1

- Doors connect the Trade Road → Broken Waystation → Underroad → Sealed Sanctum →
  Runeheart Gate, so the Rune Trials are reachable in-world.
- Nessa (Underroad) and Mirt's Factor (Market) are placed as smuggler contacts for the
  black market.
- Archive entries use forward-slash paths so non-Windows tools can read the zip.

### 1.0.0

- First module: the complete Yawning Portal demo campaign.

## Versioning

Module versions follow `manifest.json`. Tags in this repository match: `v1.0.1` is the
Yawning Portal demo 1.0.1.
