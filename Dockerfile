FROM golang:1.14-alpine AS build

WORKDIR /src/
COPY hello.go go.* /src/
RUN go build -o /bin/hello

FROM scratch
COPY --from=build /bin/hello /bin/hello
ENTRYPOINT ["/bin/hello"]