# VPC

## AWS를 사용한다면 반드시 알아야 할 네트워크 기초 지식

- VPC : 가상의 독립적인 네트워크 인프라
    - 172.31.0.0/16 = default VPC
- Subnet : 라우팅 테이블 설정 단위
- Routing Table
- Internet Gateway
- NACL : 네트워크의 흐름 제어
    - 라우팅테이블과 같이 서브넷 단위의 설정
    - Inbound / Outbound 모두 설정해야함
    - 룰 번호가 작을 수록 먼저 설정하게됨
    - 룰 번호가 매우 중요함
- Security Group : 상태 저장 방화벽

### 보안 강화된 네트워크를 위한 VPC 전략

- CIDR
- 일반적으로 네트워트 주소로 사설 IP 를 사용하는 이유?
    - 대역대가 모자르기 때문
    - 보안. 외부 인터넷으로부터의 접근을 원천 차단
- 추가 대역 가능
- IPv6 도 가능

### VPC Subnetting

- VPC 구조를 계층적 구조로 쪼개서 관리하는 것
- VPC에서 인터넷으로 노출시킬 표면적을 최소화

### VPC Subnet 모범 사례

- VPC에서 인터넷으로 노출시킬 표면적을 최소화

### VPC Routing 전략

- 인터넷과 양방향 통신이 필요한가?
- 인터넷과 아웃바운드 통신이 필요하다면? NAT Gateway 사용

### VPC NACL 전략

- DDoS 공격을 받는 다면?
- DDoS IP 를 Deny 걸 수 있음

### VPC Security Group 전략

- 보안그룹은 서로 참조할 수 있다는 것이 특징

## Hybrid Networking

- 다른 AWS 서비스와의 통신?

1. Gateway Endpoint
    - S3, DynamoDB 와 통신 시 사용
    - 통신할 Subnet을 선택 후 Gateway Endpoint 추가
    - Subnet Routing Table에 S3 prefix를 Endpoint policy 에 추가됨
    - IAM 정책을 통해서도 가능
2. PrivateLink
    - Gateway Endpoint 외의 95개의 서비스와 통신시 사용
    - 네트워크 인터페이스 생성되면서 업데이트 되는 IP를 통해서 연결됨
    - Network interface sg를 통해서 설정가능
    - VPC 팔라시
    

### 다수의 VPC 연결을 위한 Peering

- VPC Full Mesh 연결 기반의 관리
- VPN 연결 관리의 어려움
- DX 회선 연결 관리의 어려움

### AWS Transit Gateway

- 복잡한 Peering 연결시 사용하면 간편함
- 다수 VPC 연결 간소화
- VPN, DX를 TGW로만 연결
- ECMP, Multicast 기능 제공

### AWS Site-to-Site VPN

- 가장 간단하게는 VPN(Virtual Private Gateway)을 이용해서 연결한다.

### AWS Direct Connect(DX)

- 보다 안전한 연결 방법. Private VIF라는 논리적 터널을 이용해서 연결 가능
- 다수의 VPC와 연결이 필요하다면 TGW를 통해서 연결 가능

[참고]
- [AWS를 사용한다면 반드시 알아야 할 네트워크 기초 지식](https://youtu.be/vCNexbgYmQ8)
