Spring
=======

**Spring** is a modification of [Far Manager][far], that uses the [Lua][lua] programming language
instead of the embedded macro-language.

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
* Libraries of macro functions ("macro API")
* For plugins: function `MacroControl`


Project status
---------------
**Since 30 September 2012 this project is merged with Far Manager, and its separate development stopped.**

[far]: http://www.farmanager.com/
[lua]: http://www.lua.org/
