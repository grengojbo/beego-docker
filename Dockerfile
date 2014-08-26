# Golang base host
#
# VERSION               0.1.0

FROM  grengojbo/go:latest
MAINTAINER Oleg Dolya "oleg.dolya@gmail.com"

ADD gitconfig /root/.gitconfig
ADD gitignore /root/.gitignore
ADD hgrc /root/.hgrc

WORKDIR /go/src
RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee
RUN go get github.com/beego/i18n
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/astaxie/beego/httplib
RUN go get github.com/astaxie/beego/session/redis
RUN go get github.com/astaxie/beego/cache
RUN go get github.com/astaxie/beego/validation
RUN go get github.com/astaxie/beego/toolbox


# Configuring timezone
#RUN cp /usr/share/zoneinfo/Europe/Kiev /etc/localtime
#EXPOSE 8080
#CMD ["bee", "version"]
