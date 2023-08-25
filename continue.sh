Using init.d
To run a script on startup using the init.d system, you will need to do the following −

Open a terminal and create a new script file in the /etc/init.d directory. You can use a text editor such as nano or vi to create the file.

Add the following lines at the top of the script file −

#!/bin/sh
BEGIN INIT INFO
Provides: scriptname
Required-Start: $all
Required-Stop: $all
Default-Start: 2 3 4 5
Default-Stop: 0 1 6
Short-Description: Start scriptname at boot time
END INIT INFO
