# Use a lightweight Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy all files from current folder to the container
COPY . .

# Install dependencies
RUN npm install

# Expose port 5000 to the host
EXPOSE 5000

# Run the app
CMD ["node", "index.js"]
