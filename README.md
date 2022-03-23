# YottaDB-MQTT

![example workflow](https://github.com/RamSailopal/YottaDB-MQTT/actions/workflows/deploy.yml/badge.svg)

Containerised YottaDB native MQTT subscriber/publisher.

Build using the following code:

https://github.com/informatik-aalen/GTMQTT

Docker image:

https://hub.docker.com/repository/docker/ramb0/yottadb-mqtt

# Demo

# Gitpod

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/RamSailopal/YottaDB-MQTT)
   
1) Create a free/paid Gitpod account - https://www.gitpod.io/
2) Log into the account
3) Open a new browser tab and add **gitpod.io/#https://github.com/RamSailopal/YottaDB-MQTT** to the address - This will create a new Gitpod cloud instance.
4) Two terminals will run, one will drop you into a YDB prompt and one will subscribe to the topic **yottadb/test** at **test.mosquitto.org** and display messages. At the YDB prompt, type the following:
      
       D CONNECT^MQTT("test.mosqutto.org","1883","","")
       D PUBLISH^MQTT("yottadb/test","test message")
 
 You should see **test message** appear in the other terminal window that shows messages.
