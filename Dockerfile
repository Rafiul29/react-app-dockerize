FROM node:14-alpine AS development
ENV NODE_ENV development
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json ./

RUN npm install --silent
# Copy app files
COPY . .
# Expose port
EXPOSE 3000
# Start the app
CMD ["npm", "start"]


# sudo chmod 666 /var/run/docker.sock
# sudo chown $USER /var/run/docker.sock