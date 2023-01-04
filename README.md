# highnox
This script will crawl the provided domain, extract all of the URLs, check the HTTP status code for each URL, and scan for XSS vulnerabilities if the URL contains an equal sign (=). It uses Dalfox to crawl the domain and extract the URLs, and HTTPie to check the HTTP status code and send HTTP requests.

To use the script, you will need to make it executable using the following command:

chmod +x /path/to/script.sh

Then, you can run the script by providing the domain as an argument:

./script.sh example.com



The script will crawl all the URLs of the given domain and check the status code for each URL. It will also scan for parameters that include an equals sign (=) and run Dalfox on those URLs.
