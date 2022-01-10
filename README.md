# full-cycle-docker-go

    Consrui uma imagem a partir do golang alpine. Copiei os arquivos do meu programa go para dentero da imagem. Buildei o programa em go e coloquei dentro da pasta bin/hello (o executável estava lá).
    Para deixar a imagem pequena eu construi outra imagem com o indicativo scratch, copiei o binário do go a partir da imagem criada anteriormente
    e coloquei o entrypoint no executável.

    [link da imagem] (https://hub.docker.com/repository/docker/claudiopsilva/codeeducation)