# 推送到 GitHub 的脚本
# 请在项目文件夹中右键 -> 用 PowerShell 打开，然后运行: .\push-to-github.ps1

$repoUrl = "https://github.com/rongrong01/20260222.git"

# 初始化（如未初始化）
if (-not (Test-Path .git)) {
    git init
}

# 添加远程仓库
git remote remove origin 2>$null
git remote add origin $repoUrl

# 添加所有文件
git add .

# 提交
git commit -m "添加携程智能行程规划项目：PRD文档与可交互原型" 2>$null
if ($LASTEXITCODE -ne 0) {
    git commit -m "更新项目文件"
}

# 推送到 main 分支
git branch -M main
git push -u origin main

Write-Host "推送完成！" -ForegroundColor Green
