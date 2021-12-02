FROM wordpress:php7.4-fpm

ARG UID
ARG GID
ARG USERNAME

RUN addgroup --gid ${GID} ${USERNAME} && \
    adduser --disabled-password --gecos '' --uid ${UID} --gid ${GID} ${USERNAME}

USER ${USERNAME}
