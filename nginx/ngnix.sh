--nginx 이미지 다운로드
docker pull nginx
--nginx 실행
-- -p 50000:80 -> nginx 컨테이너 80포트를 호스트의 50000포트로 연결
-- nginx:latest -> nginx latest버전 이미지 가져오기 
-- -v (로컬 경로)/index.html:nginx의 index.html 경로 -> 폴더뿐만 아니라 파일을 직접 연결할 수도 있다.
docker run -p 50000:80\
 -v $(pwd)/html/index.html:/usr/share/nginx/html/index.html\
 nginx:latest