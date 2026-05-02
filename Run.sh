#!/usr/bin/env bash

set +e

clear_screen() {
  clear 2>/dev/null || printf '\033c'
}

pause_wait() {
  read -r -p "Press Enter to continue..."
}

copy_file() {
  local source_file="$1"
  local target_file="$2"

  if [[ -f "$source_file" ]]; then
    cp "$source_file" "$target_file"
  else
    echo "The file was not found as: \"$source_file\""
    return 1
  fi

  return 0
}

show_godot_version_menu() {
  clear_screen
  echo "======================="
  echo "     Godot Version"
  echo "======================="
  echo "1. Godot 4.6.2"
  echo "2. Godot 4.6.1"
  echo "3. Godot 4.6.0"
  echo "======================="
}

select_godot_version() {
  while true; do
    show_godot_version_menu
    read -r -p "Please select a godot version...(1-3): " choice

    case "$choice" in
      1)
        GodotVersion="4.6.2"
        NetFramework="net8.0"
        return 0
        ;;
      2)
        GodotVersion="4.6.1"
        NetFramework="net8.0"
        return 0
        ;;
      3)
        GodotVersion="4.6.0"
        NetFramework="net8.0"
        return 0
        ;;
      *)
        clear_screen
        echo "Invalid input. Please select again!"
        pause_wait
        ;;
    esac
  done
}

prepare_english_backups() {
  local home_dir="$HOME"

  GodotSharpOriginalFile="$home_dir/.nuget/packages/godotsharp/$GodotVersion/lib/$NetFramework/GodotSharp.xml"
  GodotSharpEnglishFile="$home_dir/.nuget/packages/godotsharp/$GodotVersion/lib/$NetFramework/GodotSharp.English.xml"

  GodotSharpEditorOriginalFile="$home_dir/.nuget/packages/godotsharpeditor/$GodotVersion/lib/$NetFramework/GodotSharpEditor.xml"
  GodotSharpEditorEnglishFile="$home_dir/.nuget/packages/godotsharpeditor/$GodotVersion/lib/$NetFramework/GodotSharpEditor.English.xml"

  if [[ ! -f "$GodotSharpEnglishFile" ]]; then
    if ! copy_file "$GodotSharpOriginalFile" "$GodotSharpEnglishFile"; then
      pause_wait
      exit 1
    fi
  fi

  if [[ ! -f "$GodotSharpEditorEnglishFile" ]]; then
    if ! copy_file "$GodotSharpEditorOriginalFile" "$GodotSharpEditorEnglishFile"; then
      pause_wait
      exit 1
    fi
  fi
}

show_language_option_menu() {
  clear_screen
  echo "========================="
  echo "     Language Option"
  echo "========================="
  echo "1. bilingual"
  echo "2. monolingual"
  echo "0. Regain (English)"
  echo "======================"
}

select_language_option() {
  while true; do
    show_language_option_menu
    read -r -p "Please select a language option...(1-2|0): " choice

    case "$choice" in
      1)
        LanguageOption="Bilingual."
        return 0
        ;;
      2)
        LanguageOption=""
        return 0
        ;;
      0)
        regain_language
        exit 0
        ;;
      *)
        clear_screen
        echo "Invalid input. Please select again!"
        pause_wait
        ;;
    esac
  done
}

show_language_menu() {
  clear_screen
  echo "==========================="
  echo "     Select A Language"
  echo "==========================="
  echo "1.  语言 (zh-CN)"
  echo "2.  語言 (zh-TW)"
  echo "3.  言語 (Jp)"
  echo "4.  언어 (Ko)"
  echo "5.  língua (pt-BR)"
  echo "6.  язык (Ru)"
  echo "7.  lengua (Es)"
  echo "8.  langue (Fr)"
  echo "9.  Sprache (De)"
  echo "10. lingua (It)"
  echo "11. jazyk (Cs)"
  echo "12. język (Pl)"
  echo "13. мова (Uk)"
  echo "======================"
}

select_language() {
  while true; do
    show_language_menu
    read -r -p "Please select a language...(1-13): " choice

    case "$choice" in
      1) SelectLanguage="zh-CN"; return 0 ;;
      2) SelectLanguage="zh-TW"; return 0 ;;
      3) SelectLanguage="Jp"; return 0 ;;
      4) SelectLanguage="Ko"; return 0 ;;
      5) SelectLanguage="pt-BR"; return 0 ;;
      6) SelectLanguage="Ru"; return 0 ;;
      7) SelectLanguage="Es"; return 0 ;;
      8) SelectLanguage="Fr"; return 0 ;;
      9) SelectLanguage="De"; return 0 ;;
      10) SelectLanguage="It"; return 0 ;;
      11) SelectLanguage="Cs"; return 0 ;;
      12) SelectLanguage="Pl"; return 0 ;;
      13) SelectLanguage="Uk"; return 0 ;;
      *)
        clear_screen
        echo "Invalid input. Please select again!"
        pause_wait
        ;;
    esac
  done
}

apply_language() {
  local script_dir
  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  GodotSharpFilePath="$script_dir/$SelectLanguage/v$GodotVersion/GodotSharp.${LanguageOption}${SelectLanguage}.xml"
  GodotSharpEditorFilePath="$script_dir/$SelectLanguage/v$GodotVersion/GodotSharpEditor.${LanguageOption}${SelectLanguage}.xml"

  if [[ -f "$GodotSharpFilePath" ]]; then
    cp "$GodotSharpFilePath" "$GodotSharpOriginalFile"
  else
    echo "The file was not found as: \"$GodotSharpFilePath\""
  fi

  if [[ -f "$GodotSharpEditorFilePath" ]]; then
    cp "$GodotSharpEditorFilePath" "$GodotSharpEditorOriginalFile"
  else
    echo "The file was not found as: \"$GodotSharpEditorFilePath\""
  fi

  echo "language done."
  pause_wait
  exit 0
}

regain_language() {
  if [[ -f "$GodotSharpEnglishFile" ]]; then
    cp "$GodotSharpEnglishFile" "$GodotSharpOriginalFile"
  else
    echo "The file was not found as: \"$GodotSharpEnglishFile\""
  fi

  if [[ -f "$GodotSharpEditorEnglishFile" ]]; then
    cp "$GodotSharpEditorEnglishFile" "$GodotSharpEditorOriginalFile"
  else
    echo "The file was not found as: \"$GodotSharpEditorEnglishFile\""
  fi

  echo "regain done."
  pause_wait
}

main() {
  select_godot_version
  prepare_english_backups
  select_language_option
  select_language
  apply_language
}

main
