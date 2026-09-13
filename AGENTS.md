# RAT Community

## Проект

RAT (Remote API for Testing) — расширение 1С:Предприятие (LGPL-3.0), REST API
(OpenAPI v3, JSON) для интеграционного тестирования. Префикс объектов `Рат`,
платформа 8.3.20+ (режим 8.3.20), язык скриптов — русский.

## Структура

- `exts/rat/src` — основное расширение (EDT): HTTP-сервис `RAT` (`/test-api`), общие модули `Рат*`.
- `tests/src` — расширение с YAXUnit-тестами (`tests/src/CommonModules`).
- `fixtures/configuration` — конфигурация-хост для тестов.
- `documentation/docs`, `memory-bank` — документация и контекст проекта.
- `tools/local-test` — локальная тестовая ИБ: `.env` (`VERSION=8.3.20.2290`,
  `DATA_PATH=/home/common/develop/file-data-base/RAT`); `start-server.sh` —
  `ibsrv` + `standalone.yml`, публикует `/test-api`.
- `v8project.yaml` — конфиг v8-runner (по умолчанию `./v8project.yaml`,
  переопределение `--config` / `V8TR_CONFIG`).

## v8-runner — сборка и тесты только через него

- Source-sets: `fixtures/configuration` (CONFIGURATION), `exts/rat`, `tests` (EXTENSION), EDT.
- `v8-runner build` — сборка source-set в ИБ (обновление базы, не артефакты).
- `v8-runner test yaxunit module <Имя>` — сборка + запуск конкретного YAXUnit-модуля.
- Запускать только целевые тестовые модули; `test yaxunit all` — не использовать.
- Перед сборкой закрыть открытую ИБ (запущенные `1cv8`/`ibsrv` процессы).
- Платформы: `/opt/1cv8/x86_64/<версия>/` (8.3.20.1996 … 8.3.27.x).

## YAXUnit

- Тест = общий модуль в `tests/src/CommonModules/<Имя>/` (`Module.bsl` + `.mdo`),
  зарегистрирован в `tests/src/Configuration/Configuration.mdo`.
- Именование: `[Префикс_]`<имя проверяемого объекта>`[_Суффикс]` (ОМ_ = общий модуль).
- Тест: `ЮТТесты.ДобавитьТест(...)` в `ИсполняемыеСценарии()` + экспортная процедура
  с именем проверяемого метода (без префикса «Тест»). События
  (`ПередВсемиТестами`, `ПередКаждымТестом`, …) — экспортные процедуры без параметров.
- Фикстуры — префикс `Ф_`, публичные сущности — `ПУБ_`.
- Утверждения: `ЮТест.ОжидаетЧто(Значение, Описание).Свойство(...).Равно(...)`,
  `ИмеетТип`, `Заполнено/НеЗаполнено`, `ИмеетДлину`.
- HTTP: `РатСервис.ЗапросAPI(СтруктураЗапроса)` +
  `ПомощникТестированияРат.ПроверитьОтвет/ПроверитьРезультатУспешно/ПроверитьРезультатОшибка`.
- Прямой вызов: `Рат<Модуль>.ВызватьОбработчик(Обработчик, ПараметрыЗапроса, Статус, ОбработчикВыполнен)`.

## Кодовый стиль

- Имена на русском: процедуры — неопределенная форма глагола, функции —
  описание возвращаемого значения, проверки — «Это...»/причастия.
- Строка ≤ 150 символов; `TernaryOperatorUsage` запрещен;
  синхронные вызовы и модальные окна — предупреждения.
- Описание метода — комментарий перед объявлением (назначение, параметры,
  возвращаемое значение, пример); ссылки — «см. ИмяМодуля.Метод».
- Правила: `.cursor/rules/bsl-coding-guidelines.mdc`,
  `.cursor/rules/bsl-method-description-guidelines.mdc`, `.cursor/rules/tests/*.mdc`.
- LGPL-3.0-заголовок обязателен в каждом файле (pre-commit),
  копирайт `2021-2026 BIA-Technologies`.

## Scope & Diff Constraints
- Minimal diffs only.
- No refactors, no formatting runs, no lint cleanup.
- Never do wide edits across unrelated files.
- If any agent proposes changes outside the current task scope: STOP and correct scope.

## Branching & Commits
- Every task works in its own branch: `feat/<issue-i>-<short-description>` from develop (pull before).
- Commit at the end of the task using Conventional Commits (e.g., `feat: ...`, `fix: ...`, `chore: ...`).
