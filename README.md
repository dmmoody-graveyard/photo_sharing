Photo Sharing App
=================

by <a href="http://duanemoody.io" target="_blank">Duane M. Moody</a>.

Photo Sharing App will provide you a simple yet elegant way to share all your photos with the world.

Installation
------------

Install Photo Sharing App by first cloning the repository.
```
$ git clone http://github.com/dmmoody/photo_sharing.git
```

Install all of the required gems:
```
$ bundle install
```

Database Setup
--------------

This app uses PostreSQL.

Run the following in the command line:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Running the app
---------------

To run the app, ```\cd``` into the root folder for the app and start the webserver:
```
$ rails server
```

In your web browser, go to http://localhost:3000

Contribute
----------

- Issue Tracker: https://github.com/dmmoody/photo_sharing/issues
- Source Code: https://github.com/dmmoody/photo_sharing

Support
-------

If you are having issues, please let me know at: dmmoody@gmail.com

Bug reports
-----------

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help me fixing the possible bug. I also encourage you to help even more by forking and sending me a pull request.

https://github.com/dmmoody/photo_sharing/issues

License
-------

MIT License. Copyright 2015 Duane M. Moody | <a href="http://moodyco.de">MoodyCode</a>
