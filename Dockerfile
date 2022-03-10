FROM ioanniss/restic:latest AS restic

FROM velero/velero:v1.8.0

COPY --from=restic /usr/bin/restic /usr/bin/restic
