# bbs.dspi.me

构建：

  docker build -t discuz:x3.3 ./
  
运行:

  docker run --name bbs.dspi.me -d -v /var/lib/bbs.dspi.me/data/attachment:/var/www/html/data/attachment  discuz:x3.3
