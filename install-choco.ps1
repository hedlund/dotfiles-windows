if ((which cinst) -eq $null) {
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
    choco feature enable -n=allowGlobalConfirmation
}

# Install some *nix tools.
choco install nano
choco install vim
choco install wget
choco install curl
choco install git
choco install rsync

# Install other useful binaries.
choco install ack
choco install imagemagick
choco install graphviz
choco install lua
choco install nuget.commandline

# Install Java related things
choco install jdk7
choco install jdk8
choco install ant

# Misc tools
choco install cpu-z
choco install cygwin

# Android stuff
choco install android-sdk
#choco install android-ndk
choco install androidstudio

# Install system tools
choco install dropbox
choco install launchy
choco install 1password

# Install internet-related applications.
choco install googlechrome
choco install firefox
choco install evernote

# Install IDEs and editors.
choco install atom
choco install sublimetext3

# Install some Docker & virtualization tools.
choco install packer
choco install virtualbox
choco install vagrant

# Install some entertainment
choco install spotify
