
# This script is used in a blog post on the https://mohitgoyal.co/2017/04/16/read-multi-line-input-from-users-in-powershell/. Please
# read the blog post for more information 

function InputCommitMessage([string]$Message, [string]$WindowTitle, [string]$DefaultText)
{
    do
    {
        Show-Menu
        Read-Host “Please make a selection”
        switch ($input)
        {
            ‘1’ {
                ‘You chose option #1’
            } ‘2’ {
                ‘You chose option #2’
            } ‘3’ {
                ‘You chose option #3’
            } ‘q’ {
            }
        }
        pause
    }
    until ($input -eq ‘q’)
    return $input
}
