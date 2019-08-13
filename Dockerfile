# escape=`

FROM keneanung/mudlet-base-docker-windows:latest

COPY Mudlet C:/src/Mudlet
RUN powershell -Command Get-WmiObject win32_processor | Select -ExpandProperty "NumberOfLogicalProcessors"
RUN powershell -Command "cd C:\src\Mudlet\CI; & .\appveyor.install.ps1; cd ..\..; dir; Remove-Item -Recurse -Force C:\src"
