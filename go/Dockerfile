FROM golang as exec

COPY app.go /go/src/app/

ENV GO111MODULE=auto

WORKDIR /go/src/app/

#RUN go build -o app .
#RUN go build app.go
RUN go build -o app

FROM alpine

WORKDIR /appexec

COPY --from=exec /go/src/app /appexec
RUN chmod -R 755 /appexec
ENTRYPOINT ./app
