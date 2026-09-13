#!/usr/bin/fish
function theme_everforest --description 'Apply everforest theme'
  set -l mode 'light'
  if test  (count $argv) -gt 0
    set mode $argv[1]
  end

  set -g contrast 'medium'
  if test  (count $argv) -gt 1
    set contrast $argv[2]
  end

  switch $contrast
  case 'soft'
  case 'medium'
  case 'hard'
  case '*'
      set_color $fish_color_error
      echo 'Unknown contrast $contrast, choose soft, medium or hard'
      set_color $fish_color_normal
      return 1
  end

  switch $mode
    case 'light'
      __theme_everforest_base
      __theme_everforest_light
    case 'dark'
      __theme_everforest_base
      __theme_everforest_dark
    case '*'
      set_color $fish_color_error
      echo 'Unknown mode $mode, choose light or dark'
      set_color $fish_color_normal
      return 1
  end
  __theme_everforest_palette
  return 0
end

function __theme_everforest_base
  __printf_color 1 'e6/7e/80'
  __printf_color 2 'a7/c0/80'
  __printf_color 3 'db/bc/7f'
  __printf_color 4 '7f/bb/b3'
  __printf_color 5 'd6/99/b6'
  __printf_color 6 '83/c0/92'
end

function __theme_everforest_light
  set -l bg 'ef/eb/d4'
  switch $contrast
    case "soft"
      set bg 'e5/df/c5'
    case "hard"
      set bg 'f2/ef/df'
  end
  command printf "\033]11;rgb:$bg\007"

  set -l fg '5c/6a/72'
  command printf "\033]10;rgb:$fg\007"

  __printf_color 0 $bg
  __printf_color 7 $fg
  __printf_color 8 '93/9f/91'
  __printf_color 9 'f8/55/52'
  __printf_color 10 '8d/a1/01'
  __printf_color 11 'df/a0/00'
  __printf_color 12 '3a/94/c5'
  __printf_color 13 'df/69/ba'
  __printf_color 14 '35/a7/7c'
  __printf_color 15 $fg
end

function __theme_everforest_dark
  set -l bg '23/2a/2e'
  switch $contrast
    case "soft"
      set bg '29/31/36'
    case "hard"
      set bg '1e/23/26'
  end
  command printf "\033]11;rgb:$bg\007"

  set -l fg 'd3/c6/aa'
  command printf "\033]10;rgb:$fg\007"

  __printf_color 0 $bg
  __printf_color 7 $fg
  __printf_color 8 '85/92/89'
  __printf_color 9 'e6/7e/80'
  __printf_color 10 'a7/c0/80'
  __printf_color 11 'db/bc/7f'
  __printf_color 12 '7f/bb/b3'
  __printf_color 13 'd6/99/b6'
  __printf_color 14 '83/c0/92'
  __printf_color 15 $fg
end

function __theme_everforest_palette
  __printf_color 236 '29/31/36'
  __printf_color 234 '1e/23/26'

  __printf_color 235 '23/2a/2e'
  __printf_color 237 '5c/6a/72'
  __printf_color 239 '2d/35/3b'
  __printf_color 241 '34/3f/44'
  __printf_color 243 '3d/48/4d'

  __printf_color 244 '93/9f/91'
  __printf_color 245 '93/9f/91'

  __printf_color 228 'e5/df/c5'
  __printf_color 230 'f2/ef/df'

  __printf_color 229 '5c/6a/72'
  __printf_color 223 'd3/c6/aa'
  __printf_color 250 'fd/f6/e3'
  __printf_color 248 'f4/f0/d9'
  __printf_color 246 'e6/e2/cc'

  __printf_color 167 'fb/49/34'
  __printf_color 142 'a7/c0/80'
  __printf_color 214 'db/bc/7f'
  __printf_color 109 '7f/bb/b3'
  __printf_color 175 'd6/99/b6'
  __printf_color 108 '83/c0/92'
  __printf_color 208 'a7/c0/80'

  __printf_color 88 'f8/55/52'
  __printf_color 100 '8d/a1/01'
  __printf_color 136 'df/a0/00'
  __printf_color 24 '3a/94/c5'
  __printf_color 96 'df/69/ba'
  __printf_color 66 '35/a7/7c'
  __printf_color 130 '93/b2/59'
end

function __printf_color
  command printf "\033]4;$argv[1];rgb:$argv[2]\007"
end
