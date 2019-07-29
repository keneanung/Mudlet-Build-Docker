# escape=`

FROM keneanung/qt-windows:5.12.4-mingw-x86

COPY Mudlet C:/src/Mudlet
RUN powershell -Command "cd C:\src\Mudlet\CI; & .\appveyor.install.ps1; cd ..\..; dir; Remove-Item -Recurse -Force C:\src"
