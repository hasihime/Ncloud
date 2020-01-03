## 네이버 클라우드 서버 설정

0. 초기화면

<img src="img/00.PNG">

01 - ACG(Access Control Group) 생성
  - AWS로 하면 Security Group으로 볼 수 있다.
<img src="img/01.PNG">

<img src="img/01-2.PNG">

02. Init script 설정
  - 서버를 처음 생성하고 Httpd, php 등 초기 설정 파일 설치 및 설정을 함
<img src="img/02.PNG">

~~~bash
#!/bin/bash

yum -y install httpd php mysql php-mysql
systemctl enable httpd
cd /var/www/html
wget http://211.249.50.207/lab/lab.tgz
tar xvfz lab.tgz
cat phpadd >> /etc/httpd/conf/httpd.conf
systemctl start httpd

echo 'ncp!@#123' | passwd --stdin root
~~~

<img src="img/02-2.PNG">

03. 서버 

<img src="img/03.PNG">

<img src="img/03-1.PNG">

<img src="img/03-2.PNG">

<img src="img/03-3.PNG">

04. 공인 IP 할당

<img src="img/04.PNG">

<img src="img/04-1.PNG">

<img src="img/04-2.PNG">

<img src="img/04-3.PNG">

05. 서버 이미지 생성

<img src="img/05.PNG">

<img src="img/05-1.PNG">

<img src="img/05-2.PNG">

  - 이미지한 서버를 생성시 root나 administrator의 패스워드는 변경됨. 단 그 하위 유저의 계정 및 패스워드는 유지
<img src="img/05-3.PNG">

<img src="img/05-4.PNG">

<img src="img/05-5.PNG">

<img src="img/05-6.PNG">


06. 스토리지 생성

<img src="img/06.PNG">

<img src="img/06-1.PNG">

<img src="img/06-2.PNG">

<img src="img/06-3.PNG">
