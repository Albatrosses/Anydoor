# Anydoor

PuJunhao's workspace

# Usage

1. Pull remote docker image

```
docker pull pujunhao/anydoor
```

2. Run local docker container

```
docker run -it -v ~/Workspace/Anydoor/volume:/root/workspace pujunhao/anydoor
```

3. Update local docker image

```
docker build -t pujunhao/anydoor .
```

4. Publish local docker image
```
docker push pujunhao/anydoor
```