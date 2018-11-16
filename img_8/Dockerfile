FROM perl:5.28-slim
MAINTAINER Jose Luis Martinez <jlmartinez@capside.com>

RUN apt-get update ; \
    apt-get install -y build-essential curl openssl libssl-dev zlib1g-dev

COPY cpanfile /root/
RUN cpanm -l local -n --installdeps --no-man-pages . 

RUN curl -s https://raw.githubusercontent.com/pplu/p5-pod-stripper/feature/fatpack/fatpacked/pod_stripper.pl | perl - /root/local/lib/perl5

FROM perl:5.28-slim

RUN apt-get update ; \
    apt-get install -y openssl

COPY --from=0 /root/local /root/local
COPY . /root/

ENV PERL5LIB /root/local/lib/perl5:/root/lib/

ENTRYPOINT [ "/root/app.pl", "daemon" ]

EXPOSE 3000
