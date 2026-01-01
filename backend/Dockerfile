FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy backend source code
COPY . .

# Expose backend port (adjust if different)
EXPOSE 8080

# Start the server
CMD ["node", "server.js"]
