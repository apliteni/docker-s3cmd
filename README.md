# s3cmd
Lightweight wrapper around s3cmd

## Basic usage

```sh
docker run --rm -v $(pwd):/s3 -v $HOME/.s3:/root apliteni/s3cmd sync . s3://bucket-name
```
