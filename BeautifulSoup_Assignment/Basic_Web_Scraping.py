import requests
from bs4 import BeautifulSoup
#Send request to Tech Academy website
url = "https://learncodinganywhere.com"
response = requests.get(url)
#Build BeautifulSoup object to parse HTML
soup = BeautifulSoup(response.text, 'html.parser')
#Extract page title 
title_element = soup.find('title')
if title_element:
    page_title = title_element.text
    print("Page Title: ", page_title)
else:
    print("Page title not found.")