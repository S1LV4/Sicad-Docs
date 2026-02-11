# SICAD Docs (Mintlify) - Multi-stage Dockerfile

# 1) Build stage
FROM node:20-alpine AS builder
WORKDIR /app

# Install Mintlify CLI globally
RUN npm install -g mintlify

# Copy documentation files
COPY docs.json ./
COPY *.mdx ./
COPY essentials ./essentials
COPY guias ./guias
COPY images ./images
COPY favicon.svg ./
COPY logo ./logo

# Build static site
RUN mintlify build

# 2) Nginx serve stage
FROM nginx:1.27-alpine AS runner
WORKDIR /usr/share/nginx/html

# Remove default content and copy build
RUN rm -rf ./*
COPY --from=builder /app/_site ./

# Provide a basic nginx config suitable for static docs
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000 80
CMD ["nginx", "-g", "daemon off;"]
