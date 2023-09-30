# Create a Jekyll container from a Ruby Alpine image

# At a minimum, use Ruby 3.0 or later

FROM ruby:3.2-alpine3.18

# Update apk and install openssh
RUN apk update

# Add Jekyll dependencies to Alpine container
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and install Jekyll and gems
RUN gem update bundler && gem install bundler jekyll

RUN apk add openssh