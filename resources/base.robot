***Settings***
Library    SeleniumLibrary
Library    libs/db.py

Resource    hooks.robot
Resource    keywords.robot

Resource    components/Sidebar.robot
Resource    components/Toaster.robot

Resource    pages/LoginPage.robot
Resource    pages/CustomersPage.robot

***Variables***
${base_url}          http://192.168.99.100:3000/    
${admin_user}        admin@zepalheta.com.br
${admin_password}    pwd123
