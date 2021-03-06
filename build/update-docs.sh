# Prepare
cd docs
rm -rf .vuepress/dist

# Build
vuepress build

# Publish to GitHub Pages
cd .vuepress/dist
git init
git config user.name "wuxianqiang"
git config user.email "2631640352@qq.com"
git add -A
git commit -m "[vuepress] update docs"
git push -f "https://${secrets.HEXO_DEPLOY_PRIVATE_KEY}@github.com/wuxianqiang/vuepress-starter.git"

# Cleanup
cd ../..
rm -rf .vuepress/dist
