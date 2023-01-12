# CloudFront

## 1. Invalidation

파일 무효화라고 하는 CloudFront > Distribution > Invalidation 기능에 대해 알아보자.

CloudFront 엣지 캐시에서 파일이 만료되기 전에 파일을 제거해야할 경우, 아래 방법을 사용하면 된다.

- 엣지 캐시에서 파일을 무효화 한다.
  그 후, 사용자가 파일을 요청하면 최신 버전의 파일을 Origin에서 가져온다.
- 파일 버전 관리를 사용하여 서로 다른 이름을 가진 여러 버전의 파일을 제공한다.

> [동일한 파일 이름을 사용한 기존 콘텐츠 업데이트](https://docs.aws.amazon.com/ko_kr/AmazonCloudFront/latest/DeveloperGuide/UpdatingExistingObjects.html#ReplacingObjects)
>
> CloudFront 배포에서 기존 파일을 업데이트 하고 동일한 파일 이름을 사용할 수는 있지만 권장되지 않는다.
> [콘텐츠가 캐시에 유지되는 기간(만료) 관리](https://docs.aws.amazon.com/ko_kr/AmazonCloudFront/latest/DeveloperGuide/Expiration.html#ExpirationAddingHeadersInS3)

## 2. 무효화 할 파일

1. 특정 디렉터리 또는 파일을 지정할 수 있음
2. 무효화 경로는 대소문자를 구분함
   ex). `/images/image.jpg` 와 `/images/Image.jpg` 는 서로 다른 파일로 간주
3. Lambda 함수를 사용하여 URI 변경시 원본과 변경된 경로를 모두 무효화하는 것이 좋음.
4. 경로의 최대 길이는 4,000자
5. 경로(path) 중간에 와일드카드(\*)를 사용할 수 없으며, paht 맨 끝에만 사용할 수 있음
6. 서명된 URL을 사용하는 경우 물음표(?) 앞의 URL 부분만 포함하여 파일을 무효화 합니다.

[출처] [File Invalidation](https://docs.aws.amazon.com/ko_kr/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html)

## 3. Log 분석

[ 참고자료 ]
- [Enhanced CloudFront Logs, Now With Query Strings](https://aws.amazon.com/ko/blogs/aws/enhanced-cloudfront-logs-now-with-query-strings/)
- [Cloudfront Log 파일 S3버킷에 날짜 경로로 저장하기](https://kim-dragon.tistory.com/160)
