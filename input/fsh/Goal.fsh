// ============================================
// Profile 定義：目標
// PAC：未來功能重建（functional recovery）、職能輔導（occupational recovery）、應維持的體重範圍 → category 0..*/description 1..1
// ============================================
Profile: Goal
Parent: TWCoreGoal
Title: "Goal"
Description: "目標的標準化定義。"
* lifecycleStatus ^short = "目標的狀態"
* lifecycleStatus ^definition = "反映目標目前所處的狀態，例如提案中、執行中、完成、取消等。"
* description ^short = "目標內容說明"
* description ^definition = "一段描述此目標的文字或代碼。"
* subject ^short = "目標所屬對象"
* subject ^definition = "此目標所針對的對象，例如病人或特定團體。"
* category ^short = "目標類型"
* category ^definition = "用於分組或分類目標的代碼，例如治療、飲食、行為等。"



Instance: GoalExample
InstanceOf: Goal
Title: "目標資料範例"
Description: "一個目標的範例"
* lifecycleStatus = #active
* description.text = "控制血糖在目標範圍內"
* subject = Reference(PatientExample)
* category = http://terminology.hl7.org/CodeSystem/goal-category#dietary
