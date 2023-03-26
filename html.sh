#!/bin/bash
# sysinfo_page - A script to produce a html page
#VARIABLES
title="My System Information"
RIGHT_NOW="$(date +"%x %r %Z")"
TIME_STAMP="Last updated on $RIGHT_NOW by $USER" 

##### Functions

system_info()
{
 # Temporary function stub
    echo "function system_info"
}


show_uptime()
{
    echo "<h2>System uptime</h2>"
    echo "<pre>"
    uptime
    echo "</pre>"
}


drive_space()
{
    echo "<h2>Drive space</h2>"
    echo "<pre>"
    df
    echo "</pre>"
}


home_space()
{
    echo "<h2>Home directory space by user</h2>"
    echo "<pre>"
    echo "Bytes Directory"
    du -s /home/* | sort -nr
    echo "</pre>"
}

#MAIN
cat <<- _EOF_
<html>
<head>
    <title>
    $title $HOSTNAME
    </title>
</head>
  <body>
      <h1>$title</h1>
      <p>$TIME_STAMP</p>
      $(system_info)
      $(show_uptime)
      $(drive_space)
      $(home_space)
  </body>
</html>
_EOF_
