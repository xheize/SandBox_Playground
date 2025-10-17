# SandBox_Playground

코드를 자유롭게 테스트하고 실험할 수 있는 개인 샌드박스 레포지토리입니다.

## 목적 (Purpose)

- 다양한 언어로 작성된 임시 코드 및 테스트 코드를 편하게 작성하고 관리
- 프로젝트 시작 전 아이디어나 개념을 빠르게 검증
- 발탁된 프로젝트는 정식 레포지토리로 분리하여 관리
- 학습 및 실험을 위한 안전한 공간

## 지원 언어 (Supported Languages)

- Python
- JavaScript/Node.js
- Go (Golang)
- 기타 필요에 따라 추가 가능

## 폴더 구조 (Folder Structure)

각 프로젝트는 루트 디렉토리에 독립적인 폴더로 관리됩니다:

```
SandBox_Playground/
├── project-name-1/     # 프로젝트 1
├── project-name-2/     # 프로젝트 2
└── project-name-3/     # 프로젝트 3
```

## 사용 방법 (How to Use)

1. **새 프로젝트 시작**: 루트 디렉토리에 새 프로젝트 폴더를 생성
2. **코드 작성**: 자유롭게 코드를 작성하고 실험
3. **테스트**: 필요한 테스트를 작성하고 실행
4. **정리**: 불필요한 프로젝트는 삭제
5. **승격**: 발탁된 프로젝트는 새로운 레포지토리로 이동

## 예시 (Examples)

### Python 프로젝트
```bash
mkdir my-python-experiment
cd my-python-experiment
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### JavaScript 프로젝트
```bash
mkdir my-js-app
cd my-js-app
npm init -y
npm install
```

### Go 프로젝트
```bash
mkdir my-go-service
cd my-go-service
go mod init github.com/xheize/my-go-service
```

## 규칙 (Rules)

- 각 프로젝트는 독립적으로 관리
- 공통 의존성은 각 프로젝트 폴더에 개별 설치
- 민감한 정보(API 키, 비밀번호 등)는 절대 커밋하지 않기
- 불필요한 빌드 아티팩트는 .gitignore에 추가

## 정식 레포지토리로 승격 (Promotion to Official Repository)

프로젝트가 성숙하면:
1. 새로운 레포지토리 생성
2. 코드 이동 및 정리
3. 적절한 문서화 추가
4. 이 레포지토리에서 해당 프로젝트 폴더 삭제

---

**Note**: 이 레포지토리는 실험과 학습을 위한 공간입니다. 프로덕션 코드는 별도의 레포지토리에서 관리하세요.