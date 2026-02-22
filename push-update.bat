@echo off
chcp 65001 >nul
echo 正在推送 index.html / index.html.html 到 GitHub...

git add index.html index.html.html
git add README.md
git status
git commit -m "添加 index.html 与 index.html.html"
git push origin main

echo.
echo 完成！
pause
