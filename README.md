# UStore

<p align="center">
<img src="https://github.com/hyeon0678/ustore/assets/115452850/d8678a8d-dbca-45da-8bc6-e6a715136904" width="300" height="120"/>
</p>

> 개발기간: 2023.12.6 ~ 2023.1.18


## 프로젝트 소개
UStore는 창고형 마트의 운영 효율성 향상과 고객 서비스 개선을 위한 통합 시스템입니다<br/>
창고형 마트의 운영을 위해 재고 관리, 주문 처리,
매출 분석, 고객 관리 등 다양한 기능을 제공하여<br/>
창고형 마트의 경영을 지원하기 위해 만들었습니다

## 주요기능
<span style="font-size: 20px;">__1. 재고관리 기능__</span><br/>
- 매장 내 재고를 확인할 수 있다
- 파손/폐기/분실 재고를 등록할 수 있다
<br/>

<span style="font-size: 20px;">__2. 발주관리 기능__</span><br/>
- 매장에 필요한 발주 물품을 발주할 수 있다
- 발주 상품 종류를 추가할 수 있다
- 발주 현황을 확인할 수 있다
<br/>

<span style="font-size: 20px;">__3. 상품 결제기능__</span><br/>
- 매장 내 재고가 있는 상품을 결제할 수 있다

<br/>

<span style="font-size: 20px;">__4. 멤버십 관리 기능__</span><br/>
- 매장 회원을 등급과 종류에 따라 다르게 등록할 수 있다
- 회원의 결제 내역을 확인/관리 할 수 있다
- 회원의 등급을 변경할 수 있다
- 회원의 결제 내역을 환불할 수 있다

## ERD
![UStore (3)](https://github.com/hyeon0678/ustore/assets/115452850/1052b428-2c8c-4e3e-8638-15729aa8cc74)

## 아키텍처
![image](https://github.com/hyeon0678/ustore/assets/115452850/ca7cc9a0-b954-4e77-9df3-3c576129d88f)

## 사용 기술
_BACKEND_
<br/>
<img src="https://img.shields.io/badge/JAVA-FF3300?style=for-the-badge&logo=java&logoColor=white"> 
<img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
<img src="https://img.shields.io/badge/mybatis-007396?style=for-the-badge&logo=mybatis&logoColor=white">
<img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">
<img src="https://img.shields.io/badge/Amazon Ec2-FF9900?style=for-the-badge&logo=AmazonEc2&logoColor=white">
<img src="https://img.shields.io/badge/Amazon RDS-527FFF?style=for-the-badge&logo=AmazonRDS&logoColor=white">
<br/>
<br/>
_FRONTEND_
<br/>
  <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white"> 
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> 
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
<br/>
<br/>
_기타_
<br/>
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
<img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=Docker&logoColor=white">

## 팀원
오현비 : 로그인, 사원등록, 채팅, 알림, 배포 
김지혜 : 멤버십 
임재형 : 상품결제/환불, 인사관리, 자원관리
김수현 : 일정 및 출퇴근 등록, 공지사항 게시판, 익명 게시판
이한준 : 전자 결제
정지원 : 상품 입고, 재고, 발주, 통계
