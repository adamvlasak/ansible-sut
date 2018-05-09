# ansible-sut

Simple docker container running SSH and systemd for ansible role testing purposes.

## build image

Please see Dockerfile.

```
docker build -t ansible-sut:latest .
```

## define hosts

```
[all]
ansible-sut ansible_host=<some IP> ansible_password=docker
```

## run ansible-sut container

Please see docker-compose.yml.

```
docker-compose run -d
```

## provision

```
ansible all -i hosts -m setup
```
