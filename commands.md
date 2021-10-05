# Build

```
docker build -t bass .
```

# version 1 (Exits)

```
docker run --name bass -d -e POSTGRES_PASSWORD=bass -p 5432:5432 bass
docker exec -it bass bash
```

# version 2
```
docker run --name bass -it -e POSTGRES_PASSWORD=bass -p 5432:5432 bass
docker exec -it bass bash
```

# version 3 (Remains)

```
docker run --name bass -d --rm -e POSTGRES_PASSWORD=bass -p 5432:5432 bass
docker exec -it bass bash
```