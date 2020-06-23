#!/bin/sh

echo "Testing unsecure connection without redirect"

HTTP_STATUS=$(curl 'http://localhost' --silent --output /dev/null -k --write-out %{response_code} --max-redirs 0)

if [ ! $HTTP_STATUS -eq 301  ]; then
  echo "Error [HTTP status: $HTTP_STATUS]"
  echo "False"
  exit 1
fi

echo "unsecure connection status was $HTTP_STATUS"
echo "True"

echo "Testing unsecure connection with redirect"

HTTP_STATUS=$(curl 'http://localhost' --silent --output /dev/null -k --write-out %{response_code} --max-redirs 1 -L)

if [ ! $HTTP_STATUS -eq 200  ]; then
  echo "Error [HTTP status: $HTTP_STATUS]"
  echo "False"
  exit 1
fi

echo "unsecure connection status was $HTTP_STATUS"
echo "True"

echo "Testing secure connection with redirect"

HTTP_STATUS=$(curl 'https://localhost' --silent --output /dev/null -k --write-out %{response_code} --max-redirs 0 -L)

if [ ! $HTTP_STATUS -eq 200  ]; then
  echo "Error [HTTP status: $HTTP_STATUS]"
  echo "False"
  exit 1
fi

echo "secure connection status was $HTTP_STATUS"
echo "True"


