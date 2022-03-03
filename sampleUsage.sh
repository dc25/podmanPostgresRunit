$ sudo podman ps
CONTAINER ID  IMAGE   COMMAND  CREATED  STATUS  PORTS   NAMES
$
$ sudo sv up podman-postgres
$
$ sudo podman ps
CONTAINER ID  IMAGE                              COMMAND   CREATED        STATUS            PORTS   NAMES
113482dbad13  docker.io/library/postgres:latest  postgres  6 seconds ago  Up 7 seconds ago          jovial_mestorf
$
$ sudo sv status podman-postgres
run: podman-postgres: (pid 2152) 18s
$
$ sudo sv down podman-postgres
$
$ sudo sv status podman-postgres
down: podman-postgres: 3s, normally up
$
$ sudo podman ps
CONTAINER ID  IMAGE   COMMAND  CREATED  STATUS  PORTS   NAMES
$
$ sudo sv up podman-postgres
$
$ sudo sv status podman-postgres
run: podman-postgres: (pid 2356) 8s
$
$ sudo podman ps
CONTAINER ID  IMAGE                              COMMAND   CREATED         STATUS             PORTS   NAMES
1279b9f85bc7  docker.io/library/postgres:latest  postgres  11 seconds ago  Up 11 seconds ago          nostalgic_hawking
$
$
