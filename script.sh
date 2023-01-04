#!/usr/bin/env bash

# Check if Dalfox and HTTPie are installed
if ! command -v dalfox > /dev/null; then
  printf "Dalfox is not installed. Please install it first.\n" >&2
  exit 1
fi

if ! command -v http > /dev/null; then
  printf "HTTPie is not installed. Please install it first.\n" >&2
  exit 1
fi

# Check if a domain is provided
if [ "$#" -ne 1 ]; then
  printf "Usage: domain_crawl.sh domain\n" >&2
  exit 1
fi

domain=$1

# Crawl the domain and extract all URLs
urls=$(dalfox url -d "$domain")

# Check the HTTP status code for each URL and scan for XSS vulnerabilities
while read -r url; do
  status_code=$(http --ignore-stdin --check-status --print=hHb --timeout=5 "$url" | grep "^HTTP" | awk '{print $2}')
  printf "URL: %s Status Code: %s\n" "$url" "$status_code"

  if [[ "$url" == *"="* ]]; then
    printf "URL contains an equal sign (=). Scanning for XSS vulnerabilities...\n"
    dalfox request "$url"
  fi
done <<< "$urls"
