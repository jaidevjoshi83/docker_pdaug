# Galaxy - PDAUG

FROM bgruening/galaxy-stable:20.05

MAINTAINER jayadevjoshi12, jaidev53ster@gmail.com

ENV GALAXY_CONFIG_BRAND=PDAUG

ADD pdaug.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs --yes > /dev/null && \
    rm /export/galaxy-central/ -rf && \
    mkdir -p $GALAXY_HOME/workflows


