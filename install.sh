echo "nvim配置软链接"
ln -s ~/archlinux/.config/nvim ~/.config/nvim
echo "alacritty配置软链接"
ln -s ~/archlinux/.config/alacritty ~/.config/alacritty
# 安装telescope要的ripgrep和fd
sudo pacman -S ripgrep
sudo pacamn -S fd
