#! /bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y podman runit runit-systemd

export RUN=/etc/service/podman-postgres/run

sudo mkdir -p ${RUN%/*}

cat | sudo tee -a $RUN << THATSALL
#! /bin/bash
exec podman run --rm -e POSTGRES_PASSWORD=mysecretpassword --network host docker.io/library/postgres postgres
THATSALL

sudo chmod +x $RUN

