#!/bin/sh
# Railway wrapper for DVinyl: keep uploaded covers on the same /app/data volume as the SQLite database.
mkdir -p /app/data/uploads
if [ ! -L /app/public/uploads ]; then
  [ -d /app/public/uploads ] && cp -a /app/public/uploads/. /app/data/uploads/ 2>/dev/null
  rm -rf /app/public/uploads
  ln -s /app/data/uploads /app/public/uploads
fi
exec node --import tsx app.ts
