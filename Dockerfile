FROM python:3.12.0
RUN pip3 install --upgrade pip 
RUN pip install Scrapy==2.11.0 # web scraping tool 
RUN pip install ipython==8.17.2 # ipython makes scrapy shell interactive with autocomplete and help
RUN apt update
RUN apt install -y vim # simple editor to create scrapy spiders files
EXPOSE 80/tcp   
COPY . .

