FROM microsoft/windowsservercore

RUN powershell -Command ". setup-windows-sdk.ps1; Remove-Item C:\src -Force -Recurse"
