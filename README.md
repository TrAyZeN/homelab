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
- [ ] Firewall with nftables
  sudo apt install nftables
  sudo systemctl enable nftables.service
  sudo systemctl start nftables.service
  sudo update-alternatives --set iptables /usr/sbin/iptables-nft
  => Write nftable configuration now
- [ ] Add resource limit
- [ ] Test script

## TODO security
- [x] Pin image versions
  - [ ] Pin archivebox image version
- [ ] Pin image digest
- [ ] Security scan images
- [ ] Only use trusted images
- [ ] Use image hashes
- [ ] rootless containers

## Services
- flame
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
- `python3-apt`

```sh
ansible-playbook -e "ansible_port=<ssh_port>" -i inventories/prod.yml provision.yml -K
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
ansible-playbook --private-key=./.vagrant/machines/host1/virtualbox/private_key -u vagrant -i inventories/test.yml provision.yml
```
