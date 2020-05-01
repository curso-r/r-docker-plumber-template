# Template para docker + plumber + tidyverse

### Para colocar no dockerhub.io:

1) buildar a imagem

```{bash}
sudo docker build -t plumber-teste .
```

2) taguear a imagem. OBS: `dockerhubusername/plumber` será o nome do repositório no dockerhub.io.

```{bash}
sudo docker tag plumber-teste dockerhubusername/plumber:latest
```

3) fazer login no dockerhub.io

```{bash}
sudo docker login --username=dockerhubusername
```

4) subir a imagem pro dockerhub.io

```{bash}
sudo docker push dockerhubusername/plumber
```
