# GodotSharp RunTime ❤ Document To Other Language ❤

<div align="center">

**語言 / Language / 语言 / 言語 / 언어 / língua / язык / lengua / langue / Sprache / lingua / jazyk / język / мова**

[**繁體中文**](README_zh-TW.md) | [English](README_EN.md) | [简体中文](README_zh-CN.md) | [日本語](README_JP.md) | [한국어](README_KO.md) | [Português (Brasil)](README_pt-BR.md) |
[Русский](README_RU.md) | [Español](README_ES.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Italiano](README_IT.md) | [Česko](README_CS.md) | [Polski](README_PL.md) | [Українська мова](README_UK.md)

</div>

---

Godot C# 執行階段的說明文件，使用大型語言模型翻譯成其他國家語言

---

## 介紹

- 基於 Godot C# 執行階段的說明文件翻譯，可以即時用本地語言查看函式的用法及呼叫方式。

## 使用說明

### Git Clone 本專案

- 在 Windows 系統下:
    1. 執行本專案根目錄下的 `./Run.bat`
    2. 根據提示一步一步選擇，然後執行
    3. 完成

- 在 Mac 或 Linux 系統下:
    1. 執行本專案根目錄下的 `./Run.sh`
    2. 根據提示一步一步選擇，然後執行
    3. 完成

### 或者

- 找到對應的語言和版本

- 舉例說明：

1. 在目前的 Git 目錄下的 Chinese 目錄中尋找

2. 找到對應的版本，如果是 v4.6.1 v2

3. 找到 GodotSharp.?.xml 和 GodotSharpEditor.?.xml

4. 複製到：
    - 在 Windows 系統下：
        1. C:\\Users\\你的使用者名稱\\.nuget\\packages\\godotsharp\\4.6.1\\lib\\net8.0\\
        2. C:\\Users\\你的使用者名稱\\.nuget\\packages\\godotsharpeditor\\4.6.1\\lib\\net8.0\\
    - 在 Mac 或 Linux 系統下：
        1. ~/.nuget/packages/godotsharp/4.6.1/lib/net8.0/
        2. ~/.nuget/packages/godotsharpeditor/4.6.1/lib/net8.0/

5. 備份你的 GodotSharp.xml 和 GodotSharpEditor.xml，並刪除它們

6. 將找到的 GodotSharp.?.xml 重新命名為 GodotSharp.xml，並將 GodotSharpEditor.?.xml 重新命名為 GodotSharpEditor.xml，然後複製到該目錄

7. 完成後，打開你的專案，就可以看到對應的語言了
