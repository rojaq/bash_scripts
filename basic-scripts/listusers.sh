#!/bin/bash
# NAME: Jacek
# DATE: 03/29/2023 10:38:45 PM CEST
# DESCRIPTION: List logged in users by date

today=$(date | awk '{print $1,$2,$3}')
last | grep "${today}" | awk '{print $1}'
