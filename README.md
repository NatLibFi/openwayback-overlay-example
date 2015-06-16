OpenWayback overlay for National Library of Finland
===================================================

(C) 2015 University of Helsinki (National Library of Finland)

Author: Ilja Sidoroff (firstname.lastname at* helsinki.fi)

This is an example of maven overlay project for customizing
OpenWayback interface. You can use this as a starting point to a real
overlay.

Installation
------------

This overlay requires maven and Java 7.

Use maven to build the package:

    $ mvn clean install

Resulting war-file should be build to ``target`` directory.

Testing
-------

Use maven jetty-plugin for testing:

   $ mvn jetty:run

This will lauch a Jetty instance listening which you can access with url

   http://localhost:8080/wayback

Customising OpenWayback
-----------------------

For fuller treatment, see OpenWayback wiki: https://github.com/iipc/openwayback/wiki/Creating-a-WAR-overlay

Basic steps:

 * Select OpenWayback version in `pom.xml` in dependecy section with artifactId `openwayback-webapp`

 * Replace files in OpenWayback with their customized versions in this
   project, to their corresponding file paths, for example, if you
   want to replace index-page, put your customized index.jsp into
   directory `src/main/webapp` (see the example)

TODO
----

* provide example for using wayback.properties for configuration
* provide custom collection example
* example of UI properties

[1] https://github.com/iipc/openwayback

