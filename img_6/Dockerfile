FROM perl:5.28-slim
MAINTAINER Jose Luis Martinez <jlmartinez@capside.com>

RUN apt-get update ; apt-get install -y build-essential openssl libssl-dev zlib1g-dev
COPY cpanfile /root/
RUN cpanm -l local -n --installdeps --no-man-pages . ; rm -rf /root/.cpanm

COPY . /root/

ENV PERL5LIB /root/local/lib/perl5:/root/lib/
ENTRYPOINT [ "/root/app.pl", "daemon" ]
EXPOSE 3000
