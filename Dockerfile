# Create a Jekyll container from a Ruby Alpine image

# At a minimum, use Ruby 2.5 or later

FROM ruby:3.2-alpine3.18

# Update apk and install openssh
RUN apk update
RUN apk openssh

# Add Jekyll dependencies to Alpine container
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll
