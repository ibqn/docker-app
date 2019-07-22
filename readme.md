## build an image
```shell
docker build --tag=friendly_hello .
```
## run the app
```shell
docker run -p 8000:80 friendly_hello
```
## upload an image to docker hub
```shell
docker login
```
```shell
docker tag friendly_hello ibqn/frientdly_hello
```
push the newly created image
```shell
docker push ibqn/friendly_hello
``` 

## run services as stack
initialize a docker smarm by running
```shell
docker swarm init
```
from now on you can run a load balanced services, which are named stack
```shell
docker stack deploy -c docker-compose.yml friendlylab
```
## take down app and the swarm
```shell
docker stack rm friendlylab
```
take down the swarm
```shell
docker swarm leave --force
```
