### Resource Encounter - 內容
涉及病人和健康照護服務提供者之間的互動，目的是為了提供健康照護服務或評估病人的健康狀況。

### 範圍與使用
病人的就醫事件根據發生的環境有所不同，包括門診、急診、家庭健康照護、住院和虛擬就醫。一次就醫事件涵蓋從入院前、實際的就醫事件（門診情況下）、入院、住院到出院的全過程（住院情況下）。期間，病人可能會接受不同健康照護服務提供者的照顧，並可能轉移至不同的地點。

由於就醫事件的範疇非常廣泛，不是所有資料項目在所有情況下都適用。因此，與入院/出院相關的資訊被分開存放在就醫事件的hospitalization。利用 class 資料項目來區分這些不同的就醫環境，進而指導相關的驗證和業務規則的應用。

不同的機構（以及不同的行政管轄區和國家）在決定哪些業務事件應該視為一個新的Encounter的開始，或者如何聚合 Encounter，存在著顯著的差異。例如：在住院期間，每一次醫生的看診可能會記錄為一個新的 Encounter 實例，但根據當地的實務和系統的不同，也可能會將這些看診聚合為整個住院期間的單一事件。在一些行政管轄區，出於財務或其他原因，可能會對就醫事件進行更多的聚合。可以使用<code>Encounter.partOf</code>資料項目將就醫事件聚合或分組於其他Encounter 之下。參考下方[(below)](https://hl7.org/fhir/R4/encounter.html#examples)提供的範例。

Encounter 實例也可能在實際就醫發生之前就已經存在，用來傳達入院前資訊，包括計劃的開始日期或預計的就醫地點。在這種情況下，<code>Encounter.status</code>資料項目會設定為<code>planned</code>

<code>Encounter.hospitalization 旨在存儲與住院相關的更多資訊。這些資訊通常與就醫事件本身的期間相同。如果住院期間與Encounter期間有所不同時，則應使用另一個就醫事件實例來記錄這些資訊，並將其作為這個就醫事件實例的一部分。

Procedure和Encounter相互參照，這些參照應該指向不同的 Procedures。一種情況是指在 Encounter 期間進行的 Procedure，這會儲存在<code>Encounter.reasonReference</code> (Procedure)，例如:為了解決之前Procedure出現的併發症而進行的後續Encounter。

### 狀態管理 (Status Management)
在一個就醫事件的生命週期內，它會經歷多個階段，這些階段通常是根據健康照護服務提供者的工作流程來排列的，比如「planned」、「in-progress」和「finished / cancelled」。這些階段資訊經常被用於其他目的，而且分析這些階段的歷史紀錄經常是必要的。這個分析可以透過檢查就醫事件的所有版本，確認每個版本的持續時間，然後進行一些後期的處理來完成。為了減輕這個負擔（或在系統不支援 resources 歷史紀錄的情況下），可善用 status 歷史紀錄元件（status history component）。

單靠<code>Encounter.status</code>欄位本身，我們無法直接判斷一次就醫事件是否被視為「已入院（admitted）」。就醫事件的具體情況和健康照護服務提供者的業務實務、政策、工作流程、類型都可能影響這一定義（例如：在急性照護機構、老人照護中心、門診診所、急診室或社區診所中）。「已到達（arrived）」、「已檢傷分類（triaged）」或「進行中（in progress）」等狀態可能被視為入院的開始，此時還會引入填寫Encounter.hospitalization。

「外出（onleave）」狀態可能被包含在入院階段內，也可能不被包含，例如：如果病人被允許在周末或一些其他外出事件期間回家。此外，Encounter.location.status 通常會被更新為「在場（active）」的狀態，如下範例。就如同在門診就醫的例子中，比如進行日間手術（如結腸鏡檢查），病人也可能被視為已入院，因此「已入院」的定義並不固定。但最起碼，我們認為當Encounter.status為「進行中（in-progres）」時，病人應被視為已入院。