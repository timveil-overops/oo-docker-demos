In `Dockerfile`, replace `<YOUR_SECRET_KEY>` with your secret key

build image
```
docker build --no-cache -t saas-oneliner .
```

run the image
```
docker run saas-oneliner
```