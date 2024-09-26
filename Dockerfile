FROM golang:1.23.0-bookworm

COPY ./ /src
WORKDIR /src
RUN go install github.com/form3tech/innsecure/cmd/innsecure

EXPOSE 8080

ENTRYPOINT innsecure
