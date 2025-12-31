FROM nginx:alpine

# Copy the flashcard app to nginx html directory
COPY flashcards.html /usr/share/nginx/html/index.html

# Fix file permissions so nginx can read it
RUN chmod 644 /usr/share/nginx/html/index.html

# Expose port 80 (we'll map it to 82 in docker-compose)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
