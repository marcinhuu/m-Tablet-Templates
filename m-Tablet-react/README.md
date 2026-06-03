# m-Tablet-React-Template

Minimal React custom app example for `m-Tablet`.

## What this template includes
- App registration with the tablet through the Lua client
- Basic app metadata (`id`, `name`, `icon`, `color`, `category`)
- Per-app access control (`enabled`, `allowed`)
- React NUI page with a clean example UI

## Files
- `fxmanifest.lua`
- `client/main.lua`
- `index.html`
- `vite.config.js`
- `package.json`
- `src/App.jsx`
- `src/main.jsx`
- `src/style.css`

## Quick setup
1. Copy this folder and rename it, for example `my-custom-react-app`.
2. Update `APP_ID`, `name`, `icon`, `color`, and `category` in `client/main.lua`.
3. Keep `allowed = { 'all' }` for a public app, or change it to something like `allowed = { 'police', 'lsppd' }` for a job-only app.
4. Run `npm install`.
5. Run `npm run build` so the React app is compiled into `html/`.
6. Add to your server cfg:
   - `ensure m-Tablet`
   - `ensure my-custom-react-app`

## Notes
- If your tablet resource name is not `m-Tablet`, change `TABLET_RESOURCE` in `client/main.lua`.
- This template is intentionally small and easy to read so clients can adapt it quickly.
