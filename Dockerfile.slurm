FROM registry.fedoraproject.org/fedora:40

RUN dnf install --assumeyes slurm slurm-slurmd slurm-slurmctld && \
    systemctl enable munge slurmctld slurmd && \
    dnf clean all

RUN /usr/sbin/mungekey && \
    chown munge:munge /etc/munge/munge.key

ENTRYPOINT /usr/sbin/init
