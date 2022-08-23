# DNS-SPF

## 1. SPF 란?

- Sender Policy Framwork
- 이메일 헤더는 여러 가지 방법으로 위조될 수 있지만, 현재 SMTP(Simple Mail Transfer Protocol)는 반송경로(reverse path) 혹은 전송된 SMTP 명령어에 대하여 아무런 확인을 하고 있지 않음.

SPF 레코드 값으로 255자가 넘는 값을 주고 싶다면, A 레코드를 이용하여 주면된다.

```
example.com.    IN MX       10 mx.example.com
mx.example.com  IN A        192.0.2.1
a.example.com   IN TXT      "v=spf1 mx:example.com -all"
b.example.com   IN TXT      "v=spf1 a:mx.example.com -all"
c.example.com   IN TXT      "v=spf1 ip4:192.0.2.1 -all"
```

1. a.example.com 의 SPF 레코드 처리시
   - example.com의 mx 레코드를 구해야 함
   - 각 mx 서버에 대하여 A 레코드를 구하기 위한 여러 번의 lookup이 필요함
2. b.example.com 의 SPF 레코드 처리시
   - mx.example.com 의 A 레코드를 구하기 위한 한번의 룩업이 필요하다
3. c.example.com 의 SPF 레코드 처리시
   - 레코드 처리를 위한 DNS 질의가 필요치 않다.

> 메일 발송 서버의 IP의 변동이 많아서 효율적이 서버관리를 위하여 불가피하게 "A" 또는 "mx" 레코드가 사용되어야 하는 경우를 제외하고는 질의 수가 최소화된 SPF 레코드를 출판함이 바람직하다.
