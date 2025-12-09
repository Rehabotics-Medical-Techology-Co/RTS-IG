此操作用於回傳與調用與病人相關的所有Resources。回傳的Bundle type為「searchset」。至少將會回傳病人Resource本身，以及伺服器中具有的與病人相關且可供給使用者使用的任何其他Resources。伺服器將回傳支援紀錄所需的任何Resources，例如：相關的健康照護服務提供者(Practitioners)、藥品(Medications)、位置(Locations)及機構(Organizations)等。

使用此項操作(operation)的目的是提供病人存取他們的完整紀錄，或者給健康照護提供結或其他使用者執行大量資料下載。伺服器建議應該(SHOULD)至少回傳它所擁有的、已確定的病人compartment的resources、以及從這些resources所參照的任何resources。包括二進制文件和附件。在臺灣，目前沒有強制的規定，但不排除未來有其他專案要求使用。

**Generated Narrative: OperationDefinition Patient-everything**
URL: [base]/Patient/$everything

URL: [base]/Patient/[id]/$everything
