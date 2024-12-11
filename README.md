# Open vSwitch playground

## Start all VMs

```
make vagrant-up
```

## Ping

Make sure h1 can access to h2

```
vagrant ssh h1
ping -c 1 10.10.10.4
```

## Clean up

```
make vagrant-down
```

## Ref

- https://docker-k8s-lab.readthedocs.io/en/latest/docker/docker-ovs.html
