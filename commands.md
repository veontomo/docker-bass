# version 1

``` docker build -t bass .
docker run --name bass -d -e POSTGRES_PASSWORD=bass -p 5432:5432 bass
docker exec -it bass bash
```

# version 2
``` docker build -t bass .
docker run --name bass -it -e POSTGRES_PASSWORD=bass -p 5432:5432 bass
docker exec -it bass bash
```