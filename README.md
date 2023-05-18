# dotfiles

## Contents:

- .gitconfig
- .gitignore_global
- .p10k.zsh
- .tmux.conf
- .zshrc
- ide.sh
- /nvim
- prettier.config.txt (converted from .js for visibility)

## Updates in config:

#### 20230514

- Added vi-mode for terminal and tmux scroll
  - tmux scroll mode: prefix (<C-t>) then [
  - press q to escape scroll mode
- Added config in .zshrc for escape delay in terminal
  - Tmux escape delay setting is different

#### 20230515

- Added icons for virtual text (inline diagnostics)

#### 20230517

- Remapped staging in fugitive. (blocking 's' for window navigation)

#### 20230517 Version 2

- Added sorting config for telescope ('ascending' - list goes top to bottom)
- unbound 's' globally, instead of remapping it to 'l'