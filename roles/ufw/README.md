# UFW
Install and configure UFW.

It will deny all incoming and outgoing traffic by default except:
- ssh
- outgoing DNS
- outgoing NTP
- outgoing HTTP
- outgoing HTTPS
- outgoing whois
- outgoing DHCP

## Requirements
None.

## Role Variables
| Name               | Type   | Description                                                        |
|--------------------|--------|--------------------------------------------------------------------|
| `ssh_port`         | int    | Port number that sshd listens on. (default: `ansible_port | default(22)`) |

## Dependencies
None.

## Example Playbook
```yaml
- hosts: server
  roles:
    - ufw
```

## License
TODO
