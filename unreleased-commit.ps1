
#------------------------------------------------------------------------------------

# create $CIDER-LOG-TYPE.txt
& pick-cider-log-type

# abort if the file not created
$ciderLogType = Get-Content CIDER-LOG-TYPE.txt
if (-not [string]$ciderLogType) {
  Write-Host "You didn't supply a cider log message type in file CIDER-LOG-TYPE.txt!"
  exit 1
}

#------------------------------------------------------------------------------------

# create $CIDER-LOG-MESSAGE.txt
& input-cider-log-message

# abort if the file not created
$ciderLogMsg = Get-Content CIDER-LOG-MESSAGE.txt
if (-not [string]$ciderLogMsg) {
  Write-Host "You didn't supply a cider log message in file CIDER-LOG-MESSAGE.txt!"
  exit 1
}

#------------------------------------------------------------------------------------

# update CHANGELOG.md using the multi-line string
#$lines = Get-Content "CIDER-LOG-MESSAGE.txt"
#Write-Host $lines
ForEach($line in $ciderLogMsg) {
  if ($line -notmatch "unreleased") {
    & cider log "$ciderLogType" "$line"  }
}
#Remove-Item -Path "CIDER-LOG-TYPE.txt"
#Remove-Item -Path "CIDER-LOG-MESSAGE.txt"

#------------------------------------------------------------------------------------

# create a copy of the unreleased mesage(s), with "unreleased" removed
& cider describe | Out-File -FilePath "COMMIT-MESSAGE.tmp"

$sourceFile = "COMMIT-MESSAGE.tmp"
$destinationFile = "COMMIT-MESSAGE.txt"
Get-Content $sourceFile | Where-Object { $_ -inotmatch "unreleased" } | Set-Content $destinationFile
#Remove-Item -Path "COMMIT-MESSAGE.tmp"

# abort if the file not created
$commitMsg = Get-Content $destinationFile
if (-not [string]$commitMsg) {
  Write-Host "commit message file COMMIT-MESSAGE.txt not created!"
  exit 1
}

#------------------------------------------------------------------------------------

# create the git command by splitting the message into multiple -m "xxxxxxxx"
& generate-git-commit

#------------------------------------------------------------------------------------

# git commit with the CHANGELOG unreleased changes
$gitCommand = Get-Content "GIT-COMMAND.txt"

#------------------------------------------------------------------------------------

Invoke-Expression $gitCommand
& git commit -t "$commitMsg"
#Remove-Item -Path "COMMIT-MESSAGE.txt"
