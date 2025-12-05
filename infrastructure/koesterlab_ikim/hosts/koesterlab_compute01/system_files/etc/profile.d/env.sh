if getent group koesterlab | grep -qw "$USER"
then
    export TMPDIR=/mnt/tmp
fi
