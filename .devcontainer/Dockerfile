# Note you can test this with 
#    docker build .devcontainer
# And note, it'll cache the layers, which means if you're just messing around with the last few lines, it'll be fast.

FROM ghcr.io/rails/devcontainer/images/ruby:3.3.0

RUN sudo -s apt-get update \
    && sudo -s apt-get install -y --no-install-recommends \
        fontconfig \
        fswatch \
    && sudo -s rm -rf /var/lib/apt/lists/*

# Add Source Sans Pro font
# Adpated from https://gist.github.com/jacksonpradolima/840b4a20c617204a65b15da61e124bf6
# The RUN <<EOF set -e ... EOF has the effect of chaining all the commands together, so that if one fails, the whole RUN
# command fails, but only one layer is created.
RUN <<EOF
set -e

cd $(mktemp -d)
TEMP_DIR=$(pwd)

wget https://github.com/adobe-fonts/source-sans-pro/archive/2.020R-ro/1.075R-it.zip
unzip 1.075R-it.zip
sudo -s cp source-sans-2.020R-ro-1.075R-it/OTF/*.otf /usr/local/share/fonts

sudo -s fc-cache -f -v
rm -rf $TEMP_DIR
EOF
