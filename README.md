# bbs.dspi.me

构建：

  docker build -t discuz:x3.3 ./
  
运行:

  docker run --name bbs.dspi.me -d -v /var/www/html:/var/www/bbs.dspi.me discuz:x3.3
