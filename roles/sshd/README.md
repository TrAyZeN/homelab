# sshd
Configure sshd with security.

## Requirements
None.

## Role Variables
| name               | type   | description                                                        |
|--------------------|--------|--------------------------------------------------------------------|
| `ssh_port`         | int    | Port number that sshd listens on. (default: 22)                    |
| `ssh_allowed_user` | string | User name of the only user allowed to connect.  (default: vagrant) |

> TODO: Change default user

## Dependencies
None.

## Example Playbook
```yaml
- hosts: server
  roles:
    - sshd
```

## License
TODO
