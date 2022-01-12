# IAM

Ideneity & Access Management

## 1). IAM Policy

AWS 서비스와 리소스에 대한 인가 기능을 제공하며, 어떤 IAM `principal`이 어떤 `condition`에서 AWS의 어떤 `resource`에 대해 어떤 `action`을 허용하거나 차단할 것인지 지정한다.

구조
- Effect : 명시된 정책에 대한 허용 혹은 차단
- Principal : 접근을 허용 혹은 차단하고자 하는 대상
    ```
    "Principal": {
        "AWS": "arn:aws:iam::123456789012:user/username"
    }
    ```
- Action : 허용 혹은 차단하고자하는 접근 타입
- Resource : 요청의 목적지가 되는 서비스
- Condition : 명시된 조건 유효하다고 판단될 수 있는 조건
