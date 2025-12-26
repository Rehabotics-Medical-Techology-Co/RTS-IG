Alias: $loinc = http://loinc.org
Alias: $SCT = http://snomed.info/sct

//ValueSet for Barthel Index
// 1
ValueSet: VSBarthelFeeding
Title: "進食-選項"
* $loinc#LA12302-8 "自己在合理時間(約 10 秒鐘吃一口)可用筷子取食眼前的食物。若需進食輔具時，應會自行穿脫。"
* $loinc#LA31630-9 "需別人幫忙穿脫輔具或只會用湯匙進食。"
* $loinc#LA24937-7 "無法自行取食或耗費時間過長。"
// 2
ValueSet: VSBarthelGrooming
Title: "個人衛生-選項"
* $loinc#LA31644-0 "可以自行洗手、刷牙、洗臉及梳頭。"
* $loinc#LA31643-2 "需要他人部分或完全協助。"
// 3
ValueSet: VSBarthelToiletUse
Title: "上廁所-選項"
* $loinc#LA31632-5 "可自行上下馬桶、穿脫衣服、不弄髒衣服、會自行使用衛生紙擦拭。"
* $loinc#LA31631-7 "需要協助保持姿勢的平衡、整理衣服或用衛生紙。"
* $loinc#LA12304-4 "無法自己完成。"
// 4
ValueSet: VSBarthelBathing
Title: "洗澡-選項"
* $loinc#LA31636-6 "能獨立完成(不論是盆浴或沐浴)，不需別人在旁。"
* $loinc#LA12304-4 "需別人協助。"
// 5
ValueSet: VSBarthelDressing
Title: "穿脫衣服-選項"
* $loinc#LA31638-2 "能自己穿脫衣服、鞋子，自己扣釦子、上拉鍊或綁鞋帶。"
* $loinc#LA31637-4 "在別人協助下，可自己完成一半以上的動作。"
* $loinc#LA12304-4 "不會自己做。"
// 6
ValueSet: VSBarthelBowels
Title: "大便控制-選項"
* $loinc#LA31625-9 "不會失禁，能自行灌腸或使用塞劑。"
* $loinc#LA31626-7 "偶爾會失禁(每週不超過一次)，需要他人協助使用灌腸或塞劑。"
* $loinc#LA31627-5 "失禁，無法自己控制且需他人處理。"
// 7
ValueSet: VSBarthelBladder
Title: "小便控制-選項"
* $loinc#LA31625-9 "能自己控制不會有失禁，或能自行使用並清潔尿套、尿袋。"
* $loinc#LA31626-7 "偶爾會失禁(每週不超過一次)或尿急(無法等待放好便盆或及時趕到廁 所)或需要他人協助處理尿套。"
* $loinc#LA31628-3 "失禁，無法自己控制且需他人處理。"

// 8
ValueSet: VSBarthelMobility
Title: "平地行走-選項"
* $loinc#LA31642-4 "使用或不使用輔具，皆可獨立行走 50 公尺以上。"
* $loinc#LA31641-6 "需他人稍微扶持或口頭指導才能行走 50 公尺以上。"
* $loinc#LA31640-8 "雖無法行走，但可以操作輪椅(包括轉彎、進門及接近桌子、床沿)並可 推行輪椅 50 公尺以上。"
* $loinc#LA31639-0 "完全無法自行行走，需別人幫忙推輪椅。"
// 9
ValueSet: VSBarthelStairs
Title: "上下樓梯-選項"
* $loinc#LA12302-8 "可自行上下樓梯，可使用扶手、柺杖等輔具。"
* $loinc#LA31629-1 "需他人協助或監督才能上下樓梯。"
* $loinc#LA24937-7 "無法上下樓梯。"
// 10 
ValueSet: VSBarthelTransfer
Title: "移位-選項"
* $loinc#LA12302-8 "整個過程可獨立完成。"
* $loinc#LA31635-8 "移動身體時需要稍微協助、給予提醒、安全監督。"
* $loinc#LA31634-1 "可以自行坐起，但從床上坐起時或移動身體時需要他人協助。"
* $loinc#LA31633-3 "不會自己移動。"

// ValueSet for BodyStructure
ValueSet: VSBodyStructure
Title: "身體部位與結構對應之Snomed CT 代碼"
Description: "收錄復健可能會使用到的身體部位代碼"
* $SCT#91775009 "左側肩"
* $SCT#5951000 "左側手腕"
* $SCT#85151006 "左手"
* $SCT#91774008 "右側肩"
* $SCT#9736006 "右側手腕"
* $SCT#78791008 "右手"
