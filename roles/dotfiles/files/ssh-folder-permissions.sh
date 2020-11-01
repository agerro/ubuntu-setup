#!/bin/bash

#RUN FROM HOME FOLDER
chown -R $USER:$USER .ssh
chmod -R 700 .ssh &&
find .ssh/ -type f -exec chmod 600 -- {} + &&
find .ssh/ -type f -name "*.pub" -exec chmod 644 -- {} + &&
find .ssh/ -type f -name "*.sh" -exec chmod +x -- {} +
