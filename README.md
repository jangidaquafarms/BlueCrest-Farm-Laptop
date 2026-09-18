# BlueCrest Farm — Laptop App

Production baseline: **V1.53 — All Pond Types Closure**

This repository is for the laptop version of the BlueCrest Farm Management App.

- Production version: V1.53
- Pond closure: any pond type closes after Full/Final Harvest
- Crop closure: closes when all ponds in the active Year + Crop are closed
- Laptop-only pond/crop reactivation with mandatory reason
- Purchase, Inventory and Finance remain available after Crop Close

## Save files to GitHub

Editing a file only saves it on this computer. GitHub updates after a commit and push.

**Option 1 — one command (recommended)**

```bash
./sync-to-github.sh "Short description of the change"
```

That stages every changed file, commits, and pushes the current branch.

**Option 2 — in Cursor**

1. Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`)
2. Run **Tasks: Run Task**
3. Choose **Sync to GitHub**
4. Type a short commit message

**Option 3 — Git commands**

```bash
git add -A
git commit -m "Short description of the change"
git push
```

Saving in the editor is not the same as pushing. Run one of the options above after you finish a change.
