#!/bin/bash

if [[ ${2} == "1" ]] && [[ $CI_JOB_STATUS == "success" ]]; then
    exit;
fi

STATUS="$(echo "$CI_JOB_STATUS")"

TELEGRAM_BOT_TOKEN="5489414068:AAGGqJKXpv5BrHm_jrGKKwtv8J5y23n8FY0"
TELEGRAM_USER_ID="278691095"

URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="$(echo ${1}) status: $STATUS"

curl -s -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
