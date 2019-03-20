//Node가 깔려있는 이미지로 빌드한다.
FROM node:8.15.1-jessie-slim

//프로그램을 복사하고 그 자리로 이동한다.
COPY . /app
WORKDIR /app

//의존 패키지 설치
RUN npm install

//이미지 실행 명령어 등록
CMD node app.js

//포트 등록
EXPOSE 3000
