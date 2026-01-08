// ============================================
// Profile 定義：目標
// PAC：未來功能重建（functional recovery）、職能輔導（occupational recovery）、應維持的體重範圍 → category 0..*/description 1..1
// ============================================
Profile: Goal
Parent: TWCoreGoal
Title: "病人照護計畫的範例"
Description: "針對復健後病人的個人化照護計畫示範"
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
* description.text = "紀錄病人的復健訓練計畫"
* subject = Reference(PatientExample)
* category = http://terminology.hl7.org/CodeSystem/goal-category#physiotherapy
* text.status = #generated
* text.div = """
 <div xmlns="http://www.w3.org/1999/xhtml">
    <h3><b>Short-term goal</b></h3>
    <h4><b>理解能力</b></h4>
    <ol>
        <li>無理解能力可理解表情動作可理解字詞片語可理解簡單句</li>
        <li>可理解複雜句可理解敘述事件</li>
    </ol>
    
    <h4><b>表達能力:</b></h4>
    <ol>
        <li>無表達能力可用表情動作可用字詞片語可用簡單句</li>
        <li>可用複雜句可敘述完整事件</li>
    </ol>
    
</div> 
""" 