FROM microsoft/windowsservercore

RUN powershell -Command "dir; cd .\Mudlet; . setup-windows-sdk.ps1; Remove-Item C:\src -Force -Recurse"
