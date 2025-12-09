---
title: 安全性
---

實作者建議應該（SHOULD）了解與FHIR交易相關的安全考量，特別是與以下相關:
- [通訊 (Communication)](https://hl7.org/fhir/R4/security.html#http)
- [驗證 (Authentication)](https://hl7.org/fhir/R4/security.html#authentication)
- [授權/存取控制 (Authorization/Access Control)](https://hl7.org/fhir/R4/security.html#authorization/access%20control)
- [稽核日誌 (Audit Logging)](https://hl7.org/fhir/R4/security.html#audit%20logging)
- [數位簽章 (Digital Signatures)](https://hl7.org/fhir/R4/security.html#digital%20signatures)
- [安全標籤 (Security Labels)](https://hl7.org/fhir/R4/security-labels.html)
- [說明 (Narrative)](https://hl7.org/fhir/R4/security.html#narrative)

就 xx IG 而言，安全一致性要求如下。

- **系統建議應該(SHOULD)** 保留各種交易的稽核日誌(audit logs)
- **系統建議應該(SHOULD)** 符合FHIR通訊安全（Communications Security）要求
對於認證和授權，系統**建議應該(SHOULD)** 支援用於用戶端<–>伺服器互動的SMART App執行框架（launch framework）。注意：FHIR 上的 SMART 規範包括啟用安全決策所需的 OAuth 2.0 範圍。
系統建議應該(SHOULD) 依據國家、地方和機構政策實作同意要求。業務夥伴協定(Business Associate Agreements)建議應該(SHOULD) 記錄系統相互同意的要求。
系統可以(MAY) 透過加密和相關存取控制來保護資料的機密性。所使用的策略和方法不在此規範的範圍內。

