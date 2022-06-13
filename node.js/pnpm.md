# pnpm

[pnpm 한글 문서](https://pnpm.io/ko/)

## 1. package manager 란?

package manager(패키지 매니저)란, 컴퓨터의 운영체제를 위해 일정한 방식으로 컴퓨터 프로그램의 설치, 업그레이드, 구성, 제거 과정을 자동화하는 소프트웨어 도구들의 모임.

## 2. pnpm

개발자 Zoltan Kochan이 2017년 발표한 패키지 매니저로 pnpm은 yarn과 npm에 비해 빠르다.
그 이유는 패키지를 복사해서 사용하는 대신, hard link를 사용하기 때문이다.
패키지의 버전 하나는 한 개의 복사본만 존재하게 되어 공간도 덜 차지하게 된다.
그리고 그 파일의 링크를 node_modules 폴더에 추가한다.

만약 lodash를 사용하는 100개의 프로젝트가 있다면,
npm이나 yarn은 100개의 lodash를 갖지만 pnpm은 단 1개의 lodash만을 갖게 된다.

pnpm은 npm2가 사용한 의존성 구조를 따른다.
express 패키지를 설치한다면 node_modules 폴더에 express 패키지만 생성이 된다.
npm과 yarn의 경우 의존성 패키지들이 같이 node_modules에 생성되는 것과 다르다.
의존 관계에 있는 패키지들은 node_modules/.pnpm에 flat한 구조로 존재한다.

## 2. pnpm 특징

- 빠름 : 다른 대안들에 비해 최대 2배 빠르다.
- 효율적 : node_modules 안의 파일들은 하나의 내용-주소화 저장소로부터 링크된다.
- 모노레포 지원 : pnpm은 리포지토리 하나에 여러 패키지가 있는 형태를 기본 지원한다.
- 엄격함 : pnpm은 평탄하지 않은 node_modules가 기본이어서, 아무 패키지에나 접근하는 코드가 허용되지 않는다.

[참고]

- [패키지 매니저, 그것이 궁금하다.](https://medium.com/zigbang/패키지-매니저-그것이-궁금하다-5bacc65fb05d)
