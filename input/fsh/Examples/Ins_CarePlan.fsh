Instance: CarePlanExample01
InstanceOf: TWCoreCarePlan
Title: "Pediatric Occupational Therapy Evaluation-CarePlan"
Description: "醫院實際照護計畫資料範例"
* language = #zh-TW
* status = #active
* intent = #plan
* subject = Reference(PatientExample)
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Home programs</b></p>
  <ol>
    <li>建議練習點點連線畫斜線、十字、方形，框框中著色、迷宮或描虛線運筆、仿疊仿組積木、使用剪刀剪方形圖形，增進精細動作發展。</li>
    <li>建議每天練習爬樓梯、攀爬遊樂設施、手走路、趴在椅子上撐手、投籃、捏衣夾夾菜夾、使用蠟筆著色、組小花片或小樂高積木再拆開，增進肌肉力量以及耐力的活動。</li>
    <li>練習在生活中動作引導穿鞋子襪子上衣、搓洗雙手擦乾，增進身邊處理能力。</li>
    <li>建議引導個案和同學打招呼、揮手再見、一起排隊輪流合作、交換或一起玩玩具，增進人際互動能力。</li>
    <li>已在居家附近職能治療，建議持續治療，並配合治療師加強居家訓練活動。</li>
  </ol>
</div>
"""
* category[AssessPlan].coding = $careplan#assess-plan
* category[AssessPlan].text = "評估和計劃治療"
