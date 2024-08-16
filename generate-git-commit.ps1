# Split the commit message into individual lines
$commitLines = Get-Content("COMMIT-MESSAGE.txt")

# Initialize the git commit command
$gitCommand = "git commit -a"

# Add each line as a separate -m option
foreach ($line in $commitLines) {
    $gitCommand += " -m `"$line`""
}

$gitCommand | Out-File -FilePath "GIT-COMMAND.txt"