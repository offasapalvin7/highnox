# highnox
This script will crawl the provided domain, extract all of the URLs, check the HTTP status code for each URL, and scan for XSS vulnerabilities if the URL contains an equal sign (=). It uses Dalfox to crawl the domain and extract the URLs, and HTTPie to check the HTTP status code and send HTTP requests.

To use the script, you will need to make it executable using the following command:

chmod +x /path/to/script.sh

Then, you can run the script by providing the domain as an argument:

./script.sh example.com



The script will crawl all the URLs of the given domain and check the status code for each URL. It will also scan for parameters that include an equals sign (=) and run Dalfox on those URLs.



how to install dalfox 

To install Dalfox on GitHub, you will need to have Go (version 1.14 or later) installed on your system. Once Go is installed, follow these steps:
Clone the Dalfox repository:


git clone https://github.com/hahwul/dalfox.git

Change into the Dalfox directory:

cd dalfox

Build Dalfox using Go:
go build

Install Dalfox:
go install


Run Dalfox:
dalfox


Alternatively, you can also use Go's go get command to install Dalfox:
go get -u github.com/hahwul/dalfox



This will install Dalfox in your $GOPATH/bin directory. You can then run Dalfox by simply running dalfox in your terminal.










