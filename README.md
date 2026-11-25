# DVinyl on Railway

[DVinyl](https://github.com/Kyonew/DVinyl) (MIT): a self-hosted collection manager for vinyl, CDs, books, films, games and more, with barcode scan, roles and public share pages. Deploy it on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/V7MlUx)

## What this template runs
- **dvinyl**: `ghcr.io/onepush-dev/dvinyl:4.0.0`, the official `ghcr.io/kyonew/dvinyl:4.0.0` image (application unmodified). Listens on 8080. One volume at `/app/data` holds the SQLite database and uploaded images (`/app/public/uploads` is linked into it).

`PASSJWT`, `SESSION_SECRET` and `SETUP_TOKEN` are generated per deploy.

## After deploy
Open the Railway URL, and on the first-run setup page create your admin account with the `SETUP_TOKEN` service variable, so nobody else can claim a fresh instance.

Not affiliated with DVinyl.
