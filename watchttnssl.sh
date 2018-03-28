#!/bin/bash
#
# subscribe by mqtt to TheThingsNetwork using SSL
#
# Lukas, ASMON, 25.3.2017
#
# mosquitto_sub -h <Region>.thethings.network -t '+/devices/+/up' -u '<AppID>' -P '<AppKey>' -v
TOPICS="<topics>"
APPID="<my-app-id>"
ACCESSKEY="<ttn-account-v2.Q..........>"
CERTFILE="mqtt-ca.pem"
BROKER="eu.thethings.network"

mosquitto_sub -h $BROKER -t $TOPICS -u "$APPID" -P "$ACCESSKEY" -v --cafile $CERTFILE -p 8883