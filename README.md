Anax comment
==================================

[![Latest Stable Version](https://poser.pugx.org/ara/comment/v/stable)](https://packagist.org/packages/ara/comment)
[![Build Status](https://travis-ci.org/Ara95/comment.svg?branch=master)](https://travis-ci.org/Ara95/comment)
[![CircleCI](https://circleci.com/gh/Ara95/comment.svg?style=svg)](https://circleci.com/gh/Ara95/comment)

[![Build Status](https://scrutinizer-ci.com/g/Ara95/comment/badges/build.png?b=master)](https://scrutinizer-ci.com/g/Ara95/comment/build-status/master)
[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/Ara95/comment/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/Ara95/comment/?branch=master)
[![Code Coverage](https://scrutinizer-ci.com/g/Ara95/comment/badges/coverage.png?b=master)](https://scrutinizer-ci.com/g/Ara95/comment/?branch=master)




Anax comment module.


Requirements
------------------

In order to use this module you need an Anax framework environment.

```
git clone https://github.com/Ara95/anax.git -b comment-test
cd anax
composer install
```

For the project to work the database also needs to be setup:

```
mv config/database_default.php config/database.php
```

Then change dsn, username and password within `database.php` to match your environment.

A User table also needs to be added to the database manually, `sql/ddl/user_mysql_default.sql` contains the necessary DDL for that.


Installation
------------------

Install the module with the following command:

```
composer require ara/comment
```


Setup in Anax environment
------------------

Run the following command to automatically setup the module in your Anax installation (assumes a normal Anax project structure):

```
make install-module module=ara/comment
```
The setup adds example pages and views that can be reached in the browser via the path `/comment`.

Finally, a Comment table needs to be manually added to the database, `sql/ddl/comment_mysql_default.sql` contains the necessary DDL for that.

The comment functionality can now be demoed under `/comment/1` and `/comment/2`.


Usage
------------------

Short examples on how to use the module comment.



License
------------------

This software carries a MIT license.



```
 .  
..:  Copyright (c) 2018
```
