FROM node:18-alpine

# Create app directory
WORKDIR /home/node/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy app source
COPY . .

# Create non-root user and set permissions
RUN addgroup -g 1001 appgroup && adduser -D -u 1001 -G appgroup appuser \
    && chown -R appuser:appgroup /home/node/app

USER appuser

EXPOSE 3000
CMD ["node", "server.js"]

