# RTS IG

RTS IG（Rehabilitation Training Scale Implementation Guide，復健訓練量表實作指引）是一個以 HL7 FHIR R4 為基礎的 Implementation Guide 專案。此 IG 聚焦於中風個案在復健與急性後期照護（post-acute care）情境中的評估量表與問卷資料交換。

本專案以 HL7 SDC（Structured Data Capture）作為問卷與評估資料蒐集的主要參考架構，並搭配臺灣 TW Core 資源模型，定義問卷、問卷回覆、照護相關資源、範例資料與術語資源。

## 專案範圍

目前內容以中風復健評估為主，尤其著重上肢功能相關量表；下肢或其他復健評估項目可在後續版本逐步擴充。

已包含或可見的評估與範例包含：

- ARAT
- Barthel Index
- BBT
- FMA-UE Motion
- FMA-UE Sensory
- IADL
- MAS
- MIUL
- MMSE
- MRC
- REACH
- TCT
- WMFT

## 使用標準

- FHIR 版本：R4（4.0.1）
- IG package id：`fhir.rehabig`
- Canonical URL：`https://build.fhir.org/ig/Kimsber/Rehab-IG`
- 專案狀態：draft
- 版本：`0.1.0`
- 授權：CC-BY-SA-4.0
- 主要依賴：
  - `tw.gov.mohw.twcore: 0.3.2`
  - `hl7.fhir.uv.sdc: 3.0.0`

## 專案結構

```text
.
+-- input/
|   +-- fsh/                  # FHIR Shorthand 定義
|   |   +-- Profiles/         # StructureDefinition / Profile
|   |   +-- Examples/         # Questionnaire、QuestionnaireResponse 等範例
|   |   +-- CodeSystem/       # 自訂 CodeSystem
|   |   +-- ValueSet/         # 自訂 ValueSet
|   |   +-- Bundle/           # Bundle / Composition 範例
|   +-- pagecontent/          # IG 頁面內容
|   +-- intro-notes/          # 資源頁面的補充說明
+-- fsh-generated/            # SUSHI 產生的 FHIR resources
+-- input-cache/              # IG Publisher 與快取檔案
+-- output/                   # IG Publisher 輸出的靜態網站
+-- temp/                     # 建置暫存資料
+-- template/                 # IG template
+-- ig.ini                    # IG Publisher 入口設定
+-- sushi-config.yaml         # SUSHI / IG 設定
+-- _build.bat / _build.sh    # 建置與更新 Publisher 的互動腳本
+-- _genonce.bat / _genonce.sh
+-- _gencontinuous.bat / _gencontinuous.sh
```

## 建置需求

請先確認環境已安裝：

- Java Runtime，供 HL7 IG Publisher 執行
- Node.js / npm，供 SUSHI 執行
- SUSHI（FHIR Shorthand compiler）
- Jekyll（IG Publisher 產生網站時可能需要）

第一次建置前，請先下載或更新 `publisher.jar`。Windows 可使用：

```bat
_build.bat update
```

macOS / Linux 可使用：

```sh
./_build.sh update
```

## 建置方式

Windows：

```bat
_build.bat build
```

macOS / Linux：

```sh
./_build.sh build
```

如果目前無法連線到 terminology server，可使用 no-TX 模式：

```bat
_build.bat notx
```

或：

```sh
./_build.sh notx
```

建置完成後，IG 靜態網站會輸出到 `output/`。

## 開發流程建議

1. 在 `input/fsh/` 中新增或調整 FSH 定義。
2. 在 `input/pagecontent/` 中維護 IG 說明頁面。
3. 執行 `_build.bat build` 或 `./_build.sh build`。
4. 檢查 `output/` 中產生的 IG 網站與驗證結果。
5. 依照 Publisher 的錯誤與警告修正 Profile、範例、術語或頁面連結。

## 重要檔案

- `sushi-config.yaml`：IG metadata、依賴套件、頁面與選單設定。
- `ig.ini`：指定 IG Publisher 讀取的 ImplementationGuide resource。
- `input/fsh/Profiles/`：FHIR profiles 與資料模型限制。
- `input/fsh/Examples/`：可用於驗證與展示的 FHIR resources 範例。
- `input/pagecontent/`：IG 網站的主要頁面內容。

## 注意事項

- 專案目前為 draft 版本，內容仍可能隨復健評估流程與資料交換需求調整。
- 部分既有中文內容可能曾發生編碼問題；更新文件或頁面時建議統一使用 UTF-8。
- 若更新 IG Publisher 腳本或 `publisher.jar`，請留意建置結果是否與既有輸出一致。
=======
復健訓練評估量表實作指引 (Rehabilitation Training Scale Implementation Guide，簡稱RTS IG)」採用HL7® FHIR®（Fast Healthcare Interoperability Resources）為基礎，運用其 Implementation Guide（IG）設計模式進行編制。本指引建立於 FHIR R4.0.1 的技術版次之上，並採用 TW Core IG 作為基礎框架，再擴充出專屬於復健成效量測與訓練紀錄交換的資料結構。 在本 IG 中，針對復健領域所需的資料交換內容，定義了適用的 Resource 類型（可視為資料表結構）、欄位屬性、必要性與重複次數（例如 0..1、0..、1..1、1..），以及各項資料所需使用的格式（例如字串、代碼、日期時間、量測值等）。 本 IG 的核心目的，是提供復健醫療資訊系統、研發者與臨床場域一套一致且可相互溝通的資料交換框架，使不同系統能依據此規範延伸或建立自身需求的資料格式，進而提升復健訓練紀錄與功能評估量表在跨單位、跨系統間的標準化與互操作能力。
