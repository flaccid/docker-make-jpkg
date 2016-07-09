# docker-make-jpkg

A Docker image that builds a Debian package for Oracle JDK.

## Usage

### Build

    $ docker build -t make-jpkg .

### Run

    $ docker run -it --name make-jpkg make-jpkg

Then you can copy the built package back to the host and remove the container:

    $ docker cp make-jpkg:/tmp/oracle-java8-jdk_8u91_amd64.deb ./
    $ docker rm make-jpkg

#### Runtime Environment Variables

There should be a reasonable amount of flexibility using the available variables. If not please raise an issue so your use case can be covered!

 (TODO)

### Tag and Push

    $ docker tag -f make-jpkg flaccid/make-jpkg
    $ docker push flaccid/make-jpkg

License and Authors
-------------------
- Author: Chris Fordham (<chris@fordham-nagy.id.au>)

```text
Copyright 2016, Chris Fordham

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
