FROM debian:latest
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2016-06-01

COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install ruby rake
RUN mkdir -p /opt/project/workspace
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec
