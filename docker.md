# 安装Docker

```bash
sudo pacman -S docker # 安装docker
sudo systemctl enable docker.service #启用docker服务
sudo systemctl start docker.service #启动docker服务

sudo docker run -it --rm archlinux bash -c "echo hello world" #验证是否可以运行容器，下载最新的archlinux镜像并使用它在容器中运行Hello World程序

# 创建docker用户组
sudo groupadd docker
# 应用用户加入docker用户组
sudo usermod -aG docker ${USER}
# 重启docker服务
sudo systemctl restart docker
# 退出当前用户重新登陆

```

 

