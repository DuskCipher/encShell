
#!/bin/bash

# UCH-2009 Encrypt/Decrypt Tools - Color Configuration
# Centralized color management for consistent styling

## Standard ANSI Colors (Foreground)
export R="$(printf '\033[31m')"      # Red
export GR="$(printf '\033[32m')"     # Green  
export O="$(printf '\033[33m')"      # Orange/Yellow
export BL="$(printf '\033[34m')"     # Blue
export MAGENTA="$(printf '\033[35m')" # Magenta
export CYAN="$(printf '\033[36m')"   # Cyan
export WT="$(printf '\033[37m')"     # White
export BLK="$(printf '\033[30m')"    # Black

## Background Colors
export RBG="$(printf '\033[41m')"    # Red Background
export GRBG="$(printf '\033[42m')"   # Green Background
export OBG="$(printf '\033[43m')"    # Orange Background
export BLBG="$(printf '\033[44m')"   # Blue Background
export MAGENTABG="$(printf '\033[45m')" # Magenta Background
export CYANBG="$(printf '\033[46m')"    # Cyan Background
export WTBG="$(printf '\033[47m')"      # White Background
export BLKBG="$(printf '\033[40m')"     # Black Background

## Text Formatting
export BOLD="$(printf '\033[1m')"    # Bold text
export DIM="$(printf '\033[2m')"     # Dim text
export UNDERLINE="$(printf '\033[4m')" # Underlined text
export BLINK="$(printf '\033[5m')"   # Blinking text
export REVERSE="$(printf '\033[7m')" # Reverse colors

## Reset Colors
export RESET="$(printf '\033[0m')"   # Reset all formatting
export RESETBG="$(printf '\e[0m\n')" # Reset with newline

## Custom Color Combinations for UI Elements
export SUCCESS="${GR}✓${RESET}"      # Success indicator
export ERROR="${R}✗${RESET}"         # Error indicator  
export WARNING="${O}⚠${RESET}"       # Warning indicator
export INFO="${CYAN}ℹ${RESET}"       # Info indicator
export QUESTION="${BL}?${RESET}"     # Question indicator

## UI Element Colors
export HEADER="${BOLD}${CYAN}"       # Headers
export SUBHEADER="${BOLD}${WT}"      # Subheaders
export HIGHLIGHT="${BOLD}${O}"       # Highlighted text
export PROMPT="${BL}➮${RESET}"       # Input prompts
export MENU_ITEM="${WT}"             # Menu items
export MENU_NUMBER="${R}"            # Menu numbers
export MENU_BRACKET="${MAGENTA}"     # Menu brackets

## Status Colors
export STATUS_ONLINE="${GR}Online${RESET}"
export STATUS_OFFLINE="${R}Offline${RESET}"
export STATUS_READY="${GR}READY${RESET}"
export STATUS_NOT_FOUND="${R}NOT FOUND${RESET}"

## Function to reset terminal colors
reset_colors() {
    printf "${RESET}"
    tput sgr0 2>/dev/null || true
    tput op 2>/dev/null || true
}

## Function to print colored text
print_colored() {
    local color="$1"
    local text="$2"
    printf "%s%s%s" "$color" "$text" "$RESET"
}

## Function to print status messages
print_status() {
    local type="$1"
    local message="$2"
    case "$type" in
        "success") printf "%s %s\n" "$SUCCESS" "$message" ;;
        "error")   printf "%s %s\n" "$ERROR" "$message" ;;
        "warning") printf "%s %s\n" "$WARNING" "$message" ;;
        "info")    printf "%s %s\n" "$INFO" "$message" ;;
        "question") printf "%s %s" "$QUESTION" "$message" ;;
        *) printf "%s\n" "$message" ;;
    esac
}

## Function to print section headers
print_header() {
    local title="$1"
    local width="${2:-50}"
    local char="${3:-═}"
    
    printf "\n%s%s%s\n" "$HEADER" "$title" "$RESET"
    printf "%s" "$SUBHEADER"
    for ((i=1; i<=${#title}; i++)); do printf "%s" "$char"; done
    printf "%s\n" "$RESET"
}

## Function to print menu items
print_menu_item() {
    local number="$1"
    local description="$2"
    printf "  %s[%s%s%s]%s %s%s%s\n" \
        "$MENU_BRACKET" "$MENU_NUMBER" "$number" "$MENU_BRACKET" "$RESET" \
        "$MENU_ITEM" "$description" "$RESET"
}

## Export all functions
export -f reset_colors
export -f print_colored
export -f print_status
export -f print_header
export -f print_menu_item
