# archlinux

## nvim配置

1. telescope需要模块

   ```bash
   sudo pacman -S ripgrep fd
   ```
2. python安装neovim模块

   ```bash
   sudo pacman -S python-pip
   pip install neovim --user
   ```
3. 不同的语言安装不同的格式化插件，如python安装black
   ```bash
   sudo pacman -S python-black
   ```
## ZSH配置
1. 安装zsh
   ```bash
   sudo pacman -S zsh

2. 切换shell为zsh

   ```bash
   chsh -s /bin/zsh
   ```

3. 安装oh-my-zsh
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

4. 安装Powerlevel10K到oh-my-zsh的theme目录下

   ```bash
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh}/themes/powerlevel10k
   ```
5. 主题换为p10k
   ```bash
   nvim ~/.zshrc
   将ZSH_THEME的值改为"powerlevel10k/powerlevel10k"