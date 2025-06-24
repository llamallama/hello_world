FROM node:24
WORKDIR /app
RUN useradd -b /app nodejs && chown -R nodejs:nodejs /app
USER nodejs
COPY package.json /app
RUN npm install
COPY . /app
CMD ["node","app.js"]
