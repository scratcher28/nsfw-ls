cd /D "%~dp0"
netstat -ano | find /i "listening" | find ":3030" >nul 2>nul && (
    exit
) || (
    node --expose-gc src/index.js
)


