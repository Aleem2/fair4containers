FROM python:3.12.0

# Installing web scraping tool
RUN pip3 install --upgrade pip 
RUN pip install Scrapy==2.11.0  

# Vi editor to create python files and manupilate web scraping
RUN pip install ipython==8.17.2 

# Simple editor to create scrapy spiders files
RUN apt update
RUN apt install -y vim 
EXPOSE 80/tcp   

# Changing container directory to home. 
WORKDIR /home

# Copying license, citation.cff and readme files to home directory
COPY Dockerfile CITATION.cff LICENSE .
