FROM golang:alpine AS build

WORKDIR /src/
COPY hello.go go.* /src/
RUN go build -o /bin/hello

FROM scratch
COPY --from=build /bin/hello /bin/hello
ENTRYPOINT ["/bin/hello"]