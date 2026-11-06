# 39-COLLABORATION-iOS-MEEMONG
> PLAY SOPT 합동 세미나 모바일앱 3조 ✂️ 미몽 ✂️ iOS 몽아요 🍄 
<br>

<img width="1920" height="1080" alt="발표장표" src="https://github.com/user-attachments/assets/ee3f608e-f958-4185-b9b1-cfda1ecc66a0" />

<br> 

## 🍎 iOS 팀원 소개

| <img src="https://github.com/user-attachments/assets/9da2f1e2-c562-45d6-b195-b7c3aaff0bc3" width="250"> | <img src="https://github.com/user-attachments/assets/83fc66c2-41eb-4e0a-92d3-76a8d20730a6" width="250"> | 
| :---: | :---: |
| **iOS Lead** | **iOS** |
| <b>[김세령](https://github.com/ser0kim)<b/> | <b>[김보민](https://github.com/bominnnkimmm)<b/> |
| `홈, 빠른매칭 UI 및 기능 구현`<br>`미몽 추천 공고 목록 조회`<br>`일반 공고 목록 조회`<br>`찜 등록 및 취소 API 연결` | `리뷰특가, 상세페이지 UI 및 기능 구현`<br>`내용 상세 조회`<br>`디자이너 정보 조회 API 연결` |
<br>

## 🎨 리디자인 포인트
| 포인트 | 설명 |
| --- | --- |
| 상단 메뉴 개편 | 미몽의 메인 컬러를 활용해 중요한 메뉴를 정리하고, 기존과 어울리는 아이콘 활용 |
| 브랜드 일관성 강화 | 미몽의 기존 컬러를 포인트와 버튼에 활용해 디자인 통일성 강화 |
| 카드 레이아웃 개선 | 이미지와 공고 정보를 좌우로 재배치해 시각적 균형을 맞추고, 주요 정보를 한눈에 파악할 수 있도록 개선 |
| 컬러 체계 통일 | 강조 정보는 블루, 비용 안내는 그레이, 기타 속성은 그린으로 통일해 시각적 일관성과 정보 구분 강화 |
 | 예약 진입 방식 통일 | '예약하기' 탭을 하단 '예약 진행' 버튼으로 변경해 페이지 간 일관성을 높이고 예약 흐름 개선 |
 | 포트폴리오 노출 방식 개선 | 포트폴리오를 기본 9개만 노출하고 '더보기' 버튼을 추가하여 스크롤 부담 감소 및 하단 매장 정보 접근성 향상 |
<br>

## 🛠 기술 스택 및 라이브러리
<img width="1920" height="1080" alt="Frame 30" src="https://github.com/user-attachments/assets/fdc26b36-fa6f-4f8f-9a75-a84cfb87b5e6" />

<br>

## 🤝 Git Convention

### 🏷 태그 컨벤션

| 태그 | 설명 |
| :---: | :--- |
| `feat` | 새로운 기능 구현 시 사용 |
| `style` | UI 구현 시 사용 |
| `fix` | 버그나 오류 해결 시 사용 |
| `docs` | README, 템플릿 등 프로젝트 내 문서 수정 시 사용 |
| `setting` | 프로젝트 관련 설정 변경 시 사용 |
| `add` | 사진 등 에셋이나 라이브러리 추가 시 사용 |
| `refactor` | 기존 코드를 리팩토링하거나 수정할 시 사용 |
| `chore` | 별로 중요한 수정이 아닐 시 사용 |
| `network` | 네트워크 작업 시 사용 |

<br>

### 📝 커밋 컨벤션

`[태그] #이슈번호 - 작업내용`

```
[feat] #3 - 업장 상세페이지 컴포넌트 사용하도록 수정 및 관리자 조회 API 추가
[style] #2 - 근무중인 가게 상세페이지 구현
[add] #1 - 아이콘 에셋 추가
[chore] #6 - 코드 리뷰 반영
```
<br>

### 🌿 브랜치 컨벤션

`태그/#이슈번호`

```
feat/#1
add/#3
refactor/#53
```

<br>

## ⌨️ 코드 컨벤션 


[Swift 스타일쉐어 가이드](https://github.com/StyleShare/swift-style-guide)를 기반으로 세부 기준을 설정하였습니다. 


## 📂 폴더 구조

```
💇🏻‍♀️ MEEMONG
└── 📂 MEEMONG
├── 📂 Application
│   └── MEEMONGApp.swift
│
├── 📂 Core
│   ├── 📂 Extension
│   └── 📂 Storage
│
├── 📂 Data
│   ├── 📂 Network
│   │   ├── 📂 Base
│   │   ├── 📂 DTO
│   │   └── 📂 EndPoint
│   ├── 📂 Repository
│   └── 📂 Persistence
│
├── 📂 Domain
│   ├── 📂 Entity
│   ├── 📂 UseCase
│   └── 📂 RepositoryInterface
│
├── 📂 Presentation
│   └── 📂 Common
│       ├── 📂 Components
│       ├── 📂 Extensions
│       └── 📂 Resources
│           ├── Assets.xcassets
│           ├── 📂 Fonts
│           └── 📂 Colors
│
└── Info.plist
```
