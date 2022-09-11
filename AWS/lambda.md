# Lambda

## 1. Lambda Quotas (람다 할당량)

Lambda를 사용하기 전에 꼭 먼저 체크해봐야하는 사항들...!

- Lambda Extension : 원하는 모니터링, 관찰, 보안 및 거버넌스 도구와 함수를 통합할 수 있음.
- Concurrency Excution : 기본 할당량은 1,000이지만 최대 한도는 "수십만"까지 증가 가능
- 업로드된 함수 스토리지 : 기본 75GB, TB까지 증가 가능
- 제한 시간 : 900초 (15분)
- 함수 계층 : 5개
- 함수 버스트 동시성 : 500~3,000(리전에 따라 다름.) 서울 리전의 경우 500.
- Lambda API 요청
  - 리전당 호출 요청(초당 요청 수) : 10배의 동시 실행 할당량. 현재 서울리전의 경우 기본 동시 실행 할당량이 1,000이므로 10배면, 10,000.
  - 비동기식 AWS 서비스 리소스에 대한 리전별 호출 요청(초당 요청 수) : 무제한 요청 허용. 실행 속도는 함수에 사용할 수 있는 동시성에 따라 다름.
  - GetFunction API 요청 : 초당 요청 100개
  - GetPolicy API 요청 : 초당 요청 15개
  - 나머지 제어 플레인 API 요청(GetFunction, GetPolicy 요청 제외 : 초당 요청 15개

참고자료
[Lambda 함수 크기 조정](https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html)
