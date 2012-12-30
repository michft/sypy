#!/bin/sh

# nices up prompts on EC2, makes user ubuntu yellow and root red.
# ~201211?? added git_ps1.
# ~20121231 reworked to .bash_aliases


# ${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]  \
# :\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\$

echo -n "# assumes a colour capable prompt and " > /home/ubuntu/.bash_aliases
echo "colour on. Included from .basrrc." >> /home/ubuntu/.bash_aliases
echo ''  >> /home/ubuntu/.bash_aliases
echo -n 'PS1='\''${debian_chroot:+($debian_chroot)' >> /home/ubuntu/.bash_aliases
echo -n '}\\[\\033[01;33m\\]\\u@\\h\\[\\033[00m\\]' >> /home/ubuntu/.bash_aliases
echo -n ':\\[\\033[01;34m\\]\\w\\[\\033[00m\\]' >> /home/ubuntu/.bash_aliases
echo '$(__git_ps1 " (%s)")\$ '\' >> /home/ubuntu/.bash_aliases

chown ubuntu:ubuntu /home/ubuntu/.bash_aliases
chmod 700 /home/ubuntu/.bash_aliases

# ${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\]  \
# \w\[\033[00m\]$(__git_ps1 " (%s)")\$

echo -n "# assumes a colour capable prompt and " > /root/.bash_aliases
echo "colour on. Included from .basrrc." >> /root/.bash_aliases
echo ''  >> /root/.bash_aliases
echo -n 'PS1='\''${debian_chroot:+($debian_chroot)' >> /root/.bash_aliases
echo -n '}\\[\\033[01;31m\\]\\h\\[\\033[01;34m\\]' >> /root/.bash_aliases
echo -n ' \\w\\[\\033[00m\\]' >> /root/.bash_aliases
echo '$(__git_ps1 " (%s)")\$ '\' >> /root/.bash_aliases

chmod 700 /root/.bash_aliases

exit 0
