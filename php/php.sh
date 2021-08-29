--마지막줄의 php /app/hello.php는 커맨드 명령어
docker run --rm\
 -v $(pwd)/hello.php:/app/hello.php\
 php:7\
 php /app/hello.php