FROM perl:5.28
MAINTAINER Jose Luis Martinez <jlmartinez@capside.com>

COPY . /root/
RUN cpanm -l local -n --installdeps . ; \
    rm -rf /root/.cpanm

ENV PERL5LIB /root/local/lib/perl5:/root/lib/

ENTRYPOINT [ "/root/app.pl", "daemon" ]

EXPOSE 3000
