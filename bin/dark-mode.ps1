# Script to toggle Windows dark theme mode

$LocalMachinePath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$CurrentUserPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$Name = "AppsUseLightTheme"

function Ensure-Registry-Path {
    if (!(Test-Path $args[0])) {
        New-Item -Path $args[0] -Force | Out-Null
        New-ItemProperty -Path $args[0] -Name $Name -Value 1 -PropertyType DWORD -Force | Out-Null
    }
}

Ensure-Registry-Path $LocalMachinePath
Ensure-Registry-Path $CurrentUserPath

$CurrentValue = (Get-ItemProperty $LocalMachinePath -Name $Name -ea 1).AppsUseLightTheme
if ($CurrentValue -eq 1) {
    $NewValue = 0
}
else {
    $NewValue = 1
}

New-ItemProperty -Path $LocalMachinePath -Name $Name -Value $NewValue -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path $CurrentUserPath -Name $Name -Value $NewValue -PropertyType DWORD -Force | Out-Null
