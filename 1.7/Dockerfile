FROM ubuntu:16.04

WORKDIR /mydir
RUN apt-get update && apt-get install -y curl 
COPY script.sh .
RUN chmod +xr *.sh
CMD ["./script.sh"]
