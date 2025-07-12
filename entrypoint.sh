#!/bin/sh

echo "==> [Entrypoint] Running Prisma Commands..."

# ۱. کلاینت را generate می‌کنیم (همیشه کار خوبی است)
npx prisma generate

# ۲. تمام migration های موجود را به دیتابیس اعمال می‌کنیم
npx prisma migrate deploy

echo "==> [Entrypoint] Starting NestJS application..."
exec "$@"
