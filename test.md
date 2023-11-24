
# Calibsun Dev Kit

## Introduction

Copy .env.dist to .env
Change ` user:token`  in CLONE_REPO_CALIBSUN

Open a terminal on the local repo and start building 
    ```
    docker-compose up
    ```

Then go to [calibsun.localhost](http://calibsun.localhost/fr)

## Troubleshooting
### Error message :
    ```
    calibsunfr_dev_kit-calibsun-1  | runsv nginx: fatal: unable to start ./run: access denied
    calibsunfr_dev_kit-calibsun-1  | runsv php-fpm: fatal: unable to start ./run: access denied
    ```
On the docker container **calibsun-1**, open a terminal : 
    ```
    cd etc/runit/runsvdir/default/php-fpm 
    chmod 740 ./run 
    cd /etc/runit/runsvdir/default/nginx 
    chmod 740 ./run 
    cd /home/app/application && composer install --no-dev --optimize-autoloader -n && yarn install && yarn build && bin/console sulu:admin:update-build
    ```
### Error message :
    ```
    calibsunfr_dev_kit-api-1 | runsv nginx: fatal: unable to start ./run: access denied
    ```
On the docker container **api-1**, open a terminal : 
    ```
    cd /etc/runit/runsvdir/default/nginx 
    chmod 740 ./run
    ```
### Error message : 
    ```
    "GET /fr HTTP/1.1" 500 1321 "
    ```
Open the **calibsun-1** container in VS Code and go to ` /home/app/application` 
create a file «.env.local» and write at least : 
    ```
    APP_ENV=dev
    ```
You may need to add other variable like AWS credentials...

On the container terminal use following commands to install all missing parts: 
    ```
    composer install
    yarn install
    php bin/console doctrine:database:create
    php bin/console doctrine:migrations:migrate
    php bin/adminconsole sulu:build dev
    ```
    
