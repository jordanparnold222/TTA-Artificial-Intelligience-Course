### Q:Scrape and display the title of this webpage:
### https://www.learncodinganywhere.com/codingbootcamps/
### Scrape and display the footer of a webpage. 
### (Note: you may have to double click on the 
### “Squeezed text” box if it is displayed.)
import requests
from bs4 import BeautifulSoup

resp = requests.get("https://www.learncodinganywhere.com/codingbootcamps/")
soup = BeautifulSoup(resp.text, 'html.parser')
footer_el = soup.find('footer')
if footer_el:
    page_footer = footer_el.text
    print("Footer text is: ", page_footer)
else:
    print("Page footer not found.")