FROM ubuntu:20.04

RUN apt-get update && apt-get -y install curl unzip libunwind8 libicu66 gnupg

# Install the SQLPACKAGE tool and configure:
RUN curl https://aka.ms/sqlpackage-linux -O -J -L
RUN unzip sqlpackage-linux -d ~/sqlpackage
RUN echo "export PATH=\"\$PATH:$HOME/sqlpackage\"" >> ~/.bashrc
RUN chmod a+x ~/sqlpackage/sqlpackage
RUN rm sqlpackage-linux

# Install the SQLCMD tool and configure:
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list | tee /etc/apt/sources.list.d/msprod.list
RUN apt-get update && ACCEPT_EULA=Y apt-get install -y mssql-tools
#RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc

# Install the .NET 6 SDK:
RUN apt-get install -y apt-transport-https && apt-get update && apt-get install -y dotnet-sdk-6.0

RUN apt-get -y install locales
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

RUN rm -rf /var/lib/apt/lists/*