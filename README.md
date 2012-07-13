Spring - это модификация Фар 3, в которой вместо встроенного макроязыка используется скриптовый язык Lua 5.1.

Под макросом понимается Lua-скрипт и его мета-данные, такие как:
* Область начала исполнения скрипта.
* Клавиша, инициирующая исполнение скрипта из данной области.
* Предварительные условия для исполнения скрипта.
* Флаги времени исполнения: DisableOutput и NoSendKeysToPlugins.

По состоянию на 2012-07-13
===========================

Что работает
-------------
* Импорт макросов посредством команды far /import.
* Запись макросов через Ctrl. или CtrlShift. (в диалоге работают все поля,
  кроме "Execute after FAR start").
* Макросы могут использовать функции и библиотеки Lua и LuaFAR.
* Функции манипуляции макросами: far.MacroAdd, far.MacroCheck, far.MacroDelete, far.MacroGetArea, far.MacroLoadAll, far.MacroPost, far.MacroSaveAll.

Что не работает
----------------
* Нет функций макроязыка (ушли вместе с ним). Часть этих функций, под другими названиями, с другими синтаксисом и семантикой, есть в Lua и LuaFAR, другая часть - в планах на написание.
* Функции манипуляции макросами: far.MacroGetLastError, far.MacroGetState.

Что отличается
---------------
* Флаг DisableOutput не следует применять для макросов, включающих в себя вызовы API-шных диалогов и меню (far.Dialog, far.Message, far.Show, far.Menu).
* Передача клавиш из макроса осуществляется с помощью функции far.Keys, например: far.Keys("A b CtrlC ShiftEnter").

