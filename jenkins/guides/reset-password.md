# Resetting Jenkins password

The simplest solution is to completely disable security - change true to false in `/var/lib/jenkins/config.xml` file.

`<useSecurity>true</useSecurity>`

A one-liner to achieve the same:

`$ sed -i 's/<useSecurity>true<\/useSecurity>/<useSecurity>false<\/useSecurity>/g' /var/lib/jenkins/config.xml`

Then just restart Jenkins:

`$ sudo service jenkins restart`

And then go to admin panel and set everything once again.

`$ sed -i 's/<useSecurity>false<\/useSecurity>/<useSecurity>true<\/useSecurity>/g' /var/lib/jenkins/config.xml`