ARG VELERO_VERSION

FROM ioanniss/restic:latest AS restic

ARG VELERO_VERSION

FROM velero/velero:${VELERO_VERSION}

COPY --from=restic /usr/bin/restic /usr/bin/restic
