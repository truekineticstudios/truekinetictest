# NEXUS Store

A modern e-commerce storefront built with React, Vite, and TypeScript.

## Deploy to GitHub Pages

1. Push this repo to GitHub
2. Go to **Settings → Pages → Source** and choose **GitHub Actions**
3. Push to `main` — the workflow in `.github/workflows/deploy.yml` builds and deploys automatically
4. Your site will be live at `https://<your-username>.github.io/<repo-name>/`

> The base path is set automatically from the repo name. No manual config needed.

## Images

All product images are Unsplash permalinks — swap them in `public/products.json`:

| Product | Unsplash ID |
|---|---|
| Headphones | `photo-1505740420928-5e560c06d30e` |
| Keyboard | `photo-1587829741301-dc798b83add3` |
| Monitor | `photo-1527443224154-c4a3942d3acf` |
| Security Camera | `photo-1590065707046-4837c6cce7b1` |
| Office Chair | `photo-1555041469-a586c61ea9bc` |
| Portable SSD | `photo-1597852074816-d933c7d2b988` |
| Wireless Charger | `photo-1585338107529-13afc5f02586` |
| Smart Watch | `photo-1546868871-7041f2a55e12` |

Local images (replace files in `public/images/`):
- `hero-bg.png` — hero section background
- `logo.png` — navbar & footer logo

## Dev

```bash
pnpm install
bash start.sh   # frontend :5000 + API :3000
```

## Edit Products

Edit `public/products.json` to change names, prices, descriptions, stock status, and image URLs. No rebuild needed for the static GitHub Pages version.
