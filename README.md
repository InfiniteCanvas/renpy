[![build-and-push](https://github.com/InfiniteCanvas/renpy/actions/workflows/build-and-push.yml/badge.svg?branch=main)](https://github.com/InfiniteCanvas/renpy/actions/workflows/build-and-push.yml)

This image uses **[renkit](https://github.com/kobaltcore/renkit)**. <br>
The binaries have been put in ``/usr/local/bin`` and can be called like this:


```bash
renconstruct build -i "your/project/path" -o "output/path" -c "config/file.toml" -r ${RENPY_DIR}
```


The image has these ENV

| Variable | Description |
| :-- | :-- |
|RENPY_DIR|"/renpy"|
|RENKIT_DIR|"/usr/local/bin"|
|RENKIT_VERSION|Version of Renkit, e.g. "1.2.1"|
|RENPY_VERSION|Version of RenPy in the image, e.g. "7.4.11"|