# GodotSharp RunTime ❤ Document To Other Language ❤

<div align="center">

**язык / Language / 语言 / 語言 / 言語 / 언어 / língua / lengua / langue / Sprache / lingua / jazyk / język / мова**

[**Русский**](README_RU.md) | [English](README_EN.md) | [简体中文](README_zh-CN.md) | [繁體中文](README_zh-TW.md) | [日本語](README_JP.md) | [한국어](README_KO.md) | [Português (Brasil)](README_pt-BR.md) |
[Español](README_ES.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Italiano](README_IT.md) | [Česko](README_CS.md) | [Polski](README_PL.md) | [Українська мова](README_UK.md)

</div>

---

Справочная документация для среды выполнения Godot C#, переведённая на другие языки с помощью большой языковой модели

---

## Введение

- Основано на среде выполнения Godot C#: перевод справочной документации позволяет в реальном времени просматривать назначение и вызовы функций на локальном языке.

## Инструкция по использованию

### Клонирование этого проекта через Git

- В системе Windows:
    1. Запустите `./Run.bat` в корневом каталоге этого проекта
    2. Следуйте подсказкам, выбирая шаг за шагом, а затем выполните
    3. Готово

- В системах Mac или Linux:
    1. Ожидайте...

### Или

- Найдите соответствующий язык и версию

- Например:

1. В текущем Git-каталоге найдите папку `Chinese`

2. Найдите соответствующую версию. Если это `v4.6.1 v2`

3. Найдите `GodotSharp.?.xml` и `GodotSharpEditor.?.xml`

4. Скопируйте в:
    - В системе Windows:
        1. `C:\\Users\\имя_пользователя\\.nuget\\packages\\godotsharp\\4.6.1\\lib\\net8.0\\`
        2. `C:\\Users\\имя_пользователя\\.nuget\\packages\\godotsharpeditor\\4.6.1\\lib\\net8.0\\`
    - В системах Mac или Linux:
        1. `~/.nuget/packages/godotsharp/4.6.1/lib/net8.0/`
        2. `~/.nuget/packages/godotsharpeditor/4.6.1/lib/net8.0/`

5. Сделайте резервную копию `GodotSharp.xml` и `GodotSharpEditor.xml` и удалите их

6. Переименуйте найденный `GodotSharp.?.xml` в `GodotSharp.xml`, а `GodotSharpEditor.?.xml` в `GodotSharpEditor.xml`, затем скопируйте их в этот каталог

7. Готово. После этого откройте свой проект, и вы увидите соответствующий вам язык
