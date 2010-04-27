Protester
=============

This is a [Monk](http://monkrb.com) skeleton that uses [Redis](http://code.google.com/p/redis) as the database, [HAML/SASS](http://haml-lang.com/) for the views and [Protest](http://matflores.github.com/protest/) for tests.

Getting Started
---------------

First of all, install [Monk](http://monkrb.com) if you don't have it:

    gem install monk

Then add this skeleton to your own list of supported skeletons:

    monk add protester git://github.com/matflores/protester.git

That's it! Now you are ready to create your first project:

    monk init myapp -s protester
    cd myapp
    monk start

Settings
--------

Check the configuration file at `config/settings.yml`. The keys under each environment can be accessed with the global `monk_settings` function, and you will also find an example in the default route.

Redis is connected to `#{@redis[:host]}:#{@redis[:port]}`. If you want to change it, make sure to edit `config/settings.yml` and `config/redis/#{RACK_ENV}.yml`

Testing
-------

Protester uses [Protest](http://matflores.github.com/protest/) as its testing framework.

There's a user story written for you at `test/stories/site_test.rb`. Start adding whatever you want to test and then run `monk test` or `monk stories`. For convenience, you can also run `rake`, which just invokes `monk test`.

Dependencies
------------

Run `dep list` to see the list of dependencies, `dep list test` to check the dependencies for the test environment. Feel free to edit the `dependencies` file in the root of this project. More info about the `dep` command can be found [here](http://github.com/djanowski/dependencies).
