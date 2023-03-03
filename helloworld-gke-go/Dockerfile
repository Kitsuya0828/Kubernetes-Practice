FROM golang:1.19.2 as builder
WORKDIR /app

RUN go mod init quickstart-go

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /quickstart-go

FROM gcr.io/distroless/base-debian11

WORKDIR /

COPY --from=builder /quickstart-go /quickstart-go

USER nonroot:nonroot
ENTRYPOINT [ "/quickstart-go" ]