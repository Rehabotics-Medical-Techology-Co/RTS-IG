// ============================================
// Profile 定義：照護計畫
// PAC：共病症、併發症預防及處置、未來功能重建（functional recovery）、職能輔導（occupational recovery）
// PAC：營養及飲食指導、惡化徵兆偵測及必要處理
// ============================================
Profile: CarePlan
Parent: TWCoreCarePlan
Title: "Care Plan"
Description: "照護計畫"
* status 1..1
* status ^short = "狀態代碼，表示照護計畫的流轉狀態"
* status ^definition = "此欄位表示該照護計畫是否處於啟用、草稿、完成等狀態；必填。"
* intent 1..1
* intent ^short = "照護計畫的執行意圖 (如提案, 規劃, 指令, 選項)"
* intent ^definition = "標示這個照護計劃現在是提案、正式計畫、指令還是僅供參考的選項。"
* subject 1..1
// 用 only 指定 Reference 型態
* subject only Reference(Patient)
* subject ^definition = "指向台灣機器手訓練 Patient 資源，用於標記本照護計畫所屬的病患或病患群體。"
// category：計畫的類型（例如居家照護、慢性病管理、營養指導等）必填
* category ^definition = "計畫的類型，例如：營養及飲食指導、惡化徵兆偵測及必要處理等。"
* description ^short = "計畫摘要說明"
* description ^definition = "本欄位用於簡要描述照護計畫的性質與目標，提供整體計畫的概要說明。"

Instance: CarePlanExample
InstanceOf: CarePlan
Title: "照護計畫資料範例"
Description: "一個照護計畫的範例"
* status = #active
* intent = #plan
* subject = Reference(Patient/001)

