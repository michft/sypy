#!/bin/sh

# nices up prompts on EC2, makes user yellow and root red.

sed -i -e "s/#force_co/force_co/" /home/ubuntu/.bashrc
sed -i -e "s/033\[01\;32m/033\[01\;33m/" /home/ubuntu/.bashrc
sed -i -e "s/#force_co/force_co/" /root/.bashrc
sed -i -e "s/033\[01\;32m/033\[01\;31m/" /root/.bashrc

exit 0
