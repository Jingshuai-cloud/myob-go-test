FROM golang:1.17

ARG SECRET_VALUE
ENV SECRET=$SECRET_VALUE

# add and download dependencies
WORKDIR /app
COPY go.mod ./
RUN go mod download

# copy rest of go files and build a static application binary named docker-go-app
COPY *.go ./
#COPY . .
RUN go build -o /docker-gs-ping

CMD [ "/docker-gs-ping" ]
