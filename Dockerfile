FROM ghchinoy/forgerock

ADD input.ldif /opt/opendj/config/

RUN /opt/opendj/bin/import-ldif \
    --ldifFile /opt/opendj/config/input.ldif \
    --includeBranch dc=example,dc=com
