@echo off
chcp 65001 >nul
echo 正在推送到 GitHub...

git init
git remote remove origin 2>nul
git remote add origin https://github.com/rongrong01/20260222.git
git add .
git commit -m "添加携程智能行程规划项目：PRD文档与可交互原型"
git branch -M main
git push -u origin main

echo.
echo 完成！
pause
