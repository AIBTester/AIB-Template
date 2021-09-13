 write-host 'AIB Customization: Install Storage Explorer'
 $LocalPath = 'C:\'
 $StorExpURL = 'https://go.microsoft.com/fwlink/?linkid=717179&clcid=0x409'
 $StorExpMsi = 'microsoftazurestorageemulator.msi'
 $outputPath = $LocalPath + '\' + $StorExpMsi
 Invoke-WebRequest -Uri $teamsURL -OutFile $outputPath
 $outputPath = $LocalPath + '\' + $StorExpMsi
 Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log teams.log ALLUSER=1 ALLUSERS=1" -Wait
write-host 'AIB Customization: Finished Install Storage Explorer'
