#requires -Version 2 -Modules posh-git

function Write-Theme {
    param(
        [bool]
        $lastCommandFailed,
        [string]
        $with
    )

    # Change prompt color if last command failed
    $promptSymbolColor = $sl.Colors.PromptSymbolColor
    if ($lastCommandFailed) {
        $promptSymbolColor = $sl.Colors.PromptSymbolColorError
    }

    # Add working directory portion to prompt
    $workingDirectory = ""

    if ($pwd.Path -eq $HOME) {
        $workingDirectory = $sl.PromptSymbols.HomeSymbol
    }
    elseif ($pwd.Path -like "$HOME*") {
        $workingDirectory = $sl.PromptSymbols.HomeSymbol
        $workingDirectory += "$(Split-Path -path $pwd -Leaf)"
    }
    else {
        $workingDirectory = $pwd.Path
    }
    
    $prompt += Write-Prompt -Object $workingDirectory -ForegroundColor $sl.Colors.WorkingDirectoryColor

    # Add git portion to prompt
    $gitStatus = Get-VCSStatus
    if ($gitStatus) {
        $themeInfo = Get-VcsInfo -status ($gitStatus)
        $prompt += Write-Prompt -Object " $($themeInfo.VcInfo) " -ForegroundColor $themeInfo.BackgroundColor
        
        # if ($gitStatus.Working.Length -gt 0) {
        #     $prompt += Write-Prompt -Object (" " + $sl.PromptSymbols.GitDirtyIndicator) -ForegroundColor $sl.Colors.GitDefaultColor
        # }
    }

    # Set prompt on new line and add symbol
    $prompt += Set-Newline
    $prompt += Write-Prompt -Object ($sl.PromptSymbols.PromptIndicator + "  ") -ForegroundColor $promptSymbolColor
    $prompt
}

$sl = $global:ThemeSettings #local settings
$sl.PromptSymbols.PromptIndicator = [char]::ConvertFromUtf32(0x276F)
$sl.PromptSymbols.GitDirtyIndicator = [char]::ConvertFromUtf32(10007)

$sl.Colors.WorkingDirectoryColor = [ConsoleColor]::Blue

$sl.Colors.GitDefaultColor = [ConsoleColor]::Blue
$sl.Colors.GitLocalChangesColor = [ConsoleColor]::Blue
$sl.Colors.GitNoLocalChangesAndAheadAndBehindColor = [ConsoleColor]::Red
$sl.Colors.GitNoLocalChangesAndBehindColor = [ConsoleColor]::Red
$sl.Colors.GitNoLocalChangesAndAheadColor = [ConsoleColor]::Green

$sl.Colors.PromptSymbolColor = [ConsoleColor]::Yellow
$sl.Colors.PromptSymbolColorError = [ConsoleColor]::Red
