Install-WindowsFeature  -name Web-Server  -includeManagementTools
New-Website -name "ngcp32.ph" -hostheader "www.ngcp32.ph" -physicalpath "d:\webs\datingbiz"