# Script to install a GVM environment

# First install Posh GVM
$ModulesDir = "$HOME/Documents/WindowsPowerShell/Modules"
if (!(Test-Path $ModulesDir)) {
    mkdir "$ModulesDir"
}
$PoshDir = "$ModulesDir/posh-gvm"
if (!(Test-Path $PoshDir)) {
  git clone https://github.com/flofreud/posh-gvm "$PoshDir"
}
Import-Module posh-gvm

# Install the modules we want with GVM
gvm install groovy
gvm install grails
gvm install gradle
gvm install springboot
gvm install maven
gvm install springboot
gvm install scala
gvm install kotlin

# Cleanup
gvm flush archives
