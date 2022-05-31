# AWS WAF

## 1. AWS WAF 규칙 작업

웹 요청이 규칙에 정의된 조건과 일치할 때, 웹 요청으로 수행할 작업을 AWS WAF에 알려준다.

- count
  AWS WAF 요청의 개수를 세지만, 요청의 허용 또는 차단 여부를 결정하지 않는다.
  이 작업을 수행하는 동안 AWS WAF는 Web ACL의 나머지 규칙을 계속 처리한다.
  요청에 사용자 지정 헤더를 삽입하고 다른 규칙과 일치시킬 수 있는 레이블을 추가할 수 있다.
- Allow
  AWS WAF 요청이 보호된 객체로 전달되는 것을 허용한다.
  AWS 처리 및 응답을 위한 리소스로 보호된 리소스를 전달하기 전에 요청에 사용자 지정 헤더를 삽입할 수 있다.
- Block
  AWS WAF 요청을 차단한다. 기본 설정은 AWS 리소스가 HTTP로 응답한다.
- CAPTCHA
  AWS WAF를 실행한다. CAPTCHA 요청을 확인하고 그 작업을 AWS WAF 확인 결과에 따라서 요청이 종료되거나 종료되지 않을 수 있다.

[ 참고 ]
[1. AWS WAF 규칙 작업](https://docs.aws.amazon.com/ko_kr/waf/latest/developerguide/waf-rule-action.html)
