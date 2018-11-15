FROM perl:5.28
MAINTAINER Jose Luis Martinez <jlmartinez@capside.com>

COPY cpanfile /root/
RUN cpanm -l local -n --installdeps --no-man-pages . ; \
    rm -rf /root/.cpanm

COPY . /root/

ENV PERL5LIB /root/local/lib/perl5:/root/lib/

ENTRYPOINT [ "/root/app.pl", "daemon" ]

EXPOSE 3000
