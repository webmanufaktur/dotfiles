#!/bin/sh

# render a template configuration file
# expand variables + preserve formatting
hostname=$1
render_template() {
  eval "echo \"$(cat $1)\""
}


# Create Apache conf file
filename=$1.apache.conf
if [ ! -f "$filename" ]; then
    echo "GENERATING CONF NOW"
    render_template ./tpl/apache.tpl > $filename
else
    echo "CONF ALREADY EXISTS"
fi


# Create folder in userspace default path
wwwroot=~/www/$1.test/
if [ ! -d "$wwwroot" ]; then
    echo "CREATE FOLDER NOW"
    mkdir $wwwroot
else
    echo "FOLDER ALREADY EXISTS"
fi


# DNS template for /etc/hosts
dns="127.0.0.1  $1.test  www.$1.test"

if [ ! -f "$1.hosts" ]; then
    echo "CREATING DNS ENTRY"
    echo $dns >> $1.hosts
else
    echo "DNS ENTRY ALREADY EXISTS"
fi
