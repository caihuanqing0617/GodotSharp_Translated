# GodotSharp RunTime ❤ Document To Other Language ❤

<div align="center">

**言語 / Language / 语言 / 語言 / 언어 / língua / язык / lengua / langue / Sprache / lingua / jazyk / język / мова**

[**日本語**](README_JP.md) | [English](README_EN.md) | [简体中文](README_zh-CN.md) | [繁體中文](README_zh-TW.md) | [한국어](README_KO.md) | [Português (Brasil)](README_pt-BR.md) |
[Русский](README_RU.md) | [Español](README_ES.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Italiano](README_IT.md) | [Česko](README_CS.md) | [Polski](README_PL.md) | [Українська мова](README_UK.md)

</div>

---

Godot C# ランタイムのヘルプドキュメントを、大規模言語モデルを使って他国向けに翻訳する

---

## はじめに

- Godot C# ランタイムに基づいたヘルプドキュメントの翻訳です。関数の使い方や呼び出し方法を、ローカル言語でリアルタイムに確認できます。

## 使用方法

- 対応する言語とバージョンを見つけます。

- 例えば:

1. 現在の Git ディレクトリ内の `Chinese` フォルダを探します。

2. 対応するバージョンを見つけます。たとえば `v4.6.1 v2` の場合

3. `GodotSharp.?.xml` と `GodotSharpEditor.?.xml` を見つけます。

4. 次の場所にコピーします:
    - Windows の場合:
        1. `C:\\Users\\あなたのユーザー名\\.nuget\\packages\\godotsharp\\4.6.1\\lib\\net8.0\\`
        2. `C:\\Users\\あなたのユーザー名\\.nuget\\packages\\godotsharpeditor\\4.6.1\\lib\\net8.0\\`
    - Mac または Linux の場合:
        1. `~/.nuget/packages/godotsharp/4.6.1/lib/net8.0/`
        2. `~/.nuget/packages/godotsharpeditor/4.6.1/lib/net8.0/`

5. `GodotSharp.xml` と `GodotSharpEditor.xml` をバックアップして削除します。

6. 見つけた `GodotSharp.?.xml` を `GodotSharp.xml` に、`GodotSharpEditor.?.xml` を `GodotSharpEditor.xml` にリネームし、そのディレクトリにコピーします。

7. 完了です。あとはプロジェクトを開くと、対応する言語が表示されます。
