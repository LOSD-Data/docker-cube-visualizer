# docker-cube-visualizer
Docker image for CubeVizualizer on Alpine Linux.

### Usage
Update the configuration file ```config.js``` and provide JSON-QB API endpoint URL - ```jsonqbAPIuri```. See more at: https://github.com/LOSD-Data/docker-json-qb-api

Build an image from a Dockerfile:
```docker build -t cube-visualizer .```

Run Docker container:
```docker run -p 8000:8000 cube-visualizer```

### Requirements
 - Docker 
 - JSON-QB API endpoint