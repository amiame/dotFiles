# Neovim setup
## Instruction
1. Install Neovim
2. Install [packer.nvim](https://github.com/wbthomason/packer.nvim#quickstart)
   - Just do this: `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
3. Copy `.config/nvim/**/*` to `$HOME/.config/nvim/**/*`
4. Open Neovim. Navigate to `$HOME/.config/nvim/lua/amir/packer.lua`
5. Run Ex command `:so`
6. Reopen Neovim
7. Run Ex command `:PackerInstall`
8. Done

## tmux-sessionizer
1. Copy `.local/scripts/tmux-sessionizer` to `$HOME/.local/scripts/tmux-sessionizer`
2. Edit `$HOME/.local/scripts/tmux-sessionizer` to point to workspace
3. Done
