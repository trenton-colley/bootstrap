Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

choco install git
choco install poshgit
choco install gpg4win
choco install sbt
choco install vscode
choco install intellijidea-community