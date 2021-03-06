# Prepare
cd docs
rm -rf .vuepress/dist

# Build
vuepress build

# Publish to GitHub Pages
cd .vuepress/dist
git init
git add -A
git commit -m '[vuepress] update docs'
git push -f git@github.com:wuxianqiang/vuepress-starter.git master:gh-pages

# Cleanup
cd ../..
rm -rf .vuepress/dist