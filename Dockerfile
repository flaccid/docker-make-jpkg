FROM debian:jessie

MAINTAINER Chris Fordham <chris@fordham-nagy.id.au>

# download this from Oracle first, see vendor link in:
# https://wiki.debian.org/JavaPackage
#   NOTE: destination filename must match the original convention
#         for make-jpkg to support it
COPY jdk-8u91-linux-x64.tar.gz /tmp/
COPY build-jdk-package.sh /usr/local/bin/

WORKDIR /tmp

CMD ["/usr/local/bin/build-jdk-package.sh"]
