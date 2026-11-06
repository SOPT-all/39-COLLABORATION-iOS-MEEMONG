# 39-COLLABORATION-iOS-MEEMONG
> 39기 PLAY SOPT 합동 세미나 모바일앱 3조 ✂️ 미몽 ✂️ iOS 레포지토리
<br>

<img width="1920" height="1080" alt="발표장표" src="https://github.com/user-attachments/assets/ee3f608e-f958-4185-b9b1-cfda1ecc66a0" />


## 🍎 iOS 팀원 소개

| [김세령](https://github.com/ser0kim) | [김보민](https://github.com/bominnkimmm) | 
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/9da2f1e2-c562-45d6-b195-b7c3aaff0bc3" width="200"> | <img src="https://github.com/user-attachments/assets/83fc66c2-41eb-4e0a-92d3-76a8d20730a6" width="200"> | 
<br>

## 🛠 기술 스택 및 라이브러리
<img width="1920" height="1080" alt="Frame 30" src="https://github.com/user-attachments/assets/fdc26b36-fa6f-4f8f-9a75-a84cfb87b5e6" />

<br>

## 🤝 Git Convention

<details>
<summary><b>🏷 태그 컨벤션</b></summary>
<br>

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
| `merge` | 머지하기 |

</details>

<details>
<summary><b>📝 커밋 컨벤션</b></summary>
<br>

`[태그] #이슈번호 - 작업내용`

```
[feat] #3 - 업장 상세페이지 컴포넌트 사용하도록 수정 및 관리자 조회 API 추가
[style] #2 - 근무중인 가게 상세페이지 구현
[add] #1 - 아이콘 에셋 추가
[chore] #6 - 코드 리뷰 반영
```

</details>

<details>
<summary><b>🌿 브랜치 컨벤션</b></summary>
<br>

`태그/#이슈번호`

```
feat/#1
add/#3
refactor/#53
```

- 머지 완료 후 브랜치 지우기

</details>


<br>

## 📄 이슈/PR 컨벤션

<details>
<summary><b>📮 이슈 템플릿</b></summary>
<br>

제목: `[feat] ~~구현`

```markdown
## 📝 상세 내용(Description)
- 작업 설명

## ✅ 체크리스트(Tasks)
- [ ] 할 일 1
- [ ] 할 일 2

## 🔔 기타 사항
없으면 지우기
```

</details>

<details>
<summary><b>🔀 PR 템플릿</b></summary>
<br>

제목: `[feat/#2] ~~구현`

````markdown
## 🌴 작업한 브랜치
- Resolved: #이슈번호

## ✅ 작업한 내용
<!-- 작업한 내용 적어주세요! -->

<!--
```swift
넣고싶은 코드가 있다면 적어주세요
```
-->

## ❗PR Point
<!-- 부족했던 점 혹은 개선하고 싶은 방향이 있다면 얘기해주세요 -->

<!--
```swift
넣고싶은 코드가 있다면 적어주세요
```
-->

## 📸 Screenshots
| 기능/화면 | iPhone 13 mini | iPhone 18 Pro |
|:--------:|:--------------:|:--------------:|
| 기능 | <video src="" width="250"/> | <video src="" width="250"/> |

## 💬 To Reviewers
<!-- 리뷰어들에게 하고 싶은 말 -->
````

</details>
<br>



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
