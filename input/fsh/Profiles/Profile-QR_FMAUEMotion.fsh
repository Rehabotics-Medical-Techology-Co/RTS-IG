Alias: $snomed = http://snomed.info/sct

// ============================================
// Fugl-Meyer Upper Extremity Sensory QuestionnaireResponse Profile
// ============================================
Profile: FMAUEMotionQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: FMAUEMotionQuestionnaireResponse
Title: "FMAUE動作評估問卷回覆"
Description: "針對FMAUE上肢動作評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = "http://example.org/fhir/Questionnaire/FMAUEMotorQuestionnaireInstance" (exactly)

// 基本約束
* status = #completed
* subject 1..1
* subject only Reference(Patient)
* authored 1..1

// ============================================
// 第一層 item slicing
// ============================================
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item ^slicing.ordered = false
* item ^slicing.description = "根據LinkId區分FMAUE上肢感覺問卷的主要區塊"

* item contains
    assessmentPhase 1..1 MS and
    assessmentSide 1..1 MS and
    ShoulderElbowForearm 1..1 MS and
    WristHand 1..1 MS and
    CoordinationSpeed 1..1 MS and
    totalScoreSection 1..1 MS

// ============================================
// 評估階段
// ============================================
* item[assessmentPhase].linkId = "assessment-phase-fmaue-motion" (exactly)
* item[assessmentPhase].text = "請選擇評估階段"
* item[assessmentPhase].answer 1..1
* item[assessmentPhase].answer.value[x] only string
* item[assessmentPhase].answer.value[x] ^short = "選項：初評、期中、延展、結案"

// ============================================
// 評估側別選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-fmaue-motion" (exactly)
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer 1..1
* item[assessmentSide].answer.value[x] only Coding
* item[assessmentSide].answer.valueCoding from AssessmentSideValueSet (required)

// ============================================
// Section A：肩關節/肘關節/前臂動作評估
// ============================================
* item[ShoulderElbowForearm].linkId = "A-shoulder-elbow-forearm" (exactly)
* item[ShoulderElbowForearm].text = "A.肩部/肘部/前臂"
* item[ShoulderElbowForearm].item ^slicing.discriminator.type = #value
* item[ShoulderElbowForearm].item ^slicing.discriminator.path = "linkId"
* item[ShoulderElbowForearm].item ^slicing.rules = #closed
* item[ShoulderElbowForearm].item contains
    a1 1..1 MS and
    a2a 1..1 MS and
    a2b 1..1 MS and
    a3 1..1 MS and
    a4 1..1 MS and
    a5 1..1 MS

// A.I.反射反應
* item[ShoulderElbowForearm].item[a1].linkId = "A-I-FMAUEMotion"
* item[ShoulderElbowForearm].item[a1].text = "I.反射反應"
* item[ShoulderElbowForearm].item[a1].item ^slicing.discriminator.type = #value
* item[ShoulderElbowForearm].item[a1].item ^slicing.discriminator.path = "linkId"
* item[ShoulderElbowForearm].item[a1].item ^slicing.rules = #closed
* item[ShoulderElbowForearm].item[a1].item contains
    Flexors 1..1 MS and
    Extensors 1..1 MS

// A.I.1.二頭肌或手指屈肌
* item[ShoulderElbowForearm].item[a1].item[Flexors].linkId = "A-I-a-flexors" (exactly)
* item[ShoulderElbowForearm].item[a1].item[Flexors].text = "二頭肌或手指屈肌"
* item[ShoulderElbowForearm].item[a1].item[Flexors].answer 1..1
* item[ShoulderElbowForearm].item[a1].item[Flexors].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a1].item[Flexors].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a1].item[Flexors].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a1].item[Flexors].answer.valueInteger ^maxValueInteger = 2

// A.I.2.三頭肌
* item[ShoulderElbowForearm].item[a1].item[Extensors].linkId = "A-I-a-extensors" (exactly)
* item[ShoulderElbowForearm].item[a1].item[Extensors].text = "三頭肌"
* item[ShoulderElbowForearm].item[a1].item[Extensors].answer 1..1
* item[ShoulderElbowForearm].item[a1].item[Extensors].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a1].item[Extensors].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a1].item[Extensors].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a1].item[Extensors].answer.valueInteger ^maxValueInteger = 2

// A.II.a.屈肌協同動作
* item[ShoulderElbowForearm].item[a2a].linkId = "A-II-a-FMAUEMotion"
* item[ShoulderElbowForearm].item[a2a].text = "II.a.屈肌協同動作"
* item[ShoulderElbowForearm].item[a2a].item ^slicing.discriminator.type = #value
* item[ShoulderElbowForearm].item[a2a].item ^slicing.discriminator.path = "linkId"
* item[ShoulderElbowForearm].item[a2a].item ^slicing.rules = #closed
* item[ShoulderElbowForearm].item[a2a].item contains
    ShoulderRetraction 1..1 MS and
    ShoulderElevation 1..1 MS and
    ShoulderAbduction 1..1 MS and
    ShoulderOutwardsRotation 1..1 MS and
    ElbowFlexion 1..1 MS and
    ForearmSupination 1..1 MS

// A.II.a.肩部回縮
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].linkId = "A-II-a-shoulder-retraction" (exactly)
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].text = "肩部回縮"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].answer 1..1
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].answer.valueInteger ^maxValueInteger = 2

// A.II.a.肩部抬高
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].linkId = "A-II-a-shoulder-elevation" (exactly)
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].text = "肩部抬高"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].answer 1..1
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].answer.valueInteger ^maxValueInteger = 2

// A.II.a.肩外展
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].linkId = "A-II-a-shoulder-abduction" (exactly)
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].text = "肩外展"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].answer 1..1
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].answer.valueInteger ^maxValueInteger = 2

// A.II.a.肩膀外旋
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].linkId = "A-II-a-shoulder-outwards-rotation" (exactly)
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].text = "肩膀外旋"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].answer 1..1
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].answer.valueInteger ^maxValueInteger = 0

// A.II.a.手肘屈曲
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].linkId = "A-II-a-elbow-flexion" (exactly)
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].text = "手肘屈曲"
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].answer 1..1
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].answer.valueInteger ^maxValueInteger = 2

// A.II.a.前臂旋後
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].linkId = "A-II-a-forearm-supination" (exactly)
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].text = "前臂旋後"
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].answer 1..1
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].answer.valueInteger ^maxValueInteger = 2

// A.II.b.伸肌協同動作
* item[ShoulderElbowForearm].item[a2b].linkId = "A-II-b-FMAUEMotion"
* item[ShoulderElbowForearm].item[a2b].text = "II.b.伸肌協同動作"
* item[ShoulderElbowForearm].item[a2b].item ^slicing.discriminator.type = #value
* item[ShoulderElbowForearm].item[a2b].item ^slicing.discriminator.path = "linkId"
* item[ShoulderElbowForearm].item[a2b].item ^slicing.rules = #closed
* item[ShoulderElbowForearm].item[a2b].item contains
    ShoulderAddInwardRotation 1..1 MS and
    ElbowExtension 1..1 MS and
    ForearmPronation 1..1 MS

// A.II.b.肩部內旋/外旋
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].linkId = "A-II-b-shoulder-add-inward-rotation" (exactly)
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].text = "肩部內旋/外旋"
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].answer 1..1
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].answer.valueInteger ^maxValueInteger = 2

// A.II.b.手肘伸展
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].linkId = "A-II-b-elbow-extension" (exactly)
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].text = "手肘伸展"
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].answer 1..1
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].answer.valueInteger ^maxValueInteger = 2

// A.II.b.前臂旋前
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].linkId = "A-II-b-forearm-pronation" (exactly)
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].text = "前臂旋前"
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].answer 1..1
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].answer.valueInteger ^maxValueInteger = 2

// A.III.反射反應
* item[ShoulderElbowForearm].item[a3].linkId = "A-III-FMAUEMotion"
* item[ShoulderElbowForearm].item[a3].text = "III.部份協同動作（不可代償）"
* item[ShoulderElbowForearm].item[a3].item ^slicing.discriminator.type = #value
* item[ShoulderElbowForearm].item[a3].item ^slicing.discriminator.path = "linkId"
* item[ShoulderElbowForearm].item[a3].item ^slicing.rules = #closed
* item[ShoulderElbowForearm].item[a3].item contains
    HandToLumbarSpine 1..1 MS and
    ShoulderFlexion090 1..1 MS and
    ElbowProSupination 1..1 MS

// A.III.手到腰椎
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].linkId = "A-III-hand-to-lumbar-spine" (exactly)
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].text = "手到腰椎"
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].answer 1..1
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].answer.valueInteger ^maxValueInteger = 2

// A.III.肩部屈曲0° - 90°
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].linkId = "A-III-shoulder-flexion-0-90" (exactly)
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].text = "肩部屈曲0° - 90°"
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].answer 1..1
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].answer.valueInteger ^maxValueInteger = 2

// A.III.手肘 90° 前傾/旋後
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].linkId = "A-III-elbow-pro-supination" (exactly)
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].text = "手肘 90° 前傾/旋後"
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].answer 1..1
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].answer.valueInteger ^maxValueInteger = 2

// A.IV.自主運動
* item[ShoulderElbowForearm].item[a4].linkId = "A-IV-FMAUEMotion"
* item[ShoulderElbowForearm].item[a4].text = "IV.自主運動"
* item[ShoulderElbowForearm].item[a4].item ^slicing.discriminator.type = #value
* item[ShoulderElbowForearm].item[a4].item ^slicing.discriminator.path = "linkId"
* item[ShoulderElbowForearm].item[a4].item ^slicing.rules = #closed
* item[ShoulderElbowForearm].item[a4].item contains
    ShoulderAbduction090 1..1 MS and
    ShoulderFlexion90180 1..1 MS and
    ElbowProSupination 1..1 MS

// A.IV.肩外展 0° - 90°
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].linkId = "A-IV-shoulder-abduction-0-90" (exactly)
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].text = "肩外展 0° - 90°"
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].answer 1..1
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].answer.valueInteger ^maxValueInteger = 2

// A.IV.肩部屈曲90°-180°
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].linkId = "A-IV-shoulder-flexion-90-180" (exactly)
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].text = "手肘 90° 前傾/旋後"
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].answer 1..1
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].answer.valueInteger ^maxValueInteger = 2

// A.IV.手肘 0° 前傾/旋後
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].linkId = "A-IV-elbow-0-pronation-supination" (exactly)
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].text = "手肘 0° 前傾/旋後"
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].answer 1..1
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].answer.valueInteger ^maxValueInteger = 2

// A.V.自主運動
* item[ShoulderElbowForearm].item[a5].linkId = "A-V-FMAUEMotion"
* item[ShoulderElbowForearm].item[a5].text = "V.反射強度"
* item[ShoulderElbowForearm].item[a5].item ^slicing.discriminator.type = #value
* item[ShoulderElbowForearm].item[a5].item ^slicing.discriminator.path = "linkId"
* item[ShoulderElbowForearm].item[a5].item ^slicing.rules = #closed
* item[ShoulderElbowForearm].item[a5].item contains
    NormalReflexActivity 1..1 MS

// A.V.正常反射活動（屈肌/伸肌）
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].linkId = "A-V-normal-reflex-activity" (exactly)
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].text = "正常反射活動（屈肌/伸肌）"
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].answer 1..1
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].answer.value[x] only integer
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].answer.valueInteger ^short = "分數 0-2"
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].answer.valueInteger ^minValueInteger = 0
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].answer.valueInteger ^maxValueInteger = 2

// ============================================
// Section B：手腕
// ============================================
* item[WristHand].linkId = "B-wrist-hand" (exactly)
* item[WristHand].text = "B.手腕/手部"
* item[WristHand].item ^slicing.discriminator.type = #value
* item[WristHand].item ^slicing.discriminator.path = "linkId"
* item[WristHand].item ^slicing.rules = #closed
* item[WristHand].item contains
    b1 1..1 MS and
    b2 1..1 MS and
    b3 1..1 MS

// B.I.手腕穩定度
* item[WristHand].item[b1].linkId = "B-I-FMAUEMotion"
* item[WristHand].item[b1].text = "I.手腕穩定度"
* item[WristHand].item[b1].item ^slicing.discriminator.type = #value
* item[WristHand].item[b1].item ^slicing.discriminator.path = "linkId"
* item[WristHand].item[b1].item ^slicing.rules = #closed
* item[WristHand].item[b1].item contains
    Elbow90WristStability 1..1 MS and
    Elbow90WristFlexExtension 1..1 MS and
    Elbow0WristStability 1..1 MS and
    Elbow0WristFlexExtension 1..1 MS and
    WristCircumduction 1..1 MS

// B.腕部穩定性
* item[WristHand].item[b1].item[Elbow90WristStability].linkId = "B-I-elbow-90-wrist-stability" (exactly)
* item[WristHand].item[b1].item[Elbow90WristStability].text = "手肘 90° 腕部穩定性"
* item[WristHand].item[b1].item[Elbow90WristStability].answer 1..1
* item[WristHand].item[b1].item[Elbow90WristStability].answer.value[x] only integer
* item[WristHand].item[b1].item[Elbow90WristStability].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b1].item[Elbow90WristStability].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b1].item[Elbow90WristStability].answer.valueInteger ^maxValueInteger = 2

// B.手肘 90° 腕關節屈曲/伸展
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].linkId = "B-I-elbow-90-wrist-flex-extension" (exactly)
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].text = "手肘 90° 腕關節屈曲/伸展"
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].answer 1..1
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].answer.value[x] only integer
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].answer.valueInteger ^maxValueInteger = 2

// B.肘部 0° 腕部穩定性
* item[WristHand].item[b1].item[Elbow0WristStability].linkId = "B-I-elbow-0-wrist-stability" (exactly)
* item[WristHand].item[b1].item[Elbow0WristStability].text = "手肘 0° 腕部穩定性"
* item[WristHand].item[b1].item[Elbow0WristStability].answer 1..1
* item[WristHand].item[b1].item[Elbow0WristStability].answer.value[x] only integer
* item[WristHand].item[b1].item[Elbow0WristStability].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b1].item[Elbow0WristStability].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b1].item[Elbow0WristStability].answer.valueInteger ^maxValueInteger = 2

// B.肘部 0° 腕部穩定性
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].linkId = "B-I-elbow-0-wrist-flex-extension" (exactly)
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].text = "手肘 0° 腕部屈曲/伸展"
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].answer 1..1
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].answer.value[x] only integer
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].answer.valueInteger ^maxValueInteger = 2

// B.腕部旋轉
* item[WristHand].item[b1].item[WristCircumduction].linkId = "B-I-wrist-circumduction" (exactly)
* item[WristHand].item[b1].item[WristCircumduction].text = "腕部旋轉"
* item[WristHand].item[b1].item[WristCircumduction].answer 1..1
* item[WristHand].item[b1].item[WristCircumduction].answer.value[x] only integer
* item[WristHand].item[b1].item[WristCircumduction].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b1].item[WristCircumduction].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b1].item[WristCircumduction].answer.valueInteger ^maxValueInteger = 2

// B.II.手指伸屈
* item[WristHand].item[b2].linkId = "B-II-FMAUEMotion"
* item[WristHand].item[b2].text = "II.手指伸屈"
* item[WristHand].item[b2].item ^slicing.discriminator.type = #value
* item[WristHand].item[b2].item ^slicing.discriminator.path = "linkId"
* item[WristHand].item[b2].item ^slicing.rules = #closed
* item[WristHand].item[b2].item contains
    FingersMassFlexion 1..1 MS and
    FingersMassExtension 1..1 MS

// B.II.手指屈曲
* item[WristHand].item[b2].item[FingersMassFlexion].linkId = "B-II-fingers-mass-flexion" (exactly)
* item[WristHand].item[b2].item[FingersMassFlexion].text = "手指屈曲"
* item[WristHand].item[b2].item[FingersMassFlexion].answer 1..1
* item[WristHand].item[b2].item[FingersMassFlexion].answer.value[x] only integer
* item[WristHand].item[b2].item[FingersMassFlexion].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b2].item[FingersMassFlexion].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b2].item[FingersMassFlexion].answer.valueInteger ^maxValueInteger = 2

// B.II.手指伸展
* item[WristHand].item[b2].item[FingersMassExtension].linkId = "B-II-fingers-mass-extension" (exactly)
* item[WristHand].item[b2].item[FingersMassExtension].text = "手指伸展"
* item[WristHand].item[b2].item[FingersMassExtension].answer 1..1
* item[WristHand].item[b2].item[FingersMassExtension].answer.value[x] only integer
* item[WristHand].item[b2].item[FingersMassExtension].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b2].item[FingersMassExtension].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b2].item[FingersMassExtension].answer.valueInteger ^maxValueInteger = 2

// B.III.抓握功能
* item[WristHand].item[b3].linkId = "B-III-FMAUEMotion"
* item[WristHand].item[b3].text = "III.抓握功能"
* item[WristHand].item[b3].item ^slicing.discriminator.type = #value
* item[WristHand].item[b3].item ^slicing.discriminator.path = "linkId"
* item[WristHand].item[b3].item ^slicing.rules = #closed
* item[WristHand].item[b3].item contains
    Grasp_a 1..1 MS and
    Grasp_b 1..1 MS and
    Grasp_c 1..1 MS and
    Grasp_d 1..1 MS and
    Grasp_e 1..1 MS

// B.III.a.
* item[WristHand].item[b3].item[Grasp_a].linkId = "B-III-grasp-a" (exactly)
* item[WristHand].item[b3].item[Grasp_a].text = "a. MP 關節伸展，PIP 和 DIP 彎曲；測試抓握力是否抵抗阻力"
* item[WristHand].item[b3].item[Grasp_a].answer 1..1
* item[WristHand].item[b3].item[Grasp_a].answer.value[x] only integer
* item[WristHand].item[b3].item[Grasp_a].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b3].item[Grasp_a].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b3].item[Grasp_a].answer.valueInteger ^maxValueInteger = 2

// B.III.b.
* item[WristHand].item[b3].item[Grasp_b].linkId = "B-III-grasp-b" (exactly)
* item[WristHand].item[b3].item[Grasp_b].text = "b. 指導患者將拇指內收，其他關節在 0° 位置"
* item[WristHand].item[b3].item[Grasp_b].answer 1..1
* item[WristHand].item[b3].item[Grasp_b].answer.value[x] only integer
* item[WristHand].item[b3].item[Grasp_b].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b3].item[Grasp_b].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b3].item[Grasp_b].answer.valueInteger ^maxValueInteger = 2

// B.III.c.
* item[WristHand].item[b3].item[Grasp_c].linkId = "B-III-grasp-c" (exactly)
* item[WristHand].item[b3].item[Grasp_c].text = "c. 食指拇指肚對著，中間插一支鉛筆"
* item[WristHand].item[b3].item[Grasp_c].answer 1..1
* item[WristHand].item[b3].item[Grasp_c].answer.value[x] only integer
* item[WristHand].item[b3].item[Grasp_c].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b3].item[Grasp_c].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b3].item[Grasp_c].answer.valueInteger ^maxValueInteger = 2

// B.III.d.
* item[WristHand].item[b3].item[Grasp_d].linkId = "B-III-grasp-d" (exactly)
* item[WristHand].item[b3].item[Grasp_d].text = "d. 患者用食指和中指的掌側表面互相抵住，抓住一個圓柱形物體（小罐子）。"
* item[WristHand].item[b3].item[Grasp_d].answer 1..1
* item[WristHand].item[b3].item[Grasp_d].answer.value[x] only integer
* item[WristHand].item[b3].item[Grasp_d].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b3].item[Grasp_d].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b3].item[Grasp_d].answer.valueInteger ^maxValueInteger = 2

// B.III.e.
* item[WristHand].item[b3].item[Grasp_e].linkId = "B-III-grasp-e" (exactly)
* item[WristHand].item[b3].item[Grasp_e].text = "e. 球形抓握；病人抓住一個網球"
* item[WristHand].item[b3].item[Grasp_e].answer 1..1
* item[WristHand].item[b3].item[Grasp_e].answer.value[x] only integer
* item[WristHand].item[b3].item[Grasp_e].answer.valueInteger ^short = "分數 0-2"
* item[WristHand].item[b3].item[Grasp_e].answer.valueInteger ^minValueInteger = 0
* item[WristHand].item[b3].item[Grasp_e].answer.valueInteger ^maxValueInteger = 2

// ============================================
// Section C：協調性/速度
// ============================================
* item[CoordinationSpeed].linkId = "C-coordination-speed"
* item[CoordinationSpeed].text = "C.協調性/速度"
* item[CoordinationSpeed].item ^slicing.discriminator.type = #value
* item[CoordinationSpeed].item ^slicing.discriminator.path = "linkId"
* item[CoordinationSpeed].item ^slicing.rules = #closed
* item[CoordinationSpeed].item contains
    c1 1..1 MS

* item[CoordinationSpeed].item[c1].linkId = "C-I-FMAUEMotion"
* item[CoordinationSpeed].item[c1].text = "I.協調性/速度"
* item[CoordinationSpeed].item[c1].item ^slicing.discriminator.type = #value
* item[CoordinationSpeed].item[c1].item ^slicing.discriminator.path = "linkId"
* item[CoordinationSpeed].item[c1].item ^slicing.rules = #closed
* item[CoordinationSpeed].item[c1].item contains
    Tremor 1..1 MS and
    Dysmetria 1..1 MS and
    Time 1..1 MS

* item[CoordinationSpeed].item[c1].item[Tremor].linkId = "C-I-finger-to-nose-tremor" (exactly)
* item[CoordinationSpeed].item[c1].item[Tremor].text = "手指觸碰鼻子：顫抖"
* item[CoordinationSpeed].item[c1].item[Tremor].answer 1..1
* item[CoordinationSpeed].item[c1].item[Tremor].answer.value[x] only integer
* item[CoordinationSpeed].item[c1].item[Tremor].answer.valueInteger ^short = "分數 0-2"
* item[CoordinationSpeed].item[c1].item[Tremor].answer.valueInteger ^minValueInteger = 0
* item[CoordinationSpeed].item[c1].item[Tremor].answer.valueInteger ^maxValueInteger = 2

* item[CoordinationSpeed].item[c1].item[Dysmetria].linkId = "C-I-finger-to-nose-dysmetria" (exactly)
* item[CoordinationSpeed].item[c1].item[Dysmetria].text = "手指觸鼻：辨距不良"
* item[CoordinationSpeed].item[c1].item[Dysmetria].answer 1..1
* item[CoordinationSpeed].item[c1].item[Dysmetria].answer.value[x] only integer
* item[CoordinationSpeed].item[c1].item[Dysmetria].answer.valueInteger ^short = "分數 0-2"
* item[CoordinationSpeed].item[c1].item[Dysmetria].answer.valueInteger ^minValueInteger = 0
* item[CoordinationSpeed].item[c1].item[Dysmetria].answer.valueInteger ^maxValueInteger = 2

* item[CoordinationSpeed].item[c1].item[Time].linkId = "C-I-finger-to-nose-time" (exactly)
* item[CoordinationSpeed].item[c1].item[Time].text = "手指到鼻子：時間"
* item[CoordinationSpeed].item[c1].item[Time].answer 1..1
* item[CoordinationSpeed].item[c1].item[Time].answer.value[x] only integer
* item[CoordinationSpeed].item[c1].item[Time].answer.valueInteger ^short = "分數 0-2"
* item[CoordinationSpeed].item[c1].item[Time].answer.valueInteger ^minValueInteger = 0
* item[CoordinationSpeed].item[c1].item[Time].answer.valueInteger ^maxValueInteger = 2

// ============================================
// Section D: 總分計算
// ============================================
* item[totalScoreSection].linkId = "D-total-score-FMAUEMotion" (exactly)
* item[totalScoreSection].text = "D.FMAUE動作總分"
* item[totalScoreSection].answer 1..1
* item[totalScoreSection].answer.value[x] only integer
* item[totalScoreSection].answer.valueInteger ^short = "分數 0-66"
* item[totalScoreSection].answer.valueInteger ^minValueInteger = 0
* item[totalScoreSection].answer.valueInteger ^maxValueInteger = 66