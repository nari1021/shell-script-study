# 2장 쿠버네티스와 컨테이너

## 2.1. 컨테이너와 도커

- container runtime : Host OS가 제공하는 저수준의 container service를 사용해서 container set up or delete.

### 2.1.1. 도커 특징

- 분리 / 조절 기능
  - 애플리케이션 끼리 기반이되는 시스템으로부터 분리
  - 시스템 리소스 사용 방식을 조절
  - 컨테이너간 HostOS를 나눠쓰는 방식이지만 효율적으로 사용하도록 함
- 이식성
  - Docker는 Container runtime을 지원하는 모든 장치에서 사용가능
  - Application을 HostOS와 연결할 필요가 없음
- 결합성(Composability) 제공
  - 컨테이너는 일반적인 Application 구성(WEB, WAS, DB)을 쉽게 변경할 수 있는 부품으로 이루어진 기능 유닛으로 결합
  - Microservice Model
- Orchestration & Scaling 이 쉬움
  - 오버헤드가 거의 없음(아예 없는 것은 아님)
  - 가벼움
  - Scaling 가능
- VM 이 아님
  - Virtual Machine은 고수준의 process 분리 기능을 제공
  - Container는 HostOS에서 통제된 영역을 사용함
  - 철저히 관리되는 방식으로 동일한 운영체제 커널을 공유
- 변경 불가능, 비저장성
  - Immutable => 도커 이미지 = file 형태
  - 비저장성 => image가 실행 상태이면 컨테이너라고 함. 컨테이너는 비저장성.
- Microservice != Container
  - Microservice가 Container는 아니다. 다만 container를 사용하면 조금 더 쉽게 microservice application을 생성할 수 있다.

## 2.2. 쿠버네티스와 데브옵스 운영

- Kubernetess Master 와 Node는 kubelet 이라는 node에 탑재되는 Agent를 통해서 통신한다.
- 파드안에 컨테이너가 존다
- Kubernetes는 pod를 관리하는 Orchestrarion
  - 컨테이너 기반의 가상화 환경을 운영 관리하는 도구
  - 컨테이너화된 Application을 자동 배포 및 scaling, 관리 해주는 Open Source
- DevOps Model의 성숙화
- Docker 이외에 rkt, Hyper container 등의 엔진을 지원
- H/W 자원을 컨테이너화하여 isolation(격리) 가능

## 2.3. 마이크로 서비스 아키텍처

## 2.4. 요약

- 도커 컨테이너는 각 애플리케이션과 종속물이 운영체제 리소스의 분리된 세그먼트를 사용하는 방식으로 앱을 서로 그리고 기반이 되는 시스템으로 부터 계속 분리한다.
- 컨테이너 기술은 민첩성을 확보하는 핵심 가상화 기술이며, 컨테이너 기반 가상화 환경을 운영 관리하는 핵심 기술이 쿠버네티스이다.
- 개발 환경을 컨테이너 기반 가상화 환경으로 구현하고 CI(Continuous Integration) / CD(Continuous Development) 도구 및 개발 방법론을 결합함으로써 코딩, 빌드 및 테스트를 보다 쉽고 빠르게 수행하며 개발 환경 자동화와 손쉬운 운영 환경 배포의 기반을 마련해준다.
