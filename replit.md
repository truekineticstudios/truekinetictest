# NEXUS Store

A modern e-commerce web application for premium tech and digital lifestyle products.

## Architecture

This is a **pnpm monorepo** with the following structure:

- **Root (`/`)** — React + Vite frontend (port 5000 in dev)
- **`api-server/`** — Node.js + Express backend API (port 3000 in dev)
- **`packages/api-zod/`** — Shared Zod schemas for API types
- **`packages/api-client-react/`** — TanStack Query hooks for the API
- **`packages/db/`** — Database package (placeholder, extendable)
- **`lib/api-spec/`** — OpenAPI YAML specification

## Tech Stack

- **Frontend**: React 19, TypeScript, Vite, Tailwind CSS v4, Shadcn UI, Wouter, TanStack Query, Framer Motion
- **Backend**: Node.js, Express 5, TypeScript, tsx
- **Monorepo**: pnpm workspaces with catalog

## Development

The app is started with a single workflow (`bash start.sh`) that launches:
1. The Express API server on port 3000 (background process)
2. The Vite dev server on port 5000 (foreground, webview)

Vite proxies `/api/*` requests to `localhost:3000`.

### Environment Variables

- `PORT` — Frontend port (set to 5000 in `start.sh`)
- `BASE_PATH` — Vite base path (set to `/` in `start.sh`)

## Key Files

- `vite.config.ts` — Vite configuration (proxy, host, plugins)
- `start.sh` — Combined startup script
- `pnpm-workspace.yaml` — Workspace and catalog configuration
- `tsconfig.base.json` — Shared TypeScript config base
- `src/App.tsx` — React app entry with routing
- `api-server/src/routes/index.ts` — API route handlers (products, health)

## Pages

- `/` — Home with hero and product grid
- `/products/:id` — Product detail page
- `/cart` — Shopping cart
- `/contact` — Contact page

## API Endpoints

- `GET /api/healthz` — Health check
- `GET /api/products` — List all products
- `GET /api/products/:id` — Get product by ID
