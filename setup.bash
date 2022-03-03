#! /bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y podman runit runit-systemd

mkdir -p /etc/service/podman-postgres

cat > /etc/service/podman-postgres/run << thatsall
#! /bin/bash
exec podman run --rm -e POSTGRES_PASSWORD=mysecretpassword --network host docker.io/library/postgres postgres
thatsall

