## 프로젝트 소개
반려동물을 키우는 가구가 늘어남에 따라 반려동물의 건강에 대한 관심도 늘어나고 있으며, 자연히 동물병원을 방문하는 사람들의 수도 증가하고 있습니다. 이에 따라 홈페이지를 통해 간편하게 예약이 가능하며 예약/진료 내역을 확인할 수 있는 사이트를 기획하였습니다.

## 프로젝트 정보
수행 기간: 2021.03~2021.04 (약 2개월 소요)
사용 기술: HTML, CSS, Javascript, JSP, MySQL
참가 인원: 1명(개인 프로젝트)
주요 기능: 회원가입, 정보 수정 및 탈퇴, 예약 기능, DB 내역 조회

## 화면 설명
![image](https://user-images.githubusercontent.com/79146920/122904755-95ad2780-d38b-11eb-82a2-9a871771c8a4.png)
페이지의 메인 화면입니다.
HTML과 CSS를 사용했으며, div를 통해 공간을 분리했습니다.
JSP를 통해 Header 페이지를 본문 위쪽에 삽입하였으며, 오른쪽의 메뉴는 JSP를 이용해 로그인 여부에 따라 로그인/로그아웃 문구가 나오도록 구성했습니다.

![image](https://user-images.githubusercontent.com/79146920/122918371-05c2aa00-d39a-11eb-8606-db7aa735e9c0.png)

로그인 화면입니다.
form을 통해 데이터를 입력 후 DB의 데이터와 조회합니다.

![image](https://user-images.githubusercontent.com/79146920/122921686-bda58680-d39d-11eb-9bc2-5dc8512e3174.png)
![image](https://user-images.githubusercontent.com/79146920/122921698-c007e080-d39d-11eb-981a-558504ca9e5c.png)

Javascript로 ID/비밀번호 입력 여부에 따라 유효성 검사를 실시합니다.

![image](https://user-images.githubusercontent.com/79146920/122904943-c0977b80-d38b-11eb-8083-49b3e0612aaf.png)

회원가입 페이지를 통해 회원 정보를 DB에 저장합니다.

![image](https://user-images.githubusercontent.com/79146920/122905947-9db99700-d38c-11eb-8eb3-70ab2d58777c.png)
![image](https://user-images.githubusercontent.com/79146920/122906003-aa3def80-d38c-11eb-98ad-64b5b97fb5c1.png)

ID 중복 검사의 경우는 DB를 조회해 결과를 새 창에 띄워주는 방식으로 구성하였습니다.

![image](https://user-images.githubusercontent.com/79146920/122923886-1bd36900-d3a0-11eb-8be5-8c7474c142e9.png)
비밀번호 찾기 화면입니다.

![image](https://user-images.githubusercontent.com/79146920/122923771-ff373100-d39f-11eb-888a-1c1e9a06e053.png)

ID와 이름을 조회해 비밀번호를 확인할 수 있도록 구성하였습니다.


![image](https://user-images.githubusercontent.com/79146920/122906149-ce99cc00-d38c-11eb-8b7d-9368c8b92285.png)

예약 페이지입니다.
input의 date 타입과 라디오 버튼을 통해 날짜/시간을 선택하며, TextArea로 내용 전달이 가능하게 구성했습니다.

![image](https://user-images.githubusercontent.com/79146920/122907093-c1311180-d38d-11eb-9550-f064170e8490.png)
![image](https://user-images.githubusercontent.com/79146920/122907924-93000180-d38e-11eb-8c19-d03f0bad56cb.png)

예약내역과 진료내역을 확인할 수 있는 페이지입니다.
회원 ID를 조건으로 DB를 조회해 해당 회원의 데이터만 나오도록 했습니다.

![image](https://user-images.githubusercontent.com/79146920/122907997-a27f4a80-d38e-11eb-9678-5a328931f9de.png)

회원정보 수정이 가능한 마이페이지입니다.
ID는 Readonly 속성을 주어 수정하지 못하도록 하였으며, 해당 페이지에서 작성한 내용으로 DB를 업데이트하도록 구성하였습니다.

![image](https://user-images.githubusercontent.com/79146920/122922982-27726000-d39f-11eb-874c-710af982227a.png)

수정되었을 경우 안내문구가 출력되며, 왼쪽 메뉴의 회원 이름이 바로 바뀌도록 구성했습니다.

## 개선점
* ID 중복체크 기능이 완전하지 않음: 중복 여부만 알려주고 가입 막지 못함
* 예약 제한이 제대로 구현되지 않음
