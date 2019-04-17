#!/bin/bash
Green_font="\033[32m" && Yellow_font="\033[33m" && Red_font="\033[31m" && Font_suffix="\033[0m"
Info="${Green_font}[Info]${Font_suffix}"
Byebye="${Red_font}感谢使用书记的脚本!!!\n更多内容请关注 → Loli分享论坛：www.moecat.cn 樱花博客：www.loli.team ！${Font_suffix}"
Thank="${Green_font}感谢使用书记的脚本!!${Font_suffix}"
Error="${Red_font}[Error]${Font_suffix}"
PANEL_DIR=/www/server/panel
bt_domain=https://api.loli.host/cs
MAIN_RETURN=${Red_font}[宝塔面板v6.9.0插件破解脚本]${Font_suffix}
MAIN_RETURNN=${Red_font}[无需面板安装插件，请使用本命令进行安装！]${Font_suffix}
MAIN_RETURNA=${Red_font}[无需面板安装插件，请使用本命令进行安装！]${Font_suffix}

# 网站防篡改 补丁下载
plugin_proof(){
	 wget -O proof.sh ${bt_domain}/install/plugin/tamper_proof/proof.sh && chmod 755 proof.sh && bash proof.sh
	 bash proof.sh install
	 rm -rf /proof.sh
	 echo -e "${Info} 网站防篡改破解操作完成!"
	 plugin_nginx
}

# 宝塔加固 补丁下载
plugin_syssafe(){
	 wget -O syssafe.sh ${bt_domain}/install/plugin/syssafe/syssafe.sh && chmod 755 syssafe.sh && bash syssafe.sh
	 bash syssafe.sh install
	 rm -rf /syssafe.sh
	 echo -e "${Info} 宝塔加固破解操作完成!"
	 plugin_nginx
}

# 监控报表 补丁下载
plugin_total(){
	 wget -O total.sh ${bt_domain}/install/plugin/total/total.sh && chmod 755 total.sh && bash total.sh
	 bash total.sh install
	 rm -rf /total.sh
	 echo -e "${Info} 监控报表破解操作完成!"
	 plugin_nginx
}

# Nginx 防火墙 补丁下载
plugin_btwaf(){
	 wget -O btwaf.sh ${bt_domain}/install/plugin/btwaf/btwaf.sh && chmod 755 btwaf.sh && bash btwaf.sh
	 bash btwaf.sh install
	 rm -rf /btwaf.sh
	 echo -e "${Info} Nginx防火墙破解操作完成!"
}

# 宝塔负载均衡 补丁下载
plugin_leveling(){
	 wget -O leveling.sh ${bt_domain}/install/plugin/load_leveling/leveling.sh && chmod 755 leveling.sh && bash leveling.sh
	 bash leveling.sh install
	 rm -rf /leveling.sh
	 echo -e "${Info} 宝塔负载均衡破解操作完成!"
}

# MySQL主从复制 补丁下载
plugin_masterslave(){
	 wget -O masterslave.sh ${bt_domain}/install/plugin/masterslave/masterslave.sh && chmod 755 masterslave.sh && bash masterslave.sh
	 bash masterslave.sh install
	 rm -rf /masterslave.sh
	 echo -e "${Info} MySQL主从复制破解操作完成!"
}

# 宝塔任务管理器 补丁下载
plugin_manager(){
	 wget -O manager.sh ${bt_domain}/install/plugin/task_manager/manager.sh && chmod 755 manager.sh && bash manager.sh
	 bash manager.sh install
	 rm -rf /manager.sh
	 echo -e "${Info} 宝塔任务管理器破解操作完成!"
}

# 微信小程序 补丁下载
plugin_app(){
	 wget -O app.sh ${bt_domain}/install/plugin/app/app.sh && chmod 755 app.sh && bash app.sh
	 bash app.sh install
	 rm -rf /app.sh
	 echo -e "${Info} 微信小程序破解操作完成!"
}

# 异常监控推送 补丁下载
plugin_push(){
	 wget -O push.sh ${bt_domain}/install/plugin/msg_push/push.sh && chmod 755 push.sh && bash push.sh
	 bash push.sh install
	 rm -rf /push.sh
	 echo -e "${Info} 异常监控推送破解操作完成!"
}

# 宝塔数据同步工具 补丁下载
plugin_rsync(){
	 wget -O rsync.sh ${bt_domain}/install/plugin/rsync/rsync.sh && chmod 755 rsync.sh && bash rsync.sh
	 bash rsync.sh install
	 rm -rf /rsync.sh
	 echo -e "${Info} 宝塔数据同步工具破解操作完成!"
}

# 宝塔安全登录 补丁下载
plugin_safelogin(){
	 wget -O safelogin.sh ${bt_domain}/install/plugin/safelogin/safelogin.sh && chmod 755 safelogin.sh && bash safelogin.sh
	 bash safelogin.sh install
	 rm -rf /safelogin.sh
	 echo -e "${Info} 宝塔安全登录破解操作完成!"
}

# Apache 防火墙 补丁下载
plugin_httpd(){
	 wget -O httpd.sh ${bt_domain}/install/plugin/btwaf_httpd/httpd.sh && chmod 755 httpd.sh && bash httpd.sh
	 bash httpd.sh install
	 rm -rf /httpd.sh
	 echo -e "${Info} Apache防火墙破解操作完成!"
}

# 我要自毁啦~
gameover(){
     clear
     echo -e "${Byebye}"
	 rm -rf bt_plugin.sh
}

plugin_nginx(){
clear
echo -e "${Green_font}
#=======================================
# Name:            Bt-Plugin
# Version:         6.9.0
# Author I:        樱花博客
# Author II:       Loli分享论坛
# Copyright I:     https://www.loli.team
# Copyright II:    https://www.moecat.cn
# QQ交流群：       687305290
# TG交流群：       t.me/freechevereto
# 本脚本服务器提供商：www.chanmir.com
#=======================================
${Font_suffix}"
echo -e "${MAIN_RETURN}"
echo -e "1.网站防篡改程序\n2.宝塔系统加固\n3.网站监控报表\n4.Nginx防火墙\n5.宝塔负载均衡\n6.MySQL主从复制\n7.宝塔任务管理器\n8.微信小程序\n9.异常监控推送\n10.宝塔数据同步工具\n11.宝塔安全登录\n0.返回上一步"
read -p "输入数字以选择:" plugin1

if [[ "${plugin1}" == "1" ]]; then
	plugin_proof
elif [[ "${plugin1}" == "2" ]]; then
    plugin_syssafe
elif [[ "${plugin1}" == "3" ]]; then
    plugin_total
elif [[ "${plugin1}" == "4" ]]; then
    plugin_btwaf
elif [[ "${plugin1}" == "5" ]]; then
    plugin_leveling
elif [[ "${plugin1}" == "6" ]]; then
    plugin_masterslave
elif [[ "${plugin1}" == "7" ]]; then
    plugin_manager
elif [[ "${plugin1}" == "8" ]]; then
    plugin_app
elif [[ "${plugin1}" == "9" ]]; then
    plugin_push
elif [[ "${plugin1}" == "10" ]]; then
    plugin_rsync
elif [[ "${plugin1}" == "11" ]]; then
    plugin_safelogin	
elif [[ "${plugin1}" == "0" ]]; then
    main		
else
	clear
	exit 1
fi	
}
main

plugin_apache(){
clear
echo -e "${Green_font}
#=======================================
# Name:            Bt-Plugin
# Version:         6.9.0
# Author I:        樱花博客
# Author II:       Loli分享论坛
# Copyright I:     https://www.loli.team
# Copyright II:    https://www.moecat.cn
# QQ交流群：       687305290
# TG交流群：       t.me/freechevereto
# 本脚本服务器提供商：www.chanmir.com
#=======================================
${Font_suffix}"
echo -e "${MAIN_RETURN}"
echo -e "1.网站防篡改程序\n2.宝塔系统加固\n3.网站监控报表\n4.Apache防火墙\n5.宝塔负载均衡\n6.MySQL主从复制\n7.宝塔任务管理器\n8.微信小程序\n9.异常监控推送\n10.宝塔数据同步工具\n11.宝塔安全登录\n0.返回上一步"
read -p "输入数字以选择:" plugin2

if [[ "${plugin2}" == "1" ]]; then
	plugin_proof
elif [[ "${plugin2}" == "2" ]]; then
    plugin_syssafe
elif [[ "${plugin2}" == "3" ]]; then
    plugin_total
elif [[ "${plugin2}" == "4" ]]; then
    plugin_httpd
elif [[ "${plugin2}" == "5" ]]; then
    plugin_leveling
elif [[ "${plugin2}" == "6" ]]; then
    plugin_masterslave
elif [[ "${plugin2}" == "7" ]]; then
    plugin_manager
elif [[ "${plugin2}" == "8" ]]; then
    plugin_app
elif [[ "${plugin2}" == "9" ]]; then
    plugin_push
elif [[ "${plugin2}" == "10" ]]; then
    plugin_rsync
elif [[ "${plugin2}" == "11" ]]; then
    plugin_safelogin	
elif [[ "${plugin2}" == "0" ]]; then
    main		
else
	clear
	exit 1
fi	
}
main

main(){
clear
echo -e "${Thank}"
echo -e "${Green_font}
#=======================================
# Name:            Bt-Plugin
# Version:         6.9.0
# Author I:        樱花博客
# Author II:       Loli分享论坛
# Copyright I:     https://www.loli.team
# Copyright II:    https://www.moecat.cn
# QQ交流群：       687305290
# TG交流群：       t.me/freechevereto
# 本脚本服务器提供商：www.chanmir.com
#=======================================
${Font_suffix}"
echo -e "${MAIN_RETURN}"
echo -e "1.Nginx 插件破解补丁 ${MAIN_RETURNN}\n2.Apache 插件破解补丁 ${MAIN_RETURNA}\n3.退出脚本"
read -p "输入数字以选择:" function

while [[ ! "${function}" =~ ^[1-3]$ ]]
	do
		echo -e "${Error} 无效输入"
		echo -e "${Info} 请重新选择" && read -p "输入数字以选择:" function
	done

if [[ "${function}" == "1" ]]; then
	plugin_nginx
elif [[ "${function}" == "2" ]]; then
    plugin_apache
elif [[ "${function}" == "3" ]]; then
    gameover
else
	clear
	exit 1
fi	
}
main