# Git Convention (깃 규칙)

## Git Repository 이름 규칙

1. Use lower case. 소문자를 사용하자.
2. Use dashes. 하이픈(-)을 사용하자.
3. Be specific. 명확하게 작성하자.
4. Be consistent. 일관성있게 작성하자.

참고: [깃 레포지토리 이름 규칙](https://stackoverflow.com/questions/11947587/is-there-a-naming-convention-for-git-repositories)

</br>

## Git Commit message 규칙

### 1. [type] title, subject

`제목은 50자를 넘기지 않고 대문자로 시작하며 서술어가 아닌 명사로 끝나야한다. 또한 마지막에 .(쩜) 과 같은 마침표를 찍지 않는다.`

- feat: 기능 추가
- fix: 버그 픽스
- docs: 문서 수정
- style: format, optimize import, code clean up, 세미콜론등 코드가 아닌 스타일에 관련된 수정
- refactor: 코드 리펙토링
- test: 테스트 코드 추가
- chore: 빌드 관련 업무 수정(안드로이드의 경우 build.gradle, manifest)
- fix: 올바르지 않은 동작을 수정한 경우
- add: 코드나 테스트, 예제, 문서 등의 추가 생성이 있을 때 사용
- remove/clean/eliminate: 코드의 삭제
- improve: 향상이 있을 때 사용, 호환성, 테스트 커버리지, 성능, 검증 기능, 접근성 등 다양한 것들이 목적이 될 수 있다.
- implement: 코드가 추가된 정도보다 더 주목할 만한 구현체를 완성시켰을 때 사용
- move: 코드의 이동
- rename: 이름 변경
- update: 개정이나 버전 업데이트가 있을 때 사용

### 2. body

(선택사항) 72자를 넘기지 않고 1번과 한줄을 띄워서 작성
어떻게 변경했는지 보다 무엇을, 왜 변경했는지 설명한다.

### 3. footer

(선택사항) 이슈 트랙킹을 위해 ID 등을 참조할 때 사용한다.
ex) #123, #이슈번호
