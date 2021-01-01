# bootstrap server

## Notes

- To generate a username and password combo for the Docker Registry, use this command and then update the 1Password htpasswd field:

  ```bash
  htpasswd -n -B $USERNAME | sed -e s/\\$/\\$\\$/g
  ```
