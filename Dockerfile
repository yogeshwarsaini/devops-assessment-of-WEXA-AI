# Simple single-stage Dockerfile (testing ke liye)
FROM node:18-alpine

WORKDIR /app

# Package files copy
COPY package.json package-lock.json* ./

# Dependencies install
RUN npm install

# All files copy
COPY . .

# Build the app
RUN npm run build

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]