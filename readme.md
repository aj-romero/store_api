<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel - Store API

Laravel is accessible, yet powerful, providing tools needed for large, robust applications. In this case we use Laravel for develop an API for small snack store. Some function like add products, buy products are avaible to use in this API solution.

## Requirements to use Store API

Consider having the following
- [SO Ubuntu Linux 18.04 or later]
- **[Git]**
- [Composer]
- [Npm]
- [MariaDB 10.1 or later]
- [PHP 7 or later - This API was running with php 7.2]
- [Postman]

Clone this repositori with: [git clone https://github.com/alberjose/store_api.git]

## Data Base 

With root create a new database for this api. For example: **store_api** and user **user_store**. Then search  **dump_database.sql** in SQL file.

## Config and Execute

Search the file **store_api**

- [1. Copy .env.example to .env. with this in the terminal **$cp .env.example .env** and set database configuration with your configuration...]
<p align="center"><img src="https://framapic.org/8wfvTwM3dKeG/grlVJ5TiWPDM.png"></p>

- [2. Execute at the terminal: $composer install]
- [3. Execute at the terminal: $npm install]
- [4. Execute at the terminal: $php artisan key:generate --ansi]
- [5. Execute at the terminal: $php artisan passport:install --force]
- [6. Execute at the terminal: $php artisan serve]
- [7. At the navigator or Postman set the URL (http://127.0.0.1:8000)]

## How to use Store API
Actions can be use in this API. Working with Postman.
- [List of products with pagination and filters]
    - Set the URL [List Products](http://127.0.0.1:8000/api/products) use Method **GET** and press the button **SEND**
    <p align="center"><img src="https://framapic.org/0FPv76S2IzYM/XQSv5veYPRSk.png"></p>
    
    - Filter by name set the URL [Filter by name](http://127.0.0.1:8000/api/products?name=coca) use Method **GET** and press the button **SEND**
    <p align="center"><img src="https://framapic.org/AV7IDSU6N2nx/eP7CZ90KKLhs.png"></p>
    
    - Filter by likes set the URL [Filter by likes](http://127.0.0.1:8000/api/products?likes=37) use Method **GET** and press the button **SEND**
    <p align="center"><img src="https://framapic.org/czUbWTbmbH5t/nLjexHyLlUsl.png"></p>
    
- [Show product list]
    - Set the URL [List Products](http://127.0.0.1:8000/) at Navigator (Google Chrome, Firefox, Internet Explorer, etc)
    <p align="center"><img src="https://framapic.org/bUKM7HgheTPr/cuwRAddmVIjg.png"></p>
    
- [Add products]
    - Login as Admin user, set at Postman the headers Content-type: application/json  and X-Requested-With: XMLHttpRequest and at body set the paremeters. Use Method **POST** and press button **SEND**  

- [4.]
- [5.]
- [6.]

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
