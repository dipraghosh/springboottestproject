FROM scratch
MAINTAINER Dipra Ghosh <ghosh.dipra@gmail.com>
COPY bin/springboottestproject /springboottestproject
EXPOSE 9002 8888
USER 1001
ENTRYPOINT ["/springboottestproject"]
