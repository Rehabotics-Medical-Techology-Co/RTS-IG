Alias: $snomed = http://snomed.info/sct
// FMA-UE 上肢感覺評估問卷回覆
// ============================================
Instance: FMAUESensoryQuestionnaireResponseExample
InstanceOf: FMAUESensoryQuestionnaireResponse
Usage: #example
Title: "Fugl-Meyer上肢感覺評估問卷回覆範例"
Description: "針對Fugl-Meyer上肢感覺評估問卷的完整回覆範例"

* questionnaire = "http://example.org/fhir/Questionnaire/FMAUESensoryQuestionnaireInstance"
* status = #completed
* subject = Reference(Patient/PatientPACExample)
* authored = "2023-10-01T10:00:00+08:00"

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
* item[assessmentSide].answer.valueCoding.code = $snomed#7771000
* item[assessmentSide].answer.valueCoding.display = "患者左側"

// ============================================
// Section A：輕觸覺檢測回覆 (3個部位)
// ============================================
* item[LightTouch].linkId = "A-light-touch"
* item[LightTouch].text = "A.輕觸覺檢測"

* item[LightTouch].item[aUpperArm].linkId = "A-I-upper-arm"
* item[LightTouch].item[aUpperArm].text = "上臂輕觸覺"
* item[LightTouch].item[aUpperArm].answer.valueInteger = 2

* item[LightTouch].item[aForeArm].linkId = "A-I-forearm"
* item[LightTouch].item[aForeArm].text = "前臂輕觸覺"
* item[LightTouch].item[aForeArm].answer.valueInteger = 2

* item[LightTouch].item[aHand].linkId = "A-I-hand"
* item[LightTouch].item[aHand].text = "手部輕觸覺"
* item[LightTouch].item[aHand].answer.valueInteger = 1

// ============================================
// Section B：溫度覺檢測回覆 (3個部位)
// ============================================
* item[Temperature].linkId = "B-temperature"
* item[Temperature].text = "B.溫度覺檢測"

* item[Temperature].item[bUpperArm].linkId = "B-I-upper-arm"
* item[Temperature].item[bUpperArm].text = "上臂溫度覺"
* item[Temperature].item[bUpperArm].answer.valueInteger = 2

* item[Temperature].item[bForeArm].linkId = "B-I-forearm"
* item[Temperature].item[bForeArm].text = "前臂溫度覺"
* item[Temperature].item[bForeArm].answer.valueInteger = 2

* item[Temperature].item[bHand].linkId = "B-I-hand"
* item[Temperature].item[bHand].text = "手部溫度覺"
* item[Temperature].item[bHand].answer.valueInteger = 1

// ============================================
// Section C：觸覺定位檢測回覆 (3個部位)
// ============================================
* item[TactileLocalization].linkId = "C-tactile-localization"
* item[TactileLocalization].text = "C.觸覺定位檢測"

* item[TactileLocalization].item[cUpperArm].linkId = "C-I-upper-arm"
* item[TactileLocalization].item[cUpperArm].text = "上臂觸覺定位"
* item[TactileLocalization].item[cUpperArm].answer.valueInteger = 2

* item[TactileLocalization].item[cForeArm].linkId = "C-I-forearm"
* item[TactileLocalization].item[cForeArm].text = "前臂觸覺定位"
* item[TactileLocalization].item[cForeArm].answer.valueInteger = 1

* item[TactileLocalization].item[cHand].linkId = "C-I-hand"
* item[TactileLocalization].item[cHand].text = "手部觸覺定位"
* item[TactileLocalization].item[cHand].answer.valueInteger = 1

// ============================================
// Section D：位置覺檢測回覆 (4個關節)
// ============================================
* item[PositionSense].linkId = "D-position-sense"
* item[PositionSense].text = "D.位置覺檢測"

* item[PositionSense].item[dShoulder].linkId = "D-I-shoulder"
* item[PositionSense].item[dShoulder].text = "肩關節位置覺"
* item[PositionSense].item[dShoulder].answer.valueInteger = 2

* item[PositionSense].item[dElbow].linkId = "D-I-elbow"
* item[PositionSense].item[dElbow].text = "肘關節位置覺"
* item[PositionSense].item[dElbow].answer.valueInteger = 2

* item[PositionSense].item[dWrist].linkId = "D-I-wrist"
* item[PositionSense].item[dWrist].text = "腕關節位置覺"
* item[PositionSense].item[dWrist].answer.valueInteger = 1

* item[PositionSense].item[dThumb].linkId = "D-I-thumb"
* item[PositionSense].item[dThumb].text = "拇指位置覺"
* item[PositionSense].item[dThumb].answer.valueInteger = 1

// ============================================
// Section E：總分計算 (自動計算結果)
// ============================================
* item[totalScoreSection].linkId = "E-total-score-FMAUESensory"
* item[totalScoreSection].text = "E.FMAUE感覺總分"
* item[totalScoreSection].answer.valueInteger = 18
