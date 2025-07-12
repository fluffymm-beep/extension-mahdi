
# ---- فقط یک مرحله ساده ----
FROM node:20-alpine

WORKDIR /usr/src/app

# کل پروژه را کپی می‌کنیم
COPY ./teta-backend .

# تمام وابستگی‌ها (شامل devDependencies برای prisma cli) را نصب می‌کنیم
RUN npm install

# پروژه را بیلد می‌کنیم
RUN npm run build

# اسکریپت entrypoint را کپی و اجرایی می‌کنیم
COPY ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["./entrypoint.sh"]
CMD ["node", "dist/src/main"]
