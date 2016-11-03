# Utilities
Miscellaneous scripts for miscellaneous stuff

## GetGardnerMusic.pl ##
Downloads the [music library of Isabella Stewart Gardner Museum](http://www.gardnermuseum.org/music/listen/music_library) automatically.  Only the new files that are not found in the current directory are fetched.  Between each download, the script pauses so that we are not overwhelming the server with the requests.

### Usage ###
```
$ cd <dir>
$ ./GetGardnerMusic.pl
```

### Pre-requisities ###
* Tested with Perl v5.18.2, but may work fine with other versions.
* The following packages are required: WWW::Mechanized, LWP::Simple.

#### Why Perl? :p ####
I know, I know. This script can be done in other scripting languages in a much, much graceful solution.  I wrote this code (rather quickly) in Perl because I was working with Perl at my job and its syntax kind of stuck to my head at that time.
