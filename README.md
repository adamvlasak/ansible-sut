# ansible-sut

Simple docker container running SSH and systemd for ansible role testing purposes. You need working ansible.

## define hosts

```
$ cat hosts
[all]
ansible-sut ansible_host=<some IP> ansible_password=docker
```

## run ansible-sut container

Please see docker-compose.yml.

```
$ docker-compose up -d --build
```

## provision ansible-sut container

```
$ ansible all -i hosts -m setup
```
