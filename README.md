Spring
=======

**Spring** - это модификация Фар 3, в которой вместо встроенного макроязыка
используется скриптовый язык Lua 5.1.

Под макросом понимается Lua-скрипт и его мета-данные, такие как:
* Область начала исполнения скрипта.
* Клавиша, инициирующая исполнение скрипта из данной области.
* Предварительные условия для исполнения скрипта.
* Флаги времени исполнения: DisableOutput и NoSendKeysToPlugins.

Текущее состояние проекта
==========================

Что работает
-------------
* Импорт макросов посредством команды far /import.
* Запись макросов через `Ctrl.` или `CtrlShift.`.
* Макросы могут использовать функции и библиотеки Lua и LuaFAR.
* API `MacroControl` для плагинов: все операции, кроме `MCTL_GETLASTERROR`.

Что не работает
----------------
* Нет функций макроязыка (ушли вместе с ним). Часть этих функций, под другими
  названиями, с другими синтаксисом и семантикой, есть в Lua и LuaFAR, другая
  часть - в процессе написания.

