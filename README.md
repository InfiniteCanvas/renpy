[![build](https://github.com/InfiniteCanvas/renpy-docker-image/actions/workflows/build-and-push.yml/badge.svg)](https://github.com/InfiniteCanvas/renpy-docker-image/actions/workflows/build-and-push.yml)

This [image](https://hub.docker.com/r/infinitecanvas/renpy) uses **[renkit](https://github.com/kobaltcore/renkit)**. <br>
Also added **[megatools](https://megatools.megous.com/)** and **[go-pd](https://github.com/ManuelReschke/go-pd)**. <br>
Megatools version: [1.11.0.20220519](https://megatools.megous.com/builds/builds/megatools-1.11.0.20220519-linux-x86_64.tar.gz) <br>
Go-PD version: [1.1.0](https://github.com/ManuelReschke/go-pd/raw/main/bin/linux/go-pd) <br>
The binaries have been put in ``/usr/local/bin`` and can be called like this:


```bash
renconstruct build -i "your/project/path" -o "output/path" -c "config/file.toml"
```


The image has these ENV

| Variable | Description |
| :-- | :-- |
|RENKIT_VERSION|Version of Renkit, e.g. "1.2.1"|
|RENPY_VERSION|Version of RenPy in the image, e.g. "7.4.11"|
