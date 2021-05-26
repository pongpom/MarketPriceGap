FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR ./

COPY *.sln .
COPY webhook.txt .
COPY pair.txt .
COPY interval.txt .

ADD entrypoint.sh /entrypoint.sh
RUN chmod +rwx /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]