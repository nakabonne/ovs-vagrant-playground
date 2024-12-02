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

- https://medium.com/@paceadrianolavoro/vlans-with-virtualbox-vagrant-and-ovs-switch-routing-7c872720b8e7
