# Base image with Node 20 + Chrome pre-installed for Playwright
FROM apify/actor-node-playwright-chrome:20

# Copy all files from the current directory to the container
COPY . ./

# Install production dependencies (skip postinstall — base image has Chrome)
RUN npm install --quiet --omit=dev --no-optional --ignore-scripts

# Start the HTTP server (listens on $PORT, default 3000)
CMD ["npm", "start"]
