# Aurora

## 1. Aurora Auto Scaling

- 조정 정책을 정의하여 AutoScaling 을 정의하는데, 이 때 정책은 Amazon CloudWatch 지표와 대상 값을 사용하여 결정된다.
- 여기서 [사용되는 CloudWatch의 지표](https://docs.aws.amazon.com/ko_kr/autoscaling/application/userguide/application-auto-scaling-target-tracking.html#target-tracking-considerations)는 `RDSReaderAverageCPUUtilization`, `RDSReaderAverageDatabaseConnections` 이다.
  - RDSReaderAverageCPUUtilization : 전체 Read Replica 평균 CPU 사용률
  - RDSReaderAverageDatabaseConnections : 전체 Read Replica 평균 Database 연결 수

## 2. [Aurora High Availiability](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html)

위의 공식문서에 따르면,

- DB 클러스터의 가용성을 높이려면 최소 하나 이상의 Aurora 복제본을 둘 이상의 다른 가용 영역에 생성하는 것이 바람직합니다.

## 3. [Amazon Aurora Global databse](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html)

## 4. [Enhanced Monitoring for Aurora Instance](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/AuroraUserGuide/USER_Monitoring.OS.html)

- DB 인스턴스의 운영 체제를 실시간으로 모니터링
- 다른 프로세스 또는 스레드에서 CPU를 사용하는 방법 확인하려면 이 지표가 유용
- CloudWatch Logs에 저장됨
- 언제든 활성/비활성 가능하다
- 지표가 수집되는 시점 간격(초)를 `1, 5, 10, 15, 30, 60` 중에 하나로 설정할 수 있다. (RDS 콘솔을 새로 고치는 최소 간격은 5초)
- 요금
  - CloudWatch Logs 데이터 전송 및 스토리지 요금을 기준으로 한다.
  - 인스턴스마다 각각 활성화를 할 수 있어, 모니터링하는 DB instance 수가 많을수록 더 많은 비용이 청구된다.

## 5. Amazon Aurora Options

### [ Cluster ]

1. Deletion protection ⇒ Enabled

- 삭제 방지 활성화
- DB 를 실수로 삭제 버튼을 눌렀을 때, 바로 삭제되는 것이 아닌 보호할 수 있도록 하는 것

2. Log exports

- 로그 내보내기
- CloudWatch Logs에 PostgreSQL 로그를 내보냄
- 데이터베이스 활동을 로깅함. On-premise PostgreSQL DB 인스턴스의 경우에는 이런 메시지가 `log/postgresql.log` 에 로컬로 저장됨.
- 기본 로깅 수준에서는 로그인 실패, 치명적인 서버 오류, 교착 상태 및 쿼리 실패를 캡처함.
  [Aurora PostgreSQL 데이터베이스 로그 파일](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.Concepts.PostgreSQL.html)

3. Database authentication

- PostgreSQL 의 경우 : IAM 사용자 및 역할을 통해 데이터베이스 암호 및 사용자 자격 증명으로 데이터베이스 사용자를 인증
- 데이터베이스를 오가는 네트워크 트래픽은 SSL(Secure Sockets Layer) 또는 TLS(Transport Layer Security)를 통해 암호화
- 데이터베이스 리소스에 대한 액세스는 DB 클러스터에서 개별적으로 관리할 필요 없이 IAM을 통해 중앙에서 관리할 수 있음
- Amazon EC2에서 실행되는 애플리케이션의 경우, 암호가 아닌 EC2 인스턴스용 프로파일 자격 증명을 사용해 데이터베이스에 액세스하기 때문에 보안을 더욱 강화하는 효과가 있음
  [을 위한 IAM 데이터베이스 인증](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html)

4. **장애 조치 후 Aurora PostgreSQL용 클러스터 캐시 관리를 통한 신속한 복구**

- 클러스터 캐시 관리를 활성화해서
- Cluster parameter group > `apg_ccm_enabled = 1`
  [장애 조치 후 Aurora PostgreSQL용 클러스터 캐시 관리를 통한 신속한 복구](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.cluster-cache-mgmt.html)
  [Amazon Aurora DB 클러스터 생성](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/AuroraUserGuide/Aurora.CreateInstance.html)

### [ Instance ]

1. Database Authentication
2. Enhanced Monitoring

- Amazon RDS는 DB 인스턴스가 실행되는 운영 체제(OS)에 대한 측정치를 실시간으로 제공
- [Enhanced Monitoring을 사용하여 OS 지표 모니터링](https://docs.aws.amazon.com/ko_kr/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html)

3. Log exports
