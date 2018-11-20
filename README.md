# README!

[![Build Status](http://cookbooks-jenkins.service.rxpdev.auto:8080/buildStatus/icon?job=rxp-empty-cookbook)](http://cookbooks-jenkins.service.rxpdev.auto:8080/job/rxp-empty-cookbook/)

This repository is used by rxp-empty-cookbook and contains all the necessary skeleton to create a new cookbook.

## Table of Contents

- [Attributes](#attributes)
    * [default.rb](#default_attributes)
    * [external.rb](#external_attributes)
- [Recipes](#recipes)
    * [default.rb](#default_recipes)
- [Tests](#tests)
    * [Spec](#spec_tests)
    * [Integration](#integration_tests)
- [Usage](#usage)
- [External dependencies](#external_dependencies)
    * [Cookbooks](#cookbooks)
    * [Gems](#gems)
- [Maintainers](#maintainers)

## Attributes <a name="attributes"></a>

The attributes are split into internal attributes, defined in this cookbook which are stored in `default.rb` and external attributes, defined in other cookbooks but overridden by this cookbook which are stored in `external.rb`

__default.rb <a name="default_attributes"></a>__

__external.rb <a name="external_attributes"></a>__

## Recipes <a name="recipes"></a>

Recipes defined in this cookbook are used to perform the installation and configuration of any application on Openstack in an automated manner.

__default.rb <a name="default_recipes"></a>__

Default recipe will include the order of execution of all other recipes and external cookbooks that are required.

## Tests <a name="tests"></a>

TODO: Define tests for this cookbook

__Spec <a name="spec_tests"></a>__

In this section of the cookbook, the unit tests are included. There are some dummy attributes defined in order to execute the unit tests.

__Integration <a name="integration_tests"></a>__

TODO: Define integration tests

## Usage <a name="usage"></a>

To use this cookbook, clone the repository, create a new repository in Bitbucket, make all the changes required then push the cookbook to the new repository.

## External dependencies <a name="external_dependencies"></a>

This cookbooks depends on different cookbooks and gems which are listed below

__Cookbooks <a name="cookbooks"></a>__

__Gems <a name="gems"></a>__

## How to contribute

In order to contribute to this cookbook, you need to have this setup described here: https://confluence.rxpdev.com/pages/viewpage.action?pageId=42127044

## Maintainers <a name="maintainers"></a>

[@alexandruivan](http://bitbucket.rxpdev.com:7990/users/alexandruivan).
