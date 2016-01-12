function Compare-Version($ver1, $ver2) {
    $v1 = [System.Version]$ver1
    $v2 = [System.Version]$ver2
    if ($v1 -gt $v2) return 1
    if ($v1 -eq $v2) return 0
    return -1
}

if (Test-Path "${env:ProgramFiles(x86)}\vim\vim74\gvim.exe") {
    Set-Alias -scope global vi "${env:ProgramFiles(x86)}\vim\vim74\gvim.exe"
} else {
    function global:vi { st $args }
}
