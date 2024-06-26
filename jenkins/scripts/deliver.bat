@echo off

REM Run the build command
npm run build

REM Start the application in the background
start npm start
timeout /t 5 /nobreak

REM Retrieve the PID of the first node.exe process
for /f "tokens=2 delims=," %%I in ('tasklist /fi "imagename eq node.exe" /fo csv /nh') do (
  echo %%I > .pidfile
  goto break
)
:break

echo Now...
echo Visit http://localhost:3000 to see your Node.js/React application in action.
