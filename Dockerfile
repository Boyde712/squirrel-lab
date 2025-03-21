FROM microsoft/windowsservercore
# Create Windows user in the container
RUN net user /add jack
# Set it for subsequent commands
USER jack

FROM alpine:latest

RUN apk add bash
ADD dummy.txt .
