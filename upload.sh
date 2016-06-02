#!/bin/bash
echo "# balance.sml" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/picachu93/balance.sml.git
git push -u origin master
