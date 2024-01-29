<h2><p align="center">Install Docker Engine on RedhatOS</p></h2>

![docker](https://miro.medium.com/v2/resize:fit:1200/0*oNLU1oeTiPZvj7YV.jpg)

### Set up the repository
Install the yum-utils package (which provides the yum-config-manager utility) and set up the repository.

```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```
### Install Docker Engine
1. Install Docker Engine, containerd, and Docker Compose:

```
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
2. Start Docker.

```
sudo service docker start
```
or
```
sudo systemctl start docker
```
check docker status

```
sudo service docker status
``` 
enabled docker

```
sudo systemctl enable docker
```
3. Verify that the Docker Engine installation is successful by running the `hello-world` image.

```
sudo docker run hello-world
```
### Reference

- [x] [Docker doc](https://docs.docker.com/engine/install/centos/)
