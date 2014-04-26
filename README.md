Spring
=======

**Spring** is a modification of [Far Manager](http://www.farmanager.com/) 3.0,
that uses the Lua 5.1 programming language instead of the embedded macro-language.

A macro is a Lua-script and its meta-data such as:

* Areas from which the script may be executed
* Keys that initiate execution of the script from those areas
* Prerequisites for the execution of the script
* Run-time flags: `EnableOutput` and `NoSendKeysToPlugins`

Functionality
--------------

* Macro recording and playback
* Standard Lua libraries
* LuaFAR libraries ("plugin API")
* [Libraries of macro functions][2] ("macro API")
* For plugins: function `MacroControl`


Project status
---------------
Since 30 September 2012 this project is merged with Far Manager, and its separate development stopped.

[1]: http://www.lua.org/
[2]: 42.html
