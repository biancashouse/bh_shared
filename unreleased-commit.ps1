
#------------------------------------------------------------------------------------

. pick-cider-log-type.ps1
$ciderLogType = pickCiderLogType
if (-not [string]$ciderLogType) {
  Write-Host "You didn't supply a cider log message type. Aborted."
  exit 1
}

#------------------------------------------------------------------------------------

# create $CIDER-LOG-MESSAGE.txt
. input-multiline-text.ps1

# abort if the file not created
$ciderLogMsg = inputMultilineText `
  -windowTitle "Cider Log Message" `
  -message "Enter the log message text" `
  -defaultText "The purpose of a changelog entry is to document the
  noteworthy difference, often across multiple commits,
  to communicate them clearly to end users.

  If you do nothing else, list deprecations, removals,
  and any breaking changes in your changelog."

if (-not [string]$ciderLogMsg) {
  Write-Host "You didn't supply a cider log message. Aborted."
  exit 1
}

#------------------------------------------------------------------------------------

# update CHANGELOG.md using the multi-line string
#ForEach($line in $ciderLogMsg) {
#  if ($line -notmatch "unreleased") {
#    $stringWithoutLineBreaks = $line.Replace("`n", "").Replace("`r", "")
#    cider log "$ciderLogType" "$stringWithoutLineBreaks"
#  }
#}
    $stringWithoutLineBreaks = $ciderLogMsg.Replace("`n", "")
    cider log "$ciderLogType" "$stringWithoutLineBreaks"

#------------------------------------------------------------------------------------

# create a copy of the unreleased mesage(s), with "unreleased" removed
& cider describe | Out-File -FilePath "COMMIT-MESSAGE.tmp"

$sourceFile = "COMMIT-MESSAGE.tmp"
$destinationFile = "COMMIT-MESSAGE.txt"
Get-Content $sourceFile | Where-Object { $_ -inotmatch "unreleased" } | Set-Content $destinationFile

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
