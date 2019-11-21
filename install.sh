#!/usr/bin/env bash

#                                __   _
#    _______ __ _  ___ _  _____ / /  (_)__
#   / __/ -_)  ' \/ _ \ |/ / -_) _ \/ / _ \
#  /_/  \__/_/_/_/\___/___/\__/_.__/_/_//_/
#
# run "./install" to install removebin

installation_directory='/usr/bin/'

cat << EOF
                                __   _
    _______ __ _  ___ _  _____ / /  (_)__
   / __/ -_)  ' \\/ _ \\ |/ / -_) _ \\/ / _ \\
  /_/  \\__/_/_/_/\\___/___/\\__/_.__/_/_//_/

EOF

sudo cp removebin "$installation_directory" && \
    echo "Installed, thank you!" || \
    echo "Not installed, an error occurred"
