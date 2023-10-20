FROM golang:1.21.3-alpine3.18 as builder 

WORKDIR /app

COPY inicio.go ./

RUN go build inicio.go

FROM scratch

WORKDIR /app

COPY --from=builder /app/inicio /app/inicio

CMD ["/app/inicio"]



