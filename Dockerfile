# Build stage
FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Production stage

#FROM nginx:alpine

#FROM nginx:1.25.5
#RUN apt-get update && apt-get upgrade -y && apt-get clean


FROM nginx:1.27.4-alpine
RUN apk update && \
    apk upgrade libxml2 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.21/main && \
    apk add --no-cache \
        libexpat=2.7.0-r0 \
        libxslt=1.1.43-r3 \
        xz-libs=5.8.1-r0
  
COPY --from=build /app/dist /usr/share/nginx/html
# Add nginx configuration if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
