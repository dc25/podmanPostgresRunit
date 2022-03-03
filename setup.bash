#! /bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y podman runit runit-systemd

export RUN=/etc/service/podman-postgres/run

mkdir -p ${RUN%/*}

sudo cat > $RUN << thatsall
#! /bin/bash
exec podman run --rm -e POSTGRES_PASSWORD=mysecretpassword --network host docker.io/library/postgres postgres
thatsall

sudo chmod +x $RUN

