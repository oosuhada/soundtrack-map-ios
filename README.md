# Street Drop iOS

**Walk in my playlist, Street Drop.**

지도 위에 음악을 드랍하고 주변의 음악을 발견하는 위치 기반 iOS 앱 복원본입니다. 기존 UIKit 지도 화면, 음악 드랍 UX, 마이페이지와 탐색 흐름을 그대로 유지하면서 최신 Xcode에서 빌드를 막던 deployment target과 외부 설정 의존성만 최소 수정했습니다.

> 과거 팀 프로젝트의 연락처와 팀원 정보는 README에서 제거했습니다. 제품명, 화면, deep link, 기존 도메인 구조는 원형을 유지했습니다.

## Restored preview

![Street Drop restored home](.github/assets/portfolio/streetdrop-restored-home.png)

위 이미지는 iPhone Simulator에서 현재 복원본을 실제 build/install/launch한 뒤 캡처했습니다.

## 주요 기능

- Naver Maps 기반 위치 탐색
- 주변에 드랍된 음악 표시
- 음악 드랍
- 지도/현재 위치 이동
- 음악 상세 및 플레이어 연동
- 마이페이지
- push/deep-link 기반 진입 흐름

## Stack

- Swift / UIKit
- RxSwift
- SnapKit
- Moya / Alamofire
- Naver Maps SDK
- Firebase
- CocoaPods + Swift Package Manager

## Build

```bash
cd StreetDrop
pod install

xcodebuild \
  -workspace StreetDrop.xcworkspace \
  -scheme StreetDrop \
  -configuration Debug \
  -destination 'platform=iOS Simulator,name=iPhone 15 Pro' \
  CODE_SIGNING_ALLOWED=NO \
  build
```

현재 Xcode 26.6 / iOS 17.5 Simulator 대상 build가 성공합니다. Firebase 또는 Naver Maps 설정 파일이 없는 포트폴리오 환경에서는 해당 integration만 비활성 상태로 시작하도록 처리해 앱 전체가 즉시 종료되지 않게 했습니다.

실제 지도 데이터와 외부 서비스는 각 서비스의 유효한 credential이 필요하며 credential 자체는 저장소에 포함하지 않습니다.
