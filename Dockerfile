FROM golang:alpine AS build-env
WORKDIR /usr/local/go/src/github.com/nirajvishwakarma/keel-prac
COPY . /usr/local/go/src/github.com/nirajvishwakarma/keel-prac
RUN go install -ldflags="-w -s"
#RUN apt install go

FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=build-env /usr/local/go/bin/keel-prac /bin/keel-prac
CMD ["push-workflow-example"]

EXPOSE 8500
