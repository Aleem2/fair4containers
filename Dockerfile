# Example Dockerfile
FROM python:3.12.0

# Installing web scraping tool
RUN pip3 install --upgrade pip 
RUN pip install Scrapy==2.11.0  

# ipython to assist in running scrapy shell.
RUN pip install ipython==8.17.2 

# Simple editor to create scrapy spiders files
RUN apt update
RUN apt install -y vim 
EXPOSE 80/tcp   

# A practical suggestion in meeting the FAIR for Research Software recommendations is to include the license, citation.cff and readme files inside the container. The code snippet below makes it happen. 

# Changing container directory to home. 
WORKDIR /home

# Copying license, citation.cff and readme files to home directory
COPY Dockerfile CITATION.cff LICENSE README.md .
