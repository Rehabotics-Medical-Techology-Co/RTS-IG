---
title: 應用說明
---

### 專案介紹

機器手訓練實作指引(RoboHand Training Implementation Guide
)採用HL7® FHIR® standard（Fast Healthcare Interoperability 
Resources）IG 建置方法，在FHIR R4.0.1  之標準基礎上，繼承臺灣核
心實作指引（Taiwan Core Implementation Guide，簡稱TW core 
IG）V0.3.2 版本，進一步定義適用於機器手訓練資料需求的Resources
（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..、
1..1或1..）及資料類型（文字、日期時間、代碼等）等。

### 專案背景
隨著復健科技的快速發展，機器手臂輔助訓練已成為上肢功能障礙患
者重要的治療選項。鑑於國際與臺灣持續推動FHIR 標準，以強化智慧醫
療系統之互通性，為提升患者復健成效，建立跨機構資料交換基礎，促進
訓練資料標準化與互通性，本工作小組提出適用於機器手訓練情境的FHIR
技術規格，旨在標準化機器手輔助復健的資料收集與交換流程，促進復健
醫療資訊的整合與應用，提升整體照護品質。讓醫療單位能以電子化且一
致的方式記錄與交換訓練資料，有效整合患者完整復健歷程。旨在標準化
機器手輔助復健的資料收集與交換流程，促進復健醫療資訊的整合與應用，
提升整體照護品質。
### 專案範圍
待確認

xx 實作指引（Implementation Guide，簡稱 **TW xx IG**）採用 HL7® FHIR® 標準（Fast Healthcare Interoperability Resources）建置方法，
在 FHIR R4.0.1 標準基礎上，參考：

- [台灣核心實作指引 (TW Core Implementation Guide)v.0.3.2](https://twcore.mohw.gov.tw/ig/twcore/index.html)
- [美國長期照顧實作指引 (eLTSS IG), STU2](https://www.fhir.org/guides/astp/bhp/index.html)
- [台灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide)v0.4.0 ](https://ltc-ig.fhir.tw/)
- [美國核心實作指引 (US Core Implementation Guide)](https://build.fhir.org/ig/HL7/US-Core/en/index.html)

進一步定義適用於臺灣健康照護資料交換需求的 Resources、欄位、基數、資料型態、代碼綁定及查詢參數等。

TW xx IG 的實作方式有兩種：

1. **僅支援 Profiles**：系統僅支援 TW xx Profiles 以呈現健康照護資料。
2. **支援 Profiles + RESTful 互動**：系統支援 TW xx Profiles 及 RESTful API 互動。

---

### 背景

鑒於衛生福利部全民健康保險急性後期整合照護計畫及電子病歷資料交換之需求，
本版本以 **FHIR R4.0.1** 為基礎，繼承自 **Taiwan xx Profiles/ValueSet** 與 **TW Core Profiles/ValueSet**，
以最大程度滿足電子病歷資料交換的相容性，同時參考其他國家長期照顧 IG 與衛福部電子病歷規範。

TW xx IG 將持續更新，各版本附有版本異動說明。  
所有經進一步定義的 Resource 或 Profile 稱為 Profiles，並依 **FMM 等級** 標記成熟度。

| 等級 | 說明 |
|------|------|
| DRAFT 0 | 草稿 |
| FMM 1 | 基本完成，可實作 |
| FMM 2 | 經測試，有三套系統互通資料 |
| FMM 3 | 經工作小組審查與修改 |
| FMM 4 | 正式出版並應用於多個專案 |
| FMM 5 | 維持兩個正式出版週期穩定 |
| Normative | 已被認定為穩定 |

---

### 如何閱讀這個實作指引 (IG)

TW xx IG 網站主要架構如下：

<img class="figure-img img-responsive img-rounded center-block" src="assets/images/flowchart.jpg" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 70%;" />
<div style="clear:both;"></div>


- [應用說明](index.html):TW xx IG 介紹及背景說明  
- [規範文件](regulation.html)：TW xx IG 能力聲明、所有 Profiles 與查詢參數及操作定義、專門術語及 Extensions。
  - [能力聲明](capability.html)：應用 TW xx IG 於建置業務目的使用的 FHIR Server 時，該 FHIR Server 必須及建議應該支援的操作功能。  
  - [查詢參數及操作定義](parameter.html)：查詢 FHIR Server 的 Profiles時，針對各 Profiles可使用的查詢參數及操作定義。
  - [邏輯模型 (Logical Models)](logic.html)：TW xx IG 的所有邏輯模型（Logical Models），各邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目（element）。
  - [FHIR Profiles 及 Extensions](extension.html)：
    - TW xx IG 的所有 Profiles 之定義與範例及Extensions。
    - 各資料項目不同實作強制程度的 Terminology
    - 各資料項目的限制（Constraints）。
    - 查詢依據 TW xx IG 實作之 FHIR Server 的特定 Profiles 時，可使用的查詢參數。
    - 有哪些 Profiles 具有查詢參數以及 Server 必須支援哪些必要的查詢參數功能。  
- [專門術語](terminology.html)：TW XX IG網站所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets），內容主要依據全國專門術語服務平臺（TW terminology services）與長期照顧情境使用之術語建置。  
- [範例](example.html)：TW XX IG 的所有範例。
- [結構定義與範例下載](download.html)：實作者若不偏好使用 FHIR RESTful API 驗證資料是否遵從 Profiles，可直接下載所需的格式驗證檔，包括 XML、JSON 及 Turtle 三種格式，亦可於此下載完整範例。  
- [安全性](security.html)：主要說明採用 TW xx IG 網站進行實作時，有關資料存取授權的作法。


---

### 作者與貢獻者


<table class="grid">
  <thead>
    <tr>
      <th>角色</th>
      <th>貢獻版本次</th>
      <th>機構名稱</th>
      <th>姓名</th>
      <th>所屬單位</th>
    </tr>
  </thead>
  <tbody>
      <tr>
      <td>作者</td>
      <td>v0.1.0</td>
      <td>富伯生醫股份有限公司</td>
      <td>黃建嘉</td>
      <td>富伯生醫股份有限公司</td>
    </tr>
    <tr>
      <td>作者</td>
      <td>v0.1.0</td>
      <td>富伯生醫股份有限公司</td>
      <td>黃嗣承</td>
      <td>富伯生醫股份有限公司</td>
    </tr>
    <tr>
      <td>作者</td>
      <td>v0.1.0</td>
      <td>富伯生醫股份有限公司</td>
      <td>高旭恩</td>
      <td>富伯生醫股份有限公司</td>
    </tr>
    <tr>
      <td>作者</td>
      <td>v0.1.0</td>
      <td>富伯生醫股份有限公司</td>
      <td>王世東</td>
      <td>富伯生醫股份有限公司</td>
    </tr>
    <tr>
      <td>作者</td>
      <td>v0.1.0</td>
      <td>富伯生醫股份有限公司</td>
      <td>楊芷紜</td>
      <td>富伯生醫股份有限公司</td>
    </tr>
  </tbody>
</table>
