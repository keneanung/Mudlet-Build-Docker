# escape=`

FROM microsoft/windowsservercore

COPY Mudlet C:/src/Mudlet
RUN powershell -Command "cd C:\src\Mudlet\CI; & .\appveyor.install.ps1; cd ..\..; dir; Remove-Item -Recurse -Force C:\src"
