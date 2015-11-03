# Introduction

Dockerfile to build an Oracle JDK 8 headless container image with RHEL.

# Installation

Pull the image from the docker index. This is the recommended method of installation as it is easier to update image. These builds are performed by the **Docker Trusted Build** service.

```bash
docker pull jlgrock/centOS-oraclejdk:$VERSION
```

Alternately you can build the image locally.

```bash
docker build --tag="RHEL-oraclejdk" .
```

# Configuration

No configuration is available. You must create you own docker image on base of this container.


