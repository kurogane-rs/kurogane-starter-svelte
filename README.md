# Kurogane: Svelte starter

A Svelte 5 project scaffolded with Vite for Kurogane.

## Supported Languages

- `typescript`: Svelte with TypeScript (`<script lang="ts">`), type checking via `svelte-check`
- `javascript`: Svelte with plain JavaScript, no type checking

## Usage with Kurogane CLI

```sh
kurogane new svelte
```

Select a language when prompted.

## Non-interactive usage

```sh
cargo generate kurogane-rs/kurogane-starter-svelte --name my-app --define language=typescript
```

## What's included

- Svelte 5 entry point
- Vite with `@sveltejs/vite-plugin-svelte`
- `vite.config.ts` configured to build into `frontend/dist`
- `svelte.config.js` with Vite's preprocessor which `svelte-check` reads
- Rust binary using the Kurogane runtime
- `kurogane.toml` packaging configuration

## Development

```sh
npm --prefix frontend install
npm --prefix frontend run dev  # Start Vite dev server (port 5173)
kurogane dev                   # Launch the Kurogane desktop app
```

## Bundling

```sh
npm --prefix frontend run build  # Build frontend (includes svelte-check for TypeScript)
kurogane bundle
```

## TypeScript vs JavaScript

The TypeScript variant includes `tsconfig.json`, `svelte-shim.d.ts` and uses `<script lang="ts">` in Svelte components. The `build` script runs `svelte-check` before Vite. The JavaScript variant uses plain `<script>` blocks with no type checking.
