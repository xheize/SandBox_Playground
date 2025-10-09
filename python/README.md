# Python Projects

이 폴더는 Python 프로젝트를 위한 공간입니다.

## 새 프로젝트 시작하기

```bash
# 새 프로젝트 폴더 생성
mkdir my-project
cd my-project

# 가상 환경 생성
python -m venv venv

# 가상 환경 활성화
# Windows:
# venv\Scripts\activate
# macOS/Linux:
source venv/bin/activate

# 의존성 파일 생성
touch requirements.txt

# 의존성 설치
pip install -r requirements.txt
```

## 프로젝트 예시

- `example-api/` - Flask/FastAPI 예시
- `data-analysis/` - 데이터 분석 스크립트
- `automation/` - 자동화 스크립트
- `ml-experiment/` - 머신러닝 실험

## 권장 도구

- Poetry: 의존성 관리
- Black: 코드 포맷팅
- Pylint/Flake8: 린팅
- pytest: 테스팅
