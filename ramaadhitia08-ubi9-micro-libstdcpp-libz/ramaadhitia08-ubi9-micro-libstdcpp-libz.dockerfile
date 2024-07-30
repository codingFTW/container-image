FROM registry.access.redhat.com/ubi9/ubi-minimal:9.4-1194 AS nativelibs

# Final stage
FROM registry.access.redhat.com/ubi9/ubi-micro:9.4-13

# Copy libstdc++ and libz from ubi minimal
COPY --from=nativelibs \
   /lib64/libz.so.1 \
   /lib64/libstdc++.so.6 \
   /lib64/


