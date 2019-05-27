FROM node:12.3-alpine as frontend

WORKDIR /usr/src/app
ADD src ./
RUN npm install
RUN npm run build


# server
FROM nginx:1.12-alpine
COPY --from=frontend /usr/src/app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]