# Application Docker file Configuration
# Visit https://docs.docker.com/engine/reference/builder/
# Using multi stage build



# Build the image as production
# So we can minimize the size
FROM node:18-alpine

WORKDIR /
ENV PORT=4000
ENV NODE_ENV=Production
RUN npm install
EXPOSE ${PORT}

CMD ["npm", "run", "dev"]