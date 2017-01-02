FROM php:latest
RUN curl --silent https://raw.githubusercontent.com/composer/getcomposer.org/453523e8e9b093bfc02b49b723bf0149888d98c1/web/installer | php -- --quiet --install-dir=/usr/local/bin --filename=composer
