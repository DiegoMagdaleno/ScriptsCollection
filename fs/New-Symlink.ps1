function New-SymLink ($link, $target)
{
    if ($PSVersionTable.PSVersion.Major -ge 5)
    {
        New-Item -Path $link -ItemType SymbolicLink -Value $target
    }
    else
    {
        $command = "cmd /c mklink /d"
        invoke-expression "$command ""$link"" ""$target"""
    }
}