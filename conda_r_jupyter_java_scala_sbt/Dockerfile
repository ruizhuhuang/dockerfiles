# Use the official image as a parent image.
FROM centos:7.6.1810

# Set the working directory in docker.
WORKDIR /

# Copy the file from your host to your current location.
COPY miniconda_and_r_jupyter.sh .

# Run the command inside your image filesystem.
RUN bash miniconda_and_r_jupyter.sh

# Inform Docker that the container is listening on the specified port at runtime.
#EXPOSE 8080

# Run the specified command within the container.
#CMD [ "npm", "start" ]

# Copy the rest of your app's source code from your host to your image filesystem.
#COPY . .
