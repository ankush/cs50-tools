# check50
###Code validater for Harvard's cs50
#####I am not author of any file. This is extracted from CS50 appliance.

###Installation
You've two options-   
1. Download zip and extract it.   
2. If you're familer with GIT you know what to do ;)

### prerequisites
Node.js and php5

On ubuntu based distros

    sudo apt-get install nodejs npm php5

On other linux distros - [https://github.com/joyent/node/wiki/installing-node.js-via-package-manager](https://github.com/joyent/node/wiki/installing-node.js-via-package-manager)    
[http://php.net/manual/en/install.php](http://php.net/manual/en/install.php)
###how to use this
To validate your code file. Place the codefile.c in /bin directory.
Copy validation command from cs50 and prepend "./" e.g.

    ./check50 2014.fall.pset1.hello hello.c

Thank you Harvard, David Malan and other cs50 staff.

###Possible modifications
Create symlink of check50 file in /usr/bin    
In terminal CD to check50/bin and execute...    
   
    sudo ln -s check50 /usr/bin
    sudo chmod ugo+x /usr/bin/check50

Check50 will now work from all folders.    
Proof - [screenshot](http://i.imgur.com/npRqmO5.png)    

Cheers!
