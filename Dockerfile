# Use the minimal Alpine base image
FROM alpine:latest

# Set the working directory to /app
WORKDIR /app

# Copy the index.html file to the working directory
COPY . .

RUN apk add --no-cache python3

# Expose port 80 for web traffic
EXPOSE 80

# Run a simple HTTP server to serve the index.html file
CMD ["python3","-m","http.server","80"]
