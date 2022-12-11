# 其他笔记
fork
https://blog.csdn.net/qq1332479771/article/details/56087333
fork的仓库更新远程仓库的内容：
    git remote -v  //查看远程所有分支
    git remote add  代号 远程分支地址  //获取远程仓库的分支并添加到fork的自己项目，在运行 git remote -v 查看是否有添加
    在本地仓库运行
        git fetch  远程仓库的分支代号   就获取远程仓库的最新代码了
    再合并到我们fork下来的仓库,保证不失去本地的更改

  example:
   git remote -v
   git remote add upstream  xxxurl
   git fetch upstream
   git merge upstream/dev
   git push



设定格式化 断行的位置:
https://blog.csdn.net/qjyws/article/details/118497748