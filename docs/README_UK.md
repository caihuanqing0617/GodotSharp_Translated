# GodotSharp RunTime ❤ Document To Other Language ❤

<div align="center">

**мова / Language / 语言 / 語言 / 言語 / 언어 / língua / язык / lengua / langue / Sprache / lingua / jazyk / język**

[**Українська мова**](README_UK.md) | [English](README_EN.md) | [简体中文](README_zh-CN.md) | [繁體中文](README_zh-TW.md) | [日本語](README_JP.md) | [한국어](README_KO.md) | [Português (Brasil)](README_pt-BR.md) |
[Русский](README_RU.md) | [Español](README_ES.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Italiano](README_IT.md) | [Česko](README_CS.md) | [Polski](README_PL.md)

</div>

---

Довідка для середовища виконання Godot C#, перекладена за допомогою великої мовної моделі для інших країн

---

## Вступ

- На основі середовища виконання Godot C# можна перекладати довідкову документацію, щоб у режимі реального часу переглядати опис використання функцій і способи їх виклику рідною мовою.

## Інструкція з використання

### Клонування Git цього проєкту

- У системі Windows:
    1. Запустіть `./Run.bat` у кореневому каталозі цього проєкту
    2. Дотримуйтесь підказок, обираючи крок за кроком, а потім виконайте
    3. Готово

- У системі Mac або Linux:
    1. Запустіть `./Run.sh` у кореневому каталозі цього проєкту
    2. Дотримуйтесь підказок, обираючи крок за кроком, а потім виконайте
    3. Готово

### Або

- Знайдіть відповідну мову та версію

- Наприклад:

1. У поточному Git-каталозі знайдіть папку `Chinese`

2. Знайдіть відповідну версію, наприклад `v4.6.1 v2`

3. Знайдіть `GodotSharp.?.xml` і `GodotSharpEditor.?.xml`

4. Скопіюйте до:
    - У Windows:
        1. `C:\\Users\\ім'я_користувача\\.nuget\\packages\\godotsharp\\4.6.1\\lib\\net8.0\\`
        2. `C:\\Users\\ім'я_користувача\\.nuget\\packages\\godotsharpeditor\\4.6.1\\lib\\net8.0\\`
    - На Mac або Linux:
        1. `~/.nuget/packages/godotsharp/4.6.1/lib/net8.0/`
        2. `~/.nuget/packages/godotsharpeditor/4.6.1/lib/net8.0/`

5. Створіть резервну копію `GodotSharp.xml` і `GodotSharpEditor.xml`, а потім видаліть їх

6. Перейменуйте знайдені `GodotSharp.?.xml` на `GodotSharp.xml`, а `GodotSharpEditor.?.xml` на `GodotSharpEditor.xml`, після чого скопіюйте їх до цієї директорії

7. Готово. Після цього відкрийте свій проєкт, і ви зможете побачити відповідну вам мову
