# GodotSharp RunTime ❤ Document To Other Language ❤

<div align="center">

**언어 / Language / 语言 / 語言 / 言語 / língua / язык / lengua / langue / Sprache / lingua / jazyk / język / мова**

[**한국어**](README_KO.md) | [English](README_EN.md) | [简体中文](README_zh-CN.md) | [繁體中文](README_zh-TW.md) | [日本語](README_JP.md) | [Português (Brasil)](README_pt-BR.md) |
[Русский](README_RU.md) | [Español](README_ES.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Italiano](README_IT.md) | [Česko](README_CS.md) | [Polski](README_PL.md) | [Українська мова](README_UK.md)

</div>

---

Godot C# 런타임의 도움말 문서, 대규모 언어 모델을 사용하여 다른 국가의 언어로 번역

---

## 소개

- Godot C# 런타임을 기반으로 한 도움말 문서 번역으로, 함수의 사용법과 호출 방법을 로컬 언어로 실시간 확인할 수 있습니다.

## 사용 방법

- 해당하는 언어와 버전을 찾습니다.

- 예를 들면:

1. 현재 Git 디렉터리의 `Chinese` 폴더 아래에서 찾습니다.

2. 해당 버전을 찾습니다. 예를 들어 `v4.6.1 v2`인 경우

3. `GodotSharp.?.xml` 및 `GodotSharpEditor.?.xml`을 찾습니다.

4. 다음 위치에 복사합니다:
    - Windows 시스템의 경우:
        1. `C:\\Users\\사용자이름\\.nuget\\packages\\godotsharp\\4.6.1\\lib\\net8.0\\`
        2. `C:\\Users\\사용자이름\\.nuget\\packages\\godotsharpeditor\\4.6.1\\lib\\net8.0\\`
    - Mac 또는 Linux 시스템의 경우:
        1. `/Users/사용자이름/.nuget/packages/godotsharp/4.6.1/lib/net8.0/`
        2. `/Users/사용자이름/.nuget/packages/godotsharpeditor/4.6.1/lib/net8.0/`

5. `GodotSharp.xml` 및 `GodotSharpEditor.xml`을 백업한 뒤 삭제합니다.

6. 찾은 `GodotSharp.?.xml`을 `GodotSharp.xml`로, `GodotSharpEditor.?.xml`을 `GodotSharpEditor.xml`로 이름을 바꾼 뒤 해당 디렉터리에 복사합니다.

7. 완료되었습니다. 이제 프로젝트를 열면 해당 언어를 볼 수 있습니다.
