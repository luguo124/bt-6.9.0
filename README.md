Bt_Umaru Pro脚本：
yum -y install wget && wget -O Bt_Umaru_Pro.sh https://umaru.uk/Bt_Umaru_Pro.sh && chmod 755 Bt_Umaru_Pro.sh && ./Bt_Umaru_Pro.sh

bt-6.9.0
插件脚本：
wget -O bt_plugin.sh https://raw.githubusercontent.com/luguo124/bt-6.9.0/master/bt_plugin.sh && chmod 755 bt_plugin.sh && bash bt_plugin.sh

宝塔6.9.0 开心版（第二弹 新UI)
yum -y install wget && wget -O bt_6.9.0_v2.sh https://raw.githubusercontent.com/luguo124/bt-6.9.0/master/bt_6.9.0_v2.sh && chmod 755 bt_6.9.0_v2.sh && bash bt_6.9.0_v2.sh

宝塔6.9.0 开心版（第一弹 旧UI）
yum -y install wget && wget -O bt_6.9.0_v1.sh https://raw.githubusercontent.com/luguo124/bt-6.9.0/master/bt_6.9.0_v1.sh && chmod 755 bt_6.9.0_v1.sh && bash bt_6.9.0_v1.sh
不想使用开心版的，直接使用官方脚本转成免费
wget -O update.sh http://download.bt.cn/install/update.sh && bash update.sh free

宝塔面板6.8.9 开心版
yum -y install wget && wget -O bt_6.8.9.sh https://raw.githubusercontent.com/luguo124/bt-6.9.0/master/bt_6.8.9.sh && chmod 755 bt_6.8.9.sh && bash bt_6.8.9.sh

宝塔面板 第三方插件 开心版（订制插件）
wget -O bt_6.9.0_on.sh https://bt.he.sb/bt_6.9.0_on.sh && chmod 755 bt_6.9.0_on.sh && ./bt_6.9.0_on.sh

宝塔5.9.1 开心本地版
Centos/Fedora安装命令：
yum install -y wget && wget -O install.sh https://raw.githubusercontent.com/luguo124/bt-6.9.0/master/install.sh && sh install.sh

Ubuntu/Deepin/Debian安装命令：
yum install -y wget && wget -O install.sh https://raw.githubusercontent.com/luguo124/bt-6.9.0/master/install-ubuntu.sh && sh install.sh

升级专业版：
yum install -y wget && wget -O update.sh https://raw.githubusercontent.com/luguo124/bt-6.9.0/master/update_pro.sh && bash update.sh pro

重启面板：
service bt restart
