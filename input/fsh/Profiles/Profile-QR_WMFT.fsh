Alias: $snomed = http://snomed.info/sct

// ============================================
// WMFT QuestionnaireResponse Profile
// ============================================
Profile: WMFTQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: WMFTQuestionnaireResponse
Title: "WMFT上肢功能評估問卷回覆"
Description: "針對WMFT上肢功能評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = Canonical(WMFTQuestionnaireInstance) (exactly)

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
* item ^slicing.rules = #open
* item ^slicing.description = "根據linkId區分WMFT問卷的主要區塊"
// 各 section 最少出現一次（保持彈性，不要求每題都出現）
* item contains
    assessmentSide 1..1 MS and
    TimedJointSegmentMovements 1..1 MS and
    TimedIntegrativeFunctionalMovements 1..1 MS and
    totalScoreSection 1..1 MS

* item[assessmentSide].linkId = "assessment-side-wmft"
* item[TimedJointSegmentMovements].linkId = "A-timed-joint-segment-movements"
* item[TimedIntegrativeFunctionalMovements].linkId = "B-timed-integrative-functional-movements"
* item[totalScoreSection].linkId = "C-total-score-WMFT"

// ========== 限定每個 section 中的分數型題目必須是整數 ==========
* item[assessmentSide].answer 1..1
* item[assessmentSide].answer.value[x] only Coding

* item[TimedJointSegmentMovements].item ^slicing.discriminator.type = #value
* item[TimedJointSegmentMovements].item ^slicing.discriminator.path = "linkId"
* item[TimedJointSegmentMovements].item ^slicing.rules = #closed
* item[TimedJointSegmentMovements].item contains
    forearmTable 1..1 MS and
    forearmBox 1..1 MS and
    extendedElbow 1..1 MS and
    extendedElbowWeight 1..1 MS and
    handTable 1..1 MS and
    handBox 1..1 MS and
    timedJointSubscore 1..1 MS
* item[TimedJointSegmentMovements].item[forearmTable].linkId = "A-I-forearm-to-table-side" (exactly)
* item[TimedJointSegmentMovements].item[forearmBox].linkId = "A-I-forearm-to-box-side" (exactly)
* item[TimedJointSegmentMovements].item[extendedElbow].linkId = "A-I-extended-elbow-side" (exactly)
* item[TimedJointSegmentMovements].item[extendedElbowWeight].linkId = "A-I-extended-elbow-to-the-side-with-1lb-weight" (exactly)
* item[TimedJointSegmentMovements].item[handTable].linkId = "A-I-hand-to-table-front" (exactly)
* item[TimedJointSegmentMovements].item[handBox].linkId = "A-I-hand-to-box-front" (exactly)
* item[TimedJointSegmentMovements].item[timedJointSubscore].linkId = "A-timed-joint-segment-movements-subscore" (exactly)
* item[TimedJointSegmentMovements].item[forearmTable].answer 1..1
* item[TimedJointSegmentMovements].item[forearmBox].answer 1..1
* item[TimedJointSegmentMovements].item[extendedElbow].answer 1..1
* item[TimedJointSegmentMovements].item[extendedElbowWeight].answer 1..1
* item[TimedJointSegmentMovements].item[handTable].answer 1..1
* item[TimedJointSegmentMovements].item[handBox].answer 1..1
* item[TimedJointSegmentMovements].item[timedJointSubscore].answer 1..1
* item[TimedJointSegmentMovements].item[forearmTable].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[forearmBox].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[extendedElbow].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[extendedElbowWeight].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[handTable].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[handBox].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[timedJointSubscore].answer.value[x] only integer

* item[TimedIntegrativeFunctionalMovements].item ^slicing.discriminator.type = #value
* item[TimedIntegrativeFunctionalMovements].item ^slicing.discriminator.path = "linkId"
* item[TimedIntegrativeFunctionalMovements].item ^slicing.rules = #closed
* item[TimedIntegrativeFunctionalMovements].item contains
    reachRetrieve 1..1 MS and
    liftCan 1..1 MS and
    liftPencil 1..1 MS and
    paperClip 1..1 MS and
    stackCheckers 1..1 MS and
    flipCards 1..1 MS and
    turnKey 1..1 MS and
    foldTowel 1..1 MS and
    liftBasket 1..1 MS and
    timedFunctionalSubscore 1..1 MS
* item[TimedIntegrativeFunctionalMovements].item[reachRetrieve].linkId = "B-I-reach-and-retrieve-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[liftCan].linkId = "B-I-lift-can-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[liftPencil].linkId = "B-I-lift-pencil-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[paperClip].linkId = "B-I-pick-up-paper-clip-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[stackCheckers].linkId = "B-I-stack-checkers-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[flipCards].linkId = "B-I-flip-3-cards-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[turnKey].linkId = "B-I-turning-the-key-in-lock-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[foldTowel].linkId = "B-I-fold-towel-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[liftBasket].linkId = "B-I-lift-basket-standing" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[timedFunctionalSubscore].linkId = "B-timed-integrative-functional-movements-subscore" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[reachRetrieve].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[liftCan].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[liftPencil].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[paperClip].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[stackCheckers].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[flipCards].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[turnKey].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[foldTowel].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[liftBasket].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[timedFunctionalSubscore].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[reachRetrieve].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[liftCan].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[liftPencil].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[paperClip].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[stackCheckers].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[flipCards].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[turnKey].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[foldTowel].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[liftBasket].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[timedFunctionalSubscore].answer.value[x] only integer

* item[totalScoreSection].answer 1..1
* item[totalScoreSection].answer.value[x] only integer

