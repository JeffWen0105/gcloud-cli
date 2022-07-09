#!/bin/bash
gcloud auth application-default login --no-launch-browser
echo -e "\n"
echo -e "Copy Credential ... \n"
echo -e "------------ Credential Begin --------------------\n"
cat /root/.config/gcloud/application_default_credentials.json
echo -e "\n"
echo -e "------------ Credential End ----------------------\n"
