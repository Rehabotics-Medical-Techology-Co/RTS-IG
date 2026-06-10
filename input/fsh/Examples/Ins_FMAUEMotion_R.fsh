Alias: $snomed = http://snomed.info/sct

// Fugl-Meyer 上肢動作評估問卷回覆 FSH
// ============================================
Instance: FMAUEMotorQuestionnaireResponseExample
InstanceOf: SPACQuestionnaireResponse
Usage: #example
Title: "Fugl-Meyer上肢動作評估問卷回覆範例"
Description: "針對 Fugl-Meyer 上肢動作評估問卷的完整回覆範例，展示左側上肢動作功能評估結果"

* questionnaire = Canonical(FMAUEMotorQuestionnaireInstance)
* status = #completed
* subject = Reference(PatientExample)
* authored = "2023-10-01T10:00:00+08:00"

// ============================================
// 評估階段選擇
// ============================================
* item[0].linkId = "assessment-phase-fmaue-motion"
* item[=].text = "請選擇評估階段"
* item[=].answer.valueString = "初評"

// ============================================
// 評估側別選擇
// ============================================
* item[1].linkId = "assessment-side-fmaue-motion"
* item[=].text = "請選擇患側"
* item[=].answer.valueCoding = $snomed#7771000 "Left"


// ============================================
// Section A：肩關節/肘關節/前臂動作評估回覆
// ============================================
* item[2].linkId = "A-shoulder-elbow-forearm"
* item[=].text = "A.肩部/肘部/前臂"

// Subsection I - 反射活動
* item[=].item[0].linkId = "A-I-FMAUEMotion"
* item[=].item[=].text = "I.反射反應"

* item[=].item[=].item[0].linkId = "A-I-a-flexors"
* item[=].item[=].item[=].text = "二頭肌或手指屈肌"
* item[=].item[=].item[=].answer.valueInteger = 2

* item[=].item[=].item[1].linkId = "A-I-a-extensors"
* item[=].item[=].item[=].text = "三頭肌"
* item[=].item[=].item[=].answer.valueInteger = 0

// Subsection II-a - 協同運動(屈曲模式)
* item[=].item[1].linkId = "A-II-a-FMAUEMotion"
* item[=].item[=].text = "II.a.屈肌協同動作"

* item[=].item[=].item[0].linkId = "A-II-a-shoulder-retraction"
* item[=].item[=].item[=].text = "肩部回縮"
* item[=].item[=].item[=].answer.valueInteger = 2

* item[=].item[=].item[1].linkId = "A-II-a-shoulder-elevation"
* item[=].item[=].item[=].text = "肩部抬高"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[2].linkId = "A-II-a-shoulder-abduction"
* item[=].item[=].item[=].text = "肩外展"
* item[=].item[=].item[=].answer.valueInteger = 2

* item[=].item[=].item[3].linkId = "A-II-a-shoulder-outwards-rotation"
* item[=].item[=].item[=].text = "肩膀外旋"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[4].linkId = "A-II-a-elbow-flexion"
* item[=].item[=].item[=].text = "手肘屈曲"
* item[=].item[=].item[=].answer.valueInteger = 2

* item[=].item[=].item[5].linkId = "A-II-a-forearm-supination"
* item[=].item[=].item[=].text = "前臂旋後"
* item[=].item[=].item[=].answer.valueInteger = 1

// Subsection II-b - 協同運動(伸展模式)
* item[=].item[2].linkId = "A-II-b-FMAUEMotion"
* item[=].item[=].text = "II.b.伸肌協同動作"

* item[=].item[=].item[0].linkId = "A-II-b-shoulder-add-inward-rotation"
* item[=].item[=].item[=].text = "肩部內旋/外旋"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[1].linkId = "A-II-b-elbow-extension"
* item[=].item[=].item[=].text = "手肘伸展"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[2].linkId = "A-II-b-forearm-pronation"
* item[=].item[=].item[=].text = "前臂旋前"
* item[=].item[=].item[=].answer.valueInteger = 1

// Subsection III - 手至腰部動作
* item[=].item[3].linkId = "A-III-FMAUEMotion"
* item[=].item[=].text = "III.部份協同動作（不可代償）"

* item[=].item[=].item[0].linkId = "A-III-hand-to-lumbar-spine"
* item[=].item[=].item[=].text = "手到腰椎"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[1].linkId = "A-III-shoulder-flexion-0-90"
* item[=].item[=].item[=].text = "肩部屈曲0° - 90°"
* item[=].item[=].item[=].answer.valueInteger = 2

* item[=].item[=].item[2].linkId = "A-III-elbow-pro-supination"
* item[=].item[=].item[=].text = "手肘 90° 前傾/旋後"
* item[=].item[=].item[=].answer.valueInteger = 1

// Subsection IV - 脫離協同運動
* item[=].item[4].linkId = "A-IV-FMAUEMotion"
* item[=].item[=].text = "IV.自主運動"

* item[=].item[=].item[0].linkId = "A-IV-shoulder-abduction-0-90"
* item[=].item[=].item[=].text = "肩外展 0° - 90°"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[1].linkId = "A-IV-shoulder-flexion-90-180"
* item[=].item[=].item[=].text = "肩部屈曲90°-180°"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[2].linkId = "A-IV-elbow-0-pronation-supination"
* item[=].item[=].item[=].text = "手肘 0° 前傾/旋後"
* item[=].item[=].item[=].answer.valueInteger = 0

// Subsection V - 正常反射活動
* item[=].item[5].linkId = "A-V-FMAUEMotion"
* item[=].item[=].text = "V.反射強度"

* item[=].item[=].item[0].linkId = "A-V-normal-reflex-activity"
* item[=].item[=].item[=].text = "正常反射活動（屈肌/伸肌）"
* item[=].item[=].item[=].answer.valueInteger = 0

// ============================================
// Section B：腕關節/手部動作評估回覆
// ============================================
* item[3].linkId = "B-wrist-hand"
* item[=].text = "B.手腕/手部"

// Subsection I - 腕關節動作
* item[=].item[0].linkId = "B-I-FMAUEMotion"
* item[=].item[=].text = "I.手腕穩定度"

* item[=].item[=].item[0].linkId = "B-I-elbow-90-wrist-stability"
* item[=].item[=].item[=].text = "手肘 90° 腕部穩定性"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[1].linkId = "B-I-elbow-90-wrist-flex-extension"
* item[=].item[=].item[=].text = "手肘 90° 腕關節屈曲/伸展"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[2].linkId = "B-I-elbow-0-wrist-stability"
* item[=].item[=].item[=].text = "手肘 0° 腕部穩定性"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[3].linkId = "B-I-elbow-0-wrist-flex-extension"
* item[=].item[=].item[=].text = "手肘 0° 腕部屈曲/伸展"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[4].linkId = "B-I-wrist-circumduction"
* item[=].item[=].item[=].text = "腕部旋轉"
* item[=].item[=].item[=].answer.valueInteger = 1

// Subsection II - 手指動作
* item[=].item[1].linkId = "B-II-FMAUEMotion"
* item[=].item[=].text = "II.手指伸屈"

* item[=].item[=].item[0].linkId = "B-II-fingers-mass-flexion"
* item[=].item[=].item[=].text = "手指屈曲"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[1].linkId = "B-II-fingers-mass-extension"
* item[=].item[=].item[=].text = "手指伸展"
* item[=].item[=].item[=].answer.valueInteger = 1

// Subsection III - 抓握動作
* item[=].item[2].linkId = "B-III-FMAUEMotion"
* item[=].item[=].text = "III.抓握功能"

* item[=].item[=].item[0].linkId = "B-III-grasp-a"
* item[=].item[=].item[=].text = "a. MP 關節伸展，PIP 和 DIP 彎曲；測試抓握力是否抵抗阻力"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[1].linkId = "B-III-grasp-b"
* item[=].item[=].item[=].text = "b. 指導患者將拇指內收，其他關節在 0° 位置"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[2].linkId = "B-III-grasp-c"
* item[=].item[=].item[=].text = "c. 食指拇指肚對著，中間插一支鉛筆"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[3].linkId = "B-III-grasp-d"
* item[=].item[=].item[=].text = "d. 患者用食指和中指的掌側表面互相抵住，抓住一個圓柱形物體（小罐子）。"
* item[=].item[=].item[=].answer.valueInteger = 0

* item[=].item[=].item[4].linkId = "B-III-grasp-e"
* item[=].item[=].item[=].text = "e. 球形抓握；病人抓住一個網球"
* item[=].item[=].item[=].answer.valueInteger = 0

// ============================================
// Section C：協調性/速度評估回覆
// ============================================
* item[4].linkId = "C-coordination-speed"
* item[=].text = "C.協調性/速度"

// Subsection I
* item[=].item[0].linkId = "C-I-FMAUEMotion"
* item[=].item[=].text = "I.協調性/速度"

* item[=].item[=].item[0].linkId = "C-I-finger-to-nose-tremor"
* item[=].item[=].item[=].text = "手指觸碰鼻子：顫抖"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[1].linkId = "C-I-finger-to-nose-dysmetria"
* item[=].item[=].item[=].text = "手指觸鼻：辨距不良"
* item[=].item[=].item[=].answer.valueInteger = 1

* item[=].item[=].item[2].linkId = "C-I-finger-to-nose-time"
* item[=].item[=].item[=].text = "手指到鼻子：時間"
* item[=].item[=].item[=].answer.valueInteger = 1

// ============================================
// Section D：總分計算 (自動計算結果)
// ============================================
* item[5].linkId = "D-total-score-FMAUEMotion"
* item[=].text = "D.FMAUE動作總分"
* item[=].answer.valueInteger = 26
