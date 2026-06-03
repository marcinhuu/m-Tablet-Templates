# m-Tablet-Template

Minimal custom app example for `m-Tablet`.

## What this template includes
- App registration with the tablet (Lua client)
- Basic app metadata (`id`, `name`, `icon`, `color`, `category`)
- Per-app access control (`enabled`, `allowed`)
- Embedded NUI page with only:
  - title
  - background

## Files
- `fxmanifest.lua`
- `client/main.lua`
- `html/index.html`
- `html/style.css`
- `html/app.js`

## Quick setup
1. Copy this folder and rename it (example: `my-custom-app`).
2. Update `APP_ID`, `name`, and colors in `client/main.lua`.
3. If the app should be job-restricted, change `allowed = { 'all' }` to something like `allowed = { 'police', 'lsppd' }`.
4. Edit title text in `html/index.html`.
5. Edit background in `html/style.css`.
6. Add to your server cfg:
   - `ensure m-Tablet`
   - `ensure my-custom-app`

## Notes
- If your tablet resource name is not `m-Tablet`, change `TABLET_RESOURCE` in `client/main.lua`.
- This is intentionally simple so clients can start fast and build from it.
