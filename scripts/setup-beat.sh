#!/bin/bash

set -euo pipefail

beat=$1
es_url=http://elasticsearch:9200

# Load the sample dashboards for the Beat.
# REF: https://www.elastic.co/guide/en/beats/metricbeat/master/metricbeat-sample-dashboards.html
until ${beat} setup \
-E setup.kibana.host=kibana 
do
sleep 2
echo Retrying...
done
