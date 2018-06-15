# escape=`

FROM microsoft/windowsservercore

COPY Mudlet C:/src/Mudlet
RUN powershell -Command "cd C:\src\Mudlet\CI; dir; & .\appveyor.install.ps1; Remove-Item C:\src -Force -Recurse"
