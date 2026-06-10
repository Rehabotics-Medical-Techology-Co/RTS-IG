Alias: $snomed = http://snomed.info/sct

Instance: FMAUEMotorQuestionnaireResponseExample
InstanceOf: FMAUEMotionQuestionnaireResponse
Usage: #example
Title: "Fugl-Meyer上肢動作評估問卷回覆範例"
Description: "針對 Fugl-Meyer 上肢動作評估問卷的完整回覆範例"

* questionnaire = Canonical(FMAUEMotorQuestionnaireInstance)
* status = #completed
* subject = Reference(PatientExample)
* authored = "2023-10-01T10:00:00+08:00"

* item[assessmentPhase].linkId = "assessment-phase-fmaue-motion"
* item[assessmentPhase].text = "請選擇評估階段"
* item[assessmentPhase].answer.valueString = "初評"

* item[assessmentSide].linkId = "assessment-side-fmaue-motion"
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer.valueCoding = $snomed#7771000 "Left"

* item[ShoulderElbowForearm].linkId = "A-shoulder-elbow-forearm"
* item[ShoulderElbowForearm].text = "A.肩部/肘部/前臂"
* item[ShoulderElbowForearm].item[a1].linkId = "A-I-FMAUEMotion"
* item[ShoulderElbowForearm].item[a1].text = "I.反射反應"
* item[ShoulderElbowForearm].item[a1].item[Flexors].linkId = "A-I-a-flexors"
* item[ShoulderElbowForearm].item[a1].item[Flexors].text = "二頭肌或手指屈肌"
* item[ShoulderElbowForearm].item[a1].item[Flexors].answer.valueInteger = 2

* item[ShoulderElbowForearm].item[a1].item[Extensors].linkId = "A-I-a-extensors"
* item[ShoulderElbowForearm].item[a1].item[Extensors].text = "三頭肌"
* item[ShoulderElbowForearm].item[a1].item[Extensors].answer.valueInteger = 0


* item[ShoulderElbowForearm].item[a2a].linkId = "A-II-a-FMAUEMotion"
* item[ShoulderElbowForearm].item[a2a].text = "II.a.屈肌協同動作"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].linkId = "A-II-a-shoulder-retraction"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].text = "肩部回縮"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderRetraction].answer.valueInteger = 2

* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].linkId = "A-II-a-shoulder-elevation"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].text = "肩部抬高"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderElevation].answer.valueInteger = 1

* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].linkId = "A-II-a-shoulder-abduction"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].text = "肩外展"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderAbduction].answer.valueInteger = 2

* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].linkId = "A-II-a-shoulder-outwards-rotation"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].text = "肩膀外旋"
* item[ShoulderElbowForearm].item[a2a].item[ShoulderOutwardsRotation].answer.valueInteger = 1

* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].linkId = "A-II-a-elbow-flexion"
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].text = "手肘屈曲"
* item[ShoulderElbowForearm].item[a2a].item[ElbowFlexion].answer.valueInteger = 2

* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].linkId = "A-II-a-forearm-supination"
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].text = "前臂旋後"
* item[ShoulderElbowForearm].item[a2a].item[ForearmSupination].answer.valueInteger = 1


* item[ShoulderElbowForearm].item[a2b].linkId = "A-II-b-FMAUEMotion"
* item[ShoulderElbowForearm].item[a2b].text = "II.b.伸肌協同動作"
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].linkId = "A-II-b-shoulder-add-inward-rotation"
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].text = "肩部內旋/外旋"
* item[ShoulderElbowForearm].item[a2b].item[ShoulderAddInwardRotation].answer.valueInteger = 1

* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].linkId = "A-II-b-elbow-extension"
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].text = "手肘伸展"
* item[ShoulderElbowForearm].item[a2b].item[ElbowExtension].answer.valueInteger = 0

* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].linkId = "A-II-b-forearm-pronation"
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].text = "前臂旋前"
* item[ShoulderElbowForearm].item[a2b].item[ForearmPronation].answer.valueInteger = 1


* item[ShoulderElbowForearm].item[a3].linkId = "A-III-FMAUEMotion"
* item[ShoulderElbowForearm].item[a3].text = "III.部份協同動作（不可代償）"
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].linkId = "A-III-hand-to-lumbar-spine"
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].text = "手到腰椎"
* item[ShoulderElbowForearm].item[a3].item[HandToLumbarSpine].answer.valueInteger = 1

* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].linkId = "A-III-shoulder-flexion-0-90"
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].text = "肩部屈曲0° - 90°"
* item[ShoulderElbowForearm].item[a3].item[ShoulderFlexion090].answer.valueInteger = 2

* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].linkId = "A-III-elbow-pro-supination"
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].text = "手肘 90° 前傾/旋後"
* item[ShoulderElbowForearm].item[a3].item[ElbowProSupination].answer.valueInteger = 1


* item[ShoulderElbowForearm].item[a4].linkId = "A-IV-FMAUEMotion"
* item[ShoulderElbowForearm].item[a4].text = "IV.自主運動"
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].linkId = "A-IV-shoulder-abduction-0-90"
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].text = "肩外展 0° - 90°"
* item[ShoulderElbowForearm].item[a4].item[ShoulderAbduction090].answer.valueInteger = 1

* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].linkId = "A-IV-shoulder-flexion-90-180"
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].text = "肩部屈曲90°-180°"
* item[ShoulderElbowForearm].item[a4].item[ShoulderFlexion90180].answer.valueInteger = 0

* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].linkId = "A-IV-elbow-0-pronation-supination"
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].text = "手肘 0° 前傾/旋後"
* item[ShoulderElbowForearm].item[a4].item[ElbowProSupination].answer.valueInteger = 0


* item[ShoulderElbowForearm].item[a5].linkId = "A-V-FMAUEMotion"
* item[ShoulderElbowForearm].item[a5].text = "V.反射強度"
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].linkId = "A-V-normal-reflex-activity"
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].text = "正常反射活動（屈肌/伸肌）"
* item[ShoulderElbowForearm].item[a5].item[NormalReflexActivity].answer.valueInteger = 0



* item[WristHand].linkId = "B-wrist-hand"
* item[WristHand].text = "B.手腕/手部"
* item[WristHand].item[b1].linkId = "B-I-FMAUEMotion"
* item[WristHand].item[b1].text = "I.手腕穩定度"
* item[WristHand].item[b1].item[Elbow90WristStability].linkId = "B-I-elbow-90-wrist-stability"
* item[WristHand].item[b1].item[Elbow90WristStability].text = "手肘 90° 腕部穩定性"
* item[WristHand].item[b1].item[Elbow90WristStability].answer.valueInteger = 1

* item[WristHand].item[b1].item[Elbow90WristFlexExtension].linkId = "B-I-elbow-90-wrist-flex-extension"
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].text = "手肘 90° 腕關節屈曲/伸展"
* item[WristHand].item[b1].item[Elbow90WristFlexExtension].answer.valueInteger = 0

* item[WristHand].item[b1].item[Elbow0WristStability].linkId = "B-I-elbow-0-wrist-stability"
* item[WristHand].item[b1].item[Elbow0WristStability].text = "手肘 0° 腕部穩定性"
* item[WristHand].item[b1].item[Elbow0WristStability].answer.valueInteger = 0

* item[WristHand].item[b1].item[Elbow0WristFlexExtension].linkId = "B-I-elbow-0-wrist-flex-extension"
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].text = "手肘 0° 腕部屈曲/伸展"
* item[WristHand].item[b1].item[Elbow0WristFlexExtension].answer.valueInteger = 0

* item[WristHand].item[b1].item[WristCircumduction].linkId = "B-I-wrist-circumduction"
* item[WristHand].item[b1].item[WristCircumduction].text = "腕部旋轉"
* item[WristHand].item[b1].item[WristCircumduction].answer.valueInteger = 1


* item[WristHand].item[b2].linkId = "B-II-FMAUEMotion"
* item[WristHand].item[b2].text = "II.手指伸屈"
* item[WristHand].item[b2].item[FingersMassFlexion].linkId = "B-II-fingers-mass-flexion"
* item[WristHand].item[b2].item[FingersMassFlexion].text = "手指屈曲"
* item[WristHand].item[b2].item[FingersMassFlexion].answer.valueInteger = 1

* item[WristHand].item[b2].item[FingersMassExtension].linkId = "B-II-fingers-mass-extension"
* item[WristHand].item[b2].item[FingersMassExtension].text = "手指伸展"
* item[WristHand].item[b2].item[FingersMassExtension].answer.valueInteger = 1


* item[WristHand].item[b3].linkId = "B-III-FMAUEMotion"
* item[WristHand].item[b3].text = "III.抓握功能"
* item[WristHand].item[b3].item[Grasp_a].linkId = "B-III-grasp-a"
* item[WristHand].item[b3].item[Grasp_a].text = "a. MP 關節伸展，PIP 和 DIP 彎曲；測試抓握力是否抵抗阻力"
* item[WristHand].item[b3].item[Grasp_a].answer.valueInteger = 0

* item[WristHand].item[b3].item[Grasp_b].linkId = "B-III-grasp-b"
* item[WristHand].item[b3].item[Grasp_b].text = "b. 指導患者將拇指內收，其他關節在 0° 位置"
* item[WristHand].item[b3].item[Grasp_b].answer.valueInteger = 1

* item[WristHand].item[b3].item[Grasp_c].linkId = "B-III-grasp-c"
* item[WristHand].item[b3].item[Grasp_c].text = "c. 食指拇指肚對著，中間插一支鉛筆"
* item[WristHand].item[b3].item[Grasp_c].answer.valueInteger = 0

* item[WristHand].item[b3].item[Grasp_d].linkId = "B-III-grasp-d"
* item[WristHand].item[b3].item[Grasp_d].text = "d. 患者用食指和中指的掌側表面互相抵住，抓住一個圓柱形物體（小罐子）。"
* item[WristHand].item[b3].item[Grasp_d].answer.valueInteger = 0

* item[WristHand].item[b3].item[Grasp_e].linkId = "B-III-grasp-e"
* item[WristHand].item[b3].item[Grasp_e].text = "e. 球形抓握；病人抓住一個網球"
* item[WristHand].item[b3].item[Grasp_e].answer.valueInteger = 0



* item[CoordinationSpeed].linkId = "C-coordination-speed"
* item[CoordinationSpeed].text = "C.協調性/速度"
* item[CoordinationSpeed].item[c1].linkId = "C-I-FMAUEMotion"
* item[CoordinationSpeed].item[c1].text = "I.協調性/速度"
* item[CoordinationSpeed].item[c1].item[Tremor].linkId = "C-I-finger-to-nose-tremor"
* item[CoordinationSpeed].item[c1].item[Tremor].text = "手指觸碰鼻子：顫抖"
* item[CoordinationSpeed].item[c1].item[Tremor].answer.valueInteger = 1

* item[CoordinationSpeed].item[c1].item[Dysmetria].linkId = "C-I-finger-to-nose-dysmetria"
* item[CoordinationSpeed].item[c1].item[Dysmetria].text = "手指觸鼻：辨距不良"
* item[CoordinationSpeed].item[c1].item[Dysmetria].answer.valueInteger = 1

* item[CoordinationSpeed].item[c1].item[Time].linkId = "C-I-finger-to-nose-time"
* item[CoordinationSpeed].item[c1].item[Time].text = "手指到鼻子：時間"
* item[CoordinationSpeed].item[c1].item[Time].answer.valueInteger = 1



* item[totalScoreSection].linkId = "D-total-score-FMAUEMotion"
* item[totalScoreSection].text = "D.FMAUE動作總分"
* item[totalScoreSection].answer.valueInteger = 26
