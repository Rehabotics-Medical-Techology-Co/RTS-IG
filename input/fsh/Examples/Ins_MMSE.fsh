Alias: $sdcCalc = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression

Instance: MMSEQuestionnaireInstance
InstanceOf: SPACQuestionnaire // 使用FHIR裡面的哪個resource
Usage: #definition // 建立一個example
Title: "MMSE評估量表"
Description: "簡易心智狀況檢查表 (Mini-Mental State Examination, MMSE)"
* status = #active

// Section 1（第一次在根層，必須 item[0]）
* item[0].linkId = "section-a-time"
* item[=].type = #group
* item[=].text = "一、定向感-時間(5分)"

// 1.1 題目（第一次在本 section 內，必須 item[=].item[0]）
* item[=].item[0].linkId = "a-1-year" // 每個item都要一個ID
* item[=].item[=].text = "現在是：民國幾年？"
* item[=].item[=].type = #integer
// 1.1_score（新增同層兄弟，故 item[=].item[+]）
* item[=].item[+].linkId = "a-1-year-score" 
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0

// 1.2 題目（同一 section 內的下一題，故 item[=].item[+]）
* item[=].item[+].linkId = "a-2-month"
* item[=].item[=].text = "現在是：幾月？"
* item[=].item[=].type = #integer
// 1.2_score
* item[=].item[+].linkId = "a-2-month-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// 1.3 題目
* item[=].item[+].linkId = "a-3-date"
* item[=].item[=].text = "現在是：幾號？"
* item[=].item[=].type = #integer
// 1.3_score
* item[=].item[+].linkId = "a-3-date-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// 1.4 題目
* item[=].item[+].linkId = "a-4-week"
* item[=].item[=].text = "現在是：星期幾？"
* item[=].item[=].type = #string
// 1.4_score 
* item[=].item[+].linkId = "a-4-week-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// 1.5 題目
* item[=].item[+].linkId = "a-5-season"
* item[=].item[=].text = "現在是：甚麼季節？"
* item[=].item[=].type = #string
// 1.5_score
* item[=].item[+].linkId = "a-5-season-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// Section 2（回到根層，下一個 section → item[+]）
* item[+].linkId = "section-b-place"
* item[=].type = #group
* item[=].text = "二、定向感-地方(5分)"

// 2.1 題目
* item[=].item[0].linkId = "b-1-city"
* item[=].item[=].text = "這裡是:甚麼縣市？"
* item[=].item[=].type = #string
// 2.1_score
* item[=].item[+].linkId = "b-1-city-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// 2.2 題目
* item[=].item[+].linkId = "b-2-loc"
* item[=].item[=].text = "這裡是：在台灣的東部、西部、中部、南部或北部？"
* item[=].item[=].type = #string
// 2.2_score
* item[=].item[+].linkId = "b-2-loc-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// 2.3 題目
* item[=].item[+].linkId = "b-3-hos"
* item[=].item[=].text = "這裡是：什麼醫院？"
* item[=].item[=].type = #string
// 2.3_score
* item[=].item[+].linkId = "b-3-hos-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// 2.4 題目
* item[=].item[+].linkId = "b-4-floor"
* item[=].item[=].text = "這裡是：幾樓？"
* item[=].item[=].type = #string
// 2.4_score
* item[=].item[+].linkId = "b-4-floor-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// 2.5 題目
* item[=].item[+].linkId = "b-5-number"
* item[=].item[=].text = "這裡是：您住在哪一個病房？"
* item[=].item[=].type = #string
// 2.5_score 
* item[=].item[+].linkId = "b-5-number-score"
* item[=].item[=].text = "得分"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 0
// Section 3
* item[+].linkId = "section-c-memory"
* item[=].type = #group
* item[=].text = "三、記憶力(5分)"
// 3.1 題目
* item[=].item[0].linkId = "c-item"
* item[=].item[=].text = "告訴病人三種東西(香蕉、桌子、火車)(一次唸完)並請他重複這三種東西的名字，每說出一個算一分，共三分。重複___次記住"
* item[=].item[=].type = #integer
// 3.1_score
* item[=].item[+].linkId = "c-item-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3


// Section 4
* item[+].linkId = "section-d-language"
* item[=].type = #group
* item[=].text = "四、語言(5分)"

// 4.1 題目
* item[=].item[0].linkId = "d-cal"
* item[=].item[=].text = "連續從100 減7，再由所回答數字減7；直到有五個答案為止，每算對一個給一分，共五分。 或將 3 、9、2、7、5 順序倒過來唸，每排對一個給一分(用於原本不擅計算者)。"
* item[=].item[=].type = #display
// 4.1_score
* item[=].item[+].linkId = "d-cal-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
// Section 5
* item[+].linkId = "section-e-oral"
* item[=].type = #group
* item[=].text = "五、口語理解及行為能力(10分)"
// 5.1 題目
* item[=].item[0].linkId = "e-1-rep"
* item[=].item[=].text = "要求他將第三題之三種東西再說一次(自己不先重複)。"
* item[=].item[=].type = #display
// 5.1_score (3分)
* item[=].item[+].linkId = "e-1-rep-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
// 5.2 題目
* item[=].item[+].linkId = "e-2-stuff"
* item[=].item[=].text = "指著鉛筆和手錶問病人：這是什麼東西？(答對一個一分)"
* item[=].item[=].type = #display
// 5.2_score (2分)
* item[=].item[+].linkId = "e-2-stuff-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
// 5.3題目
* item[=].item[+].linkId = "e-3-phrase"
* item[=].item[=].text = "請病人重複以下這句話『種瓜得瓜、種豆得豆』(國語)。 『人死留名、虎死留皮』(閩南語)。"
* item[=].item[=].type = #display
// 5.3_score (1分)
* item[=].item[+].linkId = "e-3-phrase-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
// 5.4題目
* item[=].item[+].linkId = "e-4-fold"
* item[=].item[=].text = "連續給病人三個口令：用右或左(好)手拿紙、將紙對摺成一半、再將紙放到桌上(命令全說完後再讓他做，每完成一個給一分)。"
* item[=].item[=].type = #display
// 5.4_score (3分)
* item[=].item[+].linkId = "e-4-fold-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
// 5.5 題目 (1分)
* item[=].item[+].linkId = "e-5-sen"
* item[=].item[=].text = "請您隨意寫一個句子(用另一張空白的紙)或說一句話(用於不識字者)。"
* item[=].item[=].type = #display
// 5.5_score (1分)
* item[=].item[+].linkId = "e-5-sen-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
// Section 6
* item[+].linkId = "section-f-build"
* item[=].type = #group
* item[=].text = "六、建構力(2分)"
// 6.1 題目
* item[=].item[0].linkId = "f-1-paper"
* item[=].item[=].text = "讓病人讀而且按照下列的指式做動作(印於另一張紙)。"
* item[=].item[=].type = #display
// 6.1_score (1分)
* item[=].item[+].linkId = "f-1-paper-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
// 6.2 題目
* item[=].item[+].linkId = "f-2-draw"
* item[=].item[=].text = "請病人把下面的圖形(印於另一張紙)再畫一次(用另一張空白的紙)。"
* item[=].item[=].type = #display
// 6.2_score (1分)
* item[=].item[+].linkId = "f-2-draw-score"
* item[=].item[=].type = #choice
* item[=].item[=].text = "得分"
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
//計算總分
* item[+].linkId = "total-score-mmse"
* item[=].text = "總分（自動計算)"
* item[=].type = #integer
* item[=].readOnly = true


// 轉換為Observation
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true

// SDC 4 requires versionAlgorithm when version is present.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
