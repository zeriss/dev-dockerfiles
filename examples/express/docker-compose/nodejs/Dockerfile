FROM alexisno/nodejs-dev

# Uncomment the following lines and enter the host user UID if necessary
USER root
RUN change-dev-id 1002
USER dev

# Install express generator
RUN npm install -g express-generator

# Copy useful resources for the default command
COPY /home/dev/resources/.foreverignore /home/dev/resources/.foreverignore

# Create a command to generate a sample app
# and the default command to start the container
USER root
COPY /usr/bin/generate-app /usr/bin/generate-app
COPY /usr/bin/start-service /usr/bin/start-service
RUN chmod +x /usr/bin/generate-app /usr/bin/start-service
USER dev

# Expose express generator default port
EXPOSE 3000

# Start express app
CMD ["start-service"]