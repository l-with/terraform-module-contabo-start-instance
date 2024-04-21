#!/bin/sh

if [ x"${CONTABO_REALM_URL}" == "x" ]; then
  echo "CONTABO_REALM_URL is not set"
  exit 1
fi

if [ x"${CONTABO_API_URL}" == "x" ]; then
  echo "CONTABO_API_URL is not set"
  exit 2
fi

if [ x"${CONTABO_CLIENT_ID}" == "x" ]; then
  echo "CONTABO_CLIENT_ID is not set"
  exit 3
fi

if [ x"${CONTABO_CLIENT_SECRET}" == "x" ]; then
  echo "CONTABO_CLIENT_SECRET is not set"
  exit 4
fi

if [ x"${CONTABO_USER}" == "x" ]; then
  echo "CONTABO_USER is not set"
  exit 5
fi

if [ x"${CONTABO_PASS}" == "x" ]; then
  echo "CONTABO_PASS is not set"
  exit 6
fi

if [ x"${CONTABO_REQUEST_ID}" == "x" ]; then
  echo "CONTABO_REQUEST_ID is not set"
  exit 7
fi

if [ x"${CONTABO_INSTANCE_ID}" == "x" ]; then
  echo "CONTABO_INSTANCE_ID is not set"
  exit 8
fi

_CONTABO_ACCESS_TOKEN=$(curl --data "client_id=${CONTABO_CLIENT_ID}" --data "client_secret=${CONTABO_CLIENT_SECRET}" --data-urlencode "username=${CONTABO_USER}" --data-urlencode "password=${CONTABO_PASS}" --data 'grant_type=password' ${CONTABO_REALM_URL}/protocol/openid-connect/token | jq -r '.access_token')

curl -X POST -H "Authorization: Bearer ${_CONTABO_ACCESS_TOKEN}" -H "x-request-id: ${CONTABO_REQUEST_ID}" "${CONTABO_API_URL}/compute/instances/${CONTABO_INSTANCE_ID}/actions/start"


DB598DB4-55FE-D2FF-65A7-04A86EAF7625