FROM microsoft/windowsservercore

COPY Mudlet C:/src/Mudlet
RUN powershell -Command "cd C:\src\Mudlet; dir; .\setup-windows-sdk.ps1; Remove-Item C:\src -Force -Recurse"
