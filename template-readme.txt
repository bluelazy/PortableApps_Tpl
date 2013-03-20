This is a the PortableApps.com Application Template v2.4. You should probably
start a new package from this. There are a few things which need doing to make
your application package from this:

* Update help.html, replacing strings with the double asterisks (like ``**App
  Name**``) with the appropriate details of the app. Keep the appropriate 
  paragraph about the license of the app as indicated in the comments within
  the help file and delete the other paragraph. Also app-specific links
  may be added.
  
* Update Other\Source\Readme.txt, changing references to **AppID**Portable  
  to the app's ID (e.g. FooBarPortable).  

* Put the app in the right subdirectory in App.

* Create everything in App\AppInfo and App\AppInfo\Launcher (the Development
  Test splash screen has been put in for convenience).

* Run the PortableApps.com Launcher Generator over the directory to build the
  launcher (make sure you've done the AppInfo stuff first, or at least the app
  name in appinfo.ini and appicon.ico).

* Remove this file before packaging.
  
* Do not alter anything (besides the readme) within the Other directory.  

For more information, visit http://portableapps.com/development
