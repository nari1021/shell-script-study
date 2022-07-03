# Session1. 인프라 벤치마크 테스트 잘 해보기

by. 윤서율(SK C&C Cloud Transformation Group)

## 1. 벤치마크란?

- benchmark : 컴퓨팅에서 오브젝트의 상대적인 성능 측정을 하는 것

## 2. EKS로 테스트 진행해보기

- EKS 사용이유 : 클러스터 관리가 간편
- 테스트 방법
  요청서버, 응답서버, 테스트 대상 게이트웨이를 1개씩 증설하면서 테스트 진행
- 요청 서버 : 부하테스터, 오픈 소스 vegeta 커스텀
  https://github.com/tsenart/vegeta
- 응답 서버 : [Go echo web framwork](https://echo.labstack.com)
- 테스트 대상 게이트 웨이 서버
  [오픈소스 Kong](https://blog.naver.com/PostView.naver?blogId=dktmrorl&logNo=222413378405&parentCategoryNo=&categoryNo=19&viewDate=&isShowPopularPosts=true&from=search)
- 쿠버네티스를 이용한 리소스 제한으로는 정비례한 상승을 보이지 않았다.

## 3. AWS 인스턴스 타입 비교하기

- 직접 만든 애플리케이션 성능 테스트

</br><hr>

# Session2. 전직했더니 테크니컬 트레이너 였던 건에 대하여

- 시니어 개발자의 경력 과닐에 대해서 자신의 생각만 발표
- ProServ : IT Consultant / 단기간에 다양한 경험을 해볼 수 있는 직업
