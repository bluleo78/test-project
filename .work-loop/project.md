# 이 저장소의 테스트·라이브 검증 방법 (work-loop)

`/genia-works:work-loop` 스킬이 읽는 저장소 안내다. 리허설용이라 아주 단순하다. 경로는 이슈 워크트리 루트 기준이다.

## 1. 새 워크트리 준비

준비할 것 없음.

## 2. 바뀐 범위별 테스트

| 바뀐 곳 | 명령 |
|---|---|
| 어디든 | `sh test.sh` |

## 3. 전체 회귀

`sh test.sh` 와 같다. pre-push 게이트는 없다.

## 4. 라이브 검증

앱이 없다 — 완료 기준을 파일 내용·`sh test.sh` 출력으로 확인하고, 근거에 「로컬 스택 없음 — 파일·테스트 출력으로 확인」이라고 적는다.

## 5. 지켜야 할 것

- main 작업 폴더에서 브랜치를 만들거나 바꾸지 않는다. 모든 수정은 이슈 워크트리에서 한다.

## 7. PR

- 원격은 **origin**(`git@github.com:bluleo78/test-project.git`), PR 대상 브랜치는 `main`, 도구는 `gh`.
- 브랜치: `<커밋 타입>/<소문자 이슈 키>`(예: `feat/ttp-1`, `fix/ttp-1`). 커밋 타입은 feat·fix·docs·chore·test.
- PR 제목 `<이슈 키> <이슈 제목>`, 머지 커밋 제목 `merge: <이슈 키> <이슈 제목>`(`gh pr merge --merge`).
- pre-push 게이트가 없으므로 검토자는 rebase 뒤 `sh test.sh` 를 직접 돌리고 통과할 때만 머지한다.

## 8. 검토자

개발한 PR 을 리뷰·머지하는 AI 팀장. 비어 있으면 PR 을 사람이 리뷰·머지한다.

- username: `teamleader@iacloud.kr`
