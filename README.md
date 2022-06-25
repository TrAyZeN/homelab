# My Homelab

IaC

For now I use ansible to provision my server and docker-compose for containers.
I would like to use k3s in the future but I am less comfortable with that tool.

## TODO
- [x] Add playbook to launch services
- [ ] security updates
- [ ] watchtower ?
- [ ] setup fail2ban
- [ ] secret management
- [ ] file permissions
- [ ] Add IaC tests
- [ ] wallabag secrets
- [ ] gitea secrets
- [ ] pentesting
- [ ] firewall with nftable

## TODO security
- [ ] Security scan images
- [ ] Only use trusted images
- [ ] Use image hashes
- [ ] rootless containers

## Services
- Heimdall
- kiwix
- nextcloud
- filebrowser
- archivebox
- grafana
- wallabag

## Deployment
### Provisionning requirements
- A user
- A ssh server

```sh
ansible-playbook -e "ansible_port=<ssh_port>" -i ./prod.yml ./provision.yml -K
```

## Development
### Vagrant
#### Start environment
```sh
vagrant up
vagrant ssh
```

#### Provisioning
```sh
ansible-playbook --private-key=./.vagrant/machines/host1/virtualbox/private_key -u vagrant -i ./inventory.yml ./provision.yml
```
