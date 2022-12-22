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

