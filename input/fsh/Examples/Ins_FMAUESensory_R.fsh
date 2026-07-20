Alias: $snomed = http://snomed.info/sct
// FMA-UE 上肢感覺評估問卷回覆
// ============================================
Instance: FMAUESensoryQuestionnaireResponseExample
InstanceOf: FMAUESensoryQuestionnaireResponse
Usage: #example
Title: "Fugl-Meyer上肢感覺評估問卷回覆範例"
Description: "針對Fugl-Meyer上肢感覺評估問卷的完整回覆範例"

* questionnaire = Canonical(FMAUESensoryQuestionnaireInstance)
* status = #completed
* subject = Reference(Patient/stroke-patient-001)
* authored = "2025-10-01T10:00:00+08:00"

// ============================================
// 評估階段選擇
// ============================================
* item[assessmentPhase].linkId = "assessment-phase-fmaue-sensory"
* item[assessmentPhase].text = "請選擇評估階段"
* item[assessmentPhase].answer.valueString = "期中"

// ============================================
// 評估患側選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-fmaue-sensory"
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer.valueCoding = $snomed#7771000


// ============================================
// Section A：輕觸覺檢測回覆 (3個部位)
// ============================================
* item[LightTouch].linkId = "A-light-touch"
* item[LightTouch].text = "A.輕觸覺檢測"
* item[LightTouch].item[upperArm].linkId = "A-I-upper-arm"
* item[LightTouch].item[upperArm].answer[0].valueInteger = 2
* item[LightTouch].item[forearm].linkId = "A-I-forearm"
* item[LightTouch].item[forearm].text = "前臂輕觸覺"
* item[LightTouch].item[forearm].answer.valueInteger = 2
* item[LightTouch].item[hand].linkId = "A-I-hand"
* item[LightTouch].item[hand].text = "手部輕觸覺"
* item[LightTouch].item[hand].answer.valueInteger = 1

// ============================================
// Section B：溫度覺檢測回覆 (3個部位)
// ============================================
* item[Temperature].linkId = "B-temperature"
* item[Temperature].text = "B.溫度覺檢測"
* item[Temperature].item[upperArm].linkId = "B-I-upper-arm"
* item[Temperature].item[upperArm].text = "上臂溫度覺"
* item[Temperature].item[upperArm].answer.valueInteger = 2

* item[Temperature].item[forearm].linkId = "B-I-forearm"
* item[Temperature].item[forearm].text = "前臂溫度覺"
* item[Temperature].item[forearm].answer.valueInteger = 2

* item[Temperature].item[hand].linkId = "B-I-hand"
* item[Temperature].item[hand].text = "手部溫度覺"
* item[Temperature].item[hand].answer.valueInteger = 1

// ============================================
// Section C：觸覺定位檢測回覆 (3個部位)
// ============================================
* item[TactileLocalization].linkId = "C-tactile-localization"
* item[TactileLocalization].text = "C.觸覺定位檢測"

* item[TactileLocalization].item[upperArm].linkId = "C-I-upper-arm"
* item[TactileLocalization].item[upperArm].text = "上臂觸覺定位"
* item[TactileLocalization].item[upperArm].answer.valueInteger = 2

* item[TactileLocalization].item[forearm].linkId = "C-I-forearm"
* item[TactileLocalization].item[forearm].text = "前臂觸覺定位"
* item[TactileLocalization].item[forearm].answer.valueInteger = 1

* item[TactileLocalization].item[hand].linkId = "C-I-hand"
* item[TactileLocalization].item[hand].text = "手部觸覺定位"
* item[TactileLocalization].item[hand].answer.valueInteger = 1

// ============================================
// Section D：位置覺檢測回覆 (4個關節)
// ============================================
* item[PositionSense].linkId = "D-position-sense"
* item[PositionSense].text = "D.位置覺檢測"

* item[PositionSense].item[shoulder].linkId = "D-I-shoulder"
* item[PositionSense].item[shoulder].text = "肩關節位置覺"
* item[PositionSense].item[shoulder].answer.valueInteger = 2

* item[PositionSense].item[elbow].linkId = "D-I-elbow"
* item[PositionSense].item[elbow].text = "肘關節位置覺"
* item[PositionSense].item[elbow].answer.valueInteger = 2

* item[PositionSense].item[wrist].linkId = "D-I-wrist"
* item[PositionSense].item[wrist].text = "腕關節位置覺"
* item[PositionSense].item[wrist].answer.valueInteger = 1

* item[PositionSense].item[thumb].linkId = "D-I-thumb"
* item[PositionSense].item[thumb].text = "拇指位置覺"
* item[PositionSense].item[thumb].answer.valueInteger = 1

// ============================================
// Section E：總分計算 (自動計算結果)
// ============================================
* item[totalScoreSection].linkId = "E-total-score-FMAUESensory"
* item[totalScoreSection].text = "E.FMAUE感覺總分"
* item[totalScoreSection].answer.valueInteger = 18
