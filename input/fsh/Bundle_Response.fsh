Profile: ReponseBundle
Parent: Bundle
Id: ReponseBundle

Title: "Bundle-評估資料回傳"
Description: "此 Profile 定義了上肢功能評估資料須包含的資訊。"

* identifier.exists()         // 要求必有 identifier
* timestamp.exists()          // 要求必有 timestamp
* type = #transaction          // 指定 Bundle 類型
* type MS
* type ^short = "Bundle的類型"
* entry 15.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Patient 1..* MS and
    Condition 1..* MS and
    Organization 0..* MS and
    Practitioner 1..* MS and
    Practitioner-Role 0..* MS and
    QR-FMAUE-Motion 0..1 MS and
    QR-FMAUE-Sensory 0..1 MS and
    QR-ARAT 0..1 MS and
    QR-WMFT 0..1 MS and
    QR-IADL 0..1 MS and
    QR-MAS 0..* MS and
    QR-MRC 0..* MS and
    QR-MMSE 0..1 MS and
    QR-Barthel 0..1 MS and
    QR-BBT 0..1 MS

* entry[Patient] ^short = "患者基本資料"
* entry[Patient].resource 1..1 MS
* entry[Patient].resource only Patient // (如有更動profile/instance名稱請修改)

* entry[Condition] ^short = "患者評估狀況"
* entry[Condition].resource 1..1 MS
* entry[Condition].resource only PACCondition

* entry[Organization] ^short = "進行評估機構"
* entry[Organization].resource 1..1 MS
* entry[Organization].resource only Organization

* entry[Practitioner] ^short = "評估者"
* entry[Practitioner].resource 1..1 MS
* entry[Practitioner].resource only Practitioner

* entry[Practitioner-Role] ^short = "評估者身分"
* entry[Practitioner-Role].resource 1..1 MS
* entry[Practitioner-Role].resource only PractitionerRole

* entry[QR-FMAUE-Motion] ^short = "Fugl-Meyer上肢動作評估"
* entry[QR-FMAUE-Motion].resource 1..1 MS
* entry[QR-FMAUE-Motion].resource only FMAUEMotionQuestionnaireResponse

* entry[QR-FMAUE-Sensory] ^short = "Fugl-Meyer上肢感覺評估"
* entry[QR-FMAUE-Sensory].resource 1..1 MS
* entry[QR-FMAUE-Sensory].resource only FMAUESensoryQuestionnaireResponse

* entry[QR-ARAT] ^short = "ARAT評估"
* entry[QR-ARAT].resource 1..1 MS
* entry[QR-ARAT].resource only ARATQuestionnaireResponse

* entry[QR-WMFT] ^short = "WMFT評估"
* entry[QR-WMFT].resource 1..1 MS
* entry[QR-WMFT].resource only WMFTQuestionnaireResponse

* entry[QR-IADL] ^short = "IADL評估"
* entry[QR-IADL].resource 1..1 MS
* entry[QR-IADL].resource only IADLQuestionnaireResponse

* entry[QR-MAS] ^short = "MAS評估"
* entry[QR-MAS].resource 1..1 MS
* entry[QR-MAS].resource only MASQuestionnaireResponse

* entry[QR-MRC] ^short = "MRC評估"
* entry[QR-MRC].resource 1..1 MS
* entry[QR-MRC].resource only MRCQuestionnaireResponse

* entry[QR-MMSE] ^short = "MMSE評估"
* entry[QR-MMSE].resource 1..1 MS
* entry[QR-MMSE].resource only MMSEQuestionnaireResponse

* entry[QR-Barthel] ^short = "Barthel評估"
* entry[QR-Barthel].resource 1..1 MS
* entry[QR-Barthel].resource only BarthelQuestionnaireResponse

* entry[QR-BBT] ^short = "BBT評估"
* entry[QR-BBT].resource 1..1 MS
* entry[QR-BBT].resource only BBTQR