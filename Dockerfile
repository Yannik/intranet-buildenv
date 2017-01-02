FROM php:latest
RUN apt-get update && \
    apt-get install -y unzip && \
    sqlite3 libsqlite3-dev
    docker-php-ext-install -j$(nproc) zip sqlite3 pdo_sqlite
RUN apt-get update && apt-get -y install git
RUN curl --silent https://raw.githubusercontent.com/composer/getcomposer.org/453523e8e9b093bfc02b49b723bf0149888d98c1/web/installer | php -- --quiet --install-dir=/usr/local/bin --filename=composer && \
    composer global require "hirak/prestissimo:^0.3"
