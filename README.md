# Dr-42's LFS

My attempt at creating a Linux From Scratch system.

[LFS Book](http://www.linuxfromscratch.org/lfs/view/stable/)

## How to use

```sh
git clone https://github.com/Dr-42/Dr42-LFS.git
cd Dr42-LFS
podman build -t lfs-build-env .
podman run -it lfs-build-env /bin/bash
```
