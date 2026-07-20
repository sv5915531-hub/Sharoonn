FROM node:18-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your bot code
COPY . .

# Hugging Face requires your container to listen on port 7860
EXPOSE 7860
ENV PORT=7860

# Start your Aternos bot script
CMD ["node", "index.js"]

