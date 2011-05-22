Package Manager Update Notifications for OS X
=============================================

These scripts check various package managers for updates and informs you if there are any available via Growl. There is currently support for the following:

* [RubyGems](http://rubygems.org) (*gem* command)
* [HomeBrow](http://mxcl.github.com/homebrew/) (*brew* command)
* [npm](http://npmjs.org) (*npm* command, version 1.0+)

There scripts are can be invoked with *launchd* to allow them run at startup or on whatever schedule you like.

Dependencies
------------

In addition to the package management systems, you'll need to have:

* [Growl](http://growl.info)
* [growlnotify](http://growl.info/extras.php)

Installation
------------

Put the scripts somewhere on your system and make the executable.

If you want them to run automatically, use *launchd*. A few example *launchd* configs are includes; you can drop them into ~/Library/LaunchAgents (or /Library/LaunchAgents if you want them to apply to all users on your system). You will need to update the paths to point to wherever you placed the shell scripts.

Caveats
-------

Right now, the paths to the package managers (*brew*, *gem*, *npm*) and *growlnotify* are hardcoded; you may have to edit the scripts to point to the correct location on your system.

Another thing to watch out for is that the *gemupdates.sh* script assumes the system copy of *gem*; I'm not taking into account something like [RVM](http://rvm.beginrescuend.com) here yet.

Useful stuff
------------

If you want to simplify setting up *launchd* scripts, take a look at [Lingon](http://www.peterborgapps.com/lingon/).