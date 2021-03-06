# File for docker-build target in Makefile
FROM gcc:9 as builder

COPY ./main.cpp /usr/src/myapp/
WORKDIR /usr/src/myapp
RUN gcc ./main.cpp -o main -lstdc++ -lpthread -static

FROM gcr.io/distroless/static:nonroot
WORKDIR /
COPY --from=builder /usr/src/myapp/main .
USER nonroot:nonroot

ENTRYPOINT ["./main"]

