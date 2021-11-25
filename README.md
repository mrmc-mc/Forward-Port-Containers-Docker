# Forward-Port-Containers-Docker
Forward Port between Docker Containers

---

### 1. install `socat` on your container:

  ``` apt update && apt install socat ```
  
### 2. Forward local port to another host:port:

``` socat TCP-LISTEN:80,fork TCP:<Target Host>:8080 & ```

Example:
``` socat TCP-LISTEN:80,fork TCP:mycon:8080 & ```
