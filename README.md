# m-Tablet Templates

This folder contains the official starter templates for custom `m-Tablet` apps.

## Included templates

### m-Tablet-vanillajs
A minimal Vanilla JS example for developers who want the smallest possible setup.

- Lua client app registration
- Simple embedded NUI page
- Easy to edit HTML, CSS, and JS
- Per-app metadata support, including `enabled` and `allowed`

### m-Tablet-react
A React-based example for developers who prefer a component-based workflow.

- Lua client app registration
- Vite + React setup
- React UI example with a cleaner structure
- Per-app metadata support, including `enabled` and `allowed`

## What the templates show
Both templates demonstrate how to register a custom app with `m-Tablet` and how to set access control per app.

Use:

```lua
allowed = { 'all' }
```

for a public app, or:

```lua
allowed = { 'police', 'lsppd' }
```

for a job-restricted app.

## Repository structure

```text
m-Tablet-Templates/
  README.md
  m-Tablet-vanillajs/
  m-Tablet-react/
```

## Quick start

1. Copy the template you want to use.
2. Rename the folder and update `APP_ID` in `client/main.lua`.
3. Change `name`, `icon`, `color`, `category`, `enabled`, and `allowed` in the app config.
4. Build or edit the NUI frontend.
5. Add both `ensure m-Tablet` and `ensure your-template-resource` to your server config.

## Notes

- If your tablet resource name is not `m-Tablet`, update `TABLET_RESOURCE` in the template client file.
- The Vanilla template is best for quick custom apps.
- The React template is best for more structured UIs and reusable components.
- Keep the templates small and readable so other developers can understand them quickly.
