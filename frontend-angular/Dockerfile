FROM node:25 AS build
WORKDIR /src
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Normalize build output to a single known folder so we reliably copy static files
RUN /bin/sh -lc '\
	if [ -d dist/frontend-angular/browser ]; then \
		mkdir -p /src/dist_out && cp -r dist/frontend-angular/browser/* /src/dist_out/; \
	else \
		mkdir -p /src/dist_out && cp -r dist/frontend-angular/* /src/dist_out/; \
	fi'

FROM nginx:1.27-alpine
# Copy normalized output into nginx html root
COPY --from=build /src/dist_out /usr/share/nginx/html
# Use our custom nginx config to enable SPA fallback (serve index.html)
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
