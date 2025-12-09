### Resourse Bundle - 內容
一個用於儲存一組resources的容器（container）。
### 範圍與使用

本指引所涵蓋的復健量表資料交換情境可描述如下：
1. **量表需求產生與資料授權**
    病患於復健門診或治療時，由復健醫師或治療師進行功能評估並建立量表需求。若量表資料需跨系統流通（如轉介、遠距復健、長照服務或研究用途），病患需完成資料使用授權或同意程序，該同意紀錄會上傳至相關平台，以供後續交換使用。
2.	**量表建立與院內資料整理**
    治療師於醫院資訊系統（Hospital Information System, HIS）或復健治療系統中填寫功能評估量表與訓練紀錄。系統根據本 IG 所定義的資料結構，將原始紀錄轉換為符合 FHIR 規範的結構化格式，包括量測項目、分數、時間點、治療計畫與臨床註記等內容。
3.	**資料交換與跨平台傳輸**
    當病患需要跨院所或跨場域接受治療（例如轉診至他院、銜接居家復能、遠距復健平台介入），系統會依據本 IG 的 Profiles 與資料格式，將結構化量表資料傳送至接收方的系統。所交換的資料可能包含：
    - 初步功能評估量表
    - 訓練紀錄與階段性追蹤結果
    - 相關臨床觀察或輔助註記
4.	**接收端審核與資料解析**
    接收量表資料的院所、平台或長照單位，透過其資訊系統依本 IG 的規格解析資料內容。
    系統可將量表結果直接呈現於臨床介面，提供治療師快速了解患者功能狀態，作為後續治療決策之依據。
5.	**後續治療、追蹤與延續性照護**
    當接收端開始提供復健治療時，可在院內系統直接引用先前的量表與訓練紀錄，免除重複填寫的負擔。
    治療師也可依照本 IG 的資料格式新增新的追蹤量表，使後續照護能呈現完整且可比較的功能變化紀錄。
6.	**衍生價值：資料再利用**
    在取得適當授權後，標準化的量表內容可進一步用於：
    - 研究或品質改善計畫
    - AI 與預後分析模型
    - 多中心治療成效比較
    - 健康政策或資源規劃



<!-- 
常見的操作是將resources 集合在一起，放到一個單獨的地方，同時保留它們的相關訊息。在 FHIR 中，這個操作叫做「bundling resources」。這樣做對於很多不同的情境都很有用，例如：
- 在伺服器操作中返回符合某些準則的一組 resources (參見[RESTful Search](https://hl7.org/fhir/R4/http.html#search))
- 在伺服器上的歷史紀錄操作中返回 resources 的一組版本 (參見[History](https://hl7.org/fhir/R4/http.html#history))
-  將一組 resources 作為訊息交換的一部分發送 (參見[Messaging](https://hl7.org/fhir/R4/messaging.html))
- 將一組內嵌（self-contained）的 resources 集合在一起，形成可互換且可保存的集合，具有臨床完整性，例如臨床文件。(參見[Documents](https://hl7.org/fhir/R4/documents.html))
- 在伺服器上作為單一操作創建/更新/刪除一組 resources（包括作為單個原子交易進行，意即一個不可再分的、不可切分的交易，它要麼完全執行，要麼完全不執行。(參見[Transaction](https://hl7.org/fhir/R4/http.html#transaction))

### 界限與關聯
有兩種方式可以將resources 聚集在一起以便於傳輸和永久化:分別為[內嵌的resources](https://hl7.org/fhir/R4/references.html#contained)和「bundles」。兩者之間有一個重要的區別：
- 內嵌的 resources 是「在」容器內部：它們只能在容器的上下文中被解釋和/或改變。
- bundle是一組可以獨立存在的resources:例如:它們也可能直接透過[RESTful API](https://hl7.org/fhir/R4/http.html)被存取

除了這兩種技術機制之外，還有三種行政和基礎建設的resources，也支援內容的分組(grouping)。這些 resources 不直接包含其他 resources ，而是使用「Reference」來指向被分組的resources:
- [List(清單)](https://hl7.org/fhir/R4/list.html) resource — 列舉一組平面的 resources 並提供管理這組 resources 的功能。雖然一個特定的List實例可能代表某一個時刻的一個「快照（snapshot）」為這個清單提供一個內容視圖，但從業務過程的角度來看，「List」的概念是動態的 ，它會隨著時間的流逝，項目會被增加和移除。这种動態性使得List成为一个靈活的工具，可以用来跟踪和管理隨著時間變化的 resources 集合．List resource參照其他 resources ，它的使用可能有特定的業務意義。
- [Group(群體)](https://hl7.org/fhir/R4/group.html)resource — 透過列舉或描述群組成員的特質來定義特定的人員、動物、裝置等的Group。Group resource 可能會隱式地參照其他 resources 。Group旨在作為一個整體被操作或觀察；例如：對一個Group進行治療、計算一個群體的風險等。這個 resource 通常用於公共衛生（例如：描述一個高風險人群）、臨床試驗（例如：定義一個試驗對象）和類似目的。
- [Composition(臨床文件架構)]resource — 定義了一組健康相關的資訊，這些資訊被組合在一起形成一份單一邏輯的文件，提供了一個連貫的意義聲明，建立了其自身的上下文，並對於誰在做出聲明提供臨床證明。Composition resource 提供了一個FHIR[文件(documentation)](https://hl7.org/fhir/R4/documents.html)的基本結構。文件的全部內容使用Bundle來表達，Compositions經常參照Lists作為特定小節<code>sections</code>的焦點<code>(focus)</code>

這三個 resources 代表它們所參照的 resources 的有意義的分組（例如：一個出院用藥的List，一個臨床試驗參與者的Group，一組已簽名文件的resources），而一個bundle僅僅是用於傳輸和儲存的 resources 的容器。這些未必詳盡，其他的 resources 也提供了群組功能。 -->
