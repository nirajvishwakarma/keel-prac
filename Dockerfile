# My website
FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
#RUN apt-get install git -y
#RUN git clone https://github.com/nirajvishwakarma/Event-Management.git
copy . /var/www/html/
#RUN mv /Event-management/index.html /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]