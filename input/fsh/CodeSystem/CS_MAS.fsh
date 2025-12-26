CodeSystem: CSMAS
Id: mas-score
Title: "MAS分數代碼系統"
Description: "描述MAS分數對應到的解釋"
* ^url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/CodeSystem/mas-score"
* ^caseSensitive = true
* ^experimental = false

* #0 "肌張力沒有增加"
* #1 "輕微增加肌張力，當受測的肢體在彎曲或伸展時，在活動範圍的最末段會呈現如卡住般 (catch)些微的張力"
* #1+ "輕微增加肌張力，當受測的肢體在彎曲或伸展時，會先呈現如卡住般些微的張力，並接 續著輕微的張力直到活動範圍結束，出現張力的比例小於50%的活動範圍"
* #2 "大部分的活動範圍都呈現張力，但受影響的肢體是可以輕易活動的"
* #3 "大部分的活動範圍都呈現大幅增加的張力，受影響的肢體的被動活動是困難的"
* #4 "受影響的肢體在彎曲或伸展時是僵硬的"

ValueSet: VSMAScore
Id: mas-score
Title: "MAS分數值集"
Description: "MAS分數值集"
* ^experimental = false
* include codes from system CSMAS // system 後面接CodeSystem 名稱

