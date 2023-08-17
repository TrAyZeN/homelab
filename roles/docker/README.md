# docker
Install and configure docker and [Docker Compose V2](https://github.com/docker/compose).

## Requirements
A debian based distribution.

## Role Variables
| Name               | Type   | Description                                                        |
|--------------------|--------|--------------------------------------------------------------------|
| `docker_user`         | string    | Who to add to docker group. (default: `ansible_user_id`) |
| `docker_repo_urls` | string | Docker repository url.   |

## Dependencies
None.

## Example Playbook
```yaml
- hosts: server
  roles:
    - docker
```

## License
TODO
