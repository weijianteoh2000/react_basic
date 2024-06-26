@echo off

npm run build

start npm start
timeout /t 1 /nobreak
for /f "tokens=2 delims==; " %%I in ('tasklist /fi "imagename eq node.exe" /fo csv /nh') do (
  echo %%I > .pidfile
  goto break
)
:break

echo Now...
echo Visit http://localhost:3000 to see your Node.js/React application in action.