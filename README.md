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

#### 20230518

- Installed ranger in iterm2
- Added neovim as default editor

#### 20230525

- Added alias for ranger in .zshrc
  - aliased source ranger to change directory when quitting ranger

#### 20230530

- Added spell check in neovim set.lua file
  - z= - word suggestions
  - zg - add word to dictionary
  - ]s - jump to next spelling error
  - [s - jump to previous spelling error

#### 20230531

- Added default config for prettier in null_ls file
- Added utils/prettier-config folder for prettier.config.js
- Renamed ide.sh to ide2.sh
  - Made a new ide.sh
- Added aliases for both shell scripts

#### 20230605

- Added vertical split in lower pane of ide.sh

#### 20230607

- Changed ranger rc.conf set show_hidden to true
- Added in nvim remap:
  - yank into system clipboard
  - delete into system clipboard
  - paste from system clipboard
- Included packer_compiled.lua in gitignore

#### 20230907

- Added gopls in lsp
- Changed or commented out deprecated settings from recent update
- Used `MasonInstall` to install go formatters (gofumpt, goimports-reviser, golines)

#### 20231205

- Moved nvim directory to Packer-Config
- Added Neovim lazy config
