# Use an official Jekyll runtime as a parent image
FROM jekyll/jekyll:latest

# Set the working directory to your Jekyll site's directory
WORKDIR /com.docker.devenvironments.code 

# Copy the site's source code into the container
COPY . .

# Build the site using Jekyll
RUN bundle install
RUN jekyll build

# Expose the Jekyll site's default port (usually 4000)
EXPOSE 4000

# Command to start the Jekyll server
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
