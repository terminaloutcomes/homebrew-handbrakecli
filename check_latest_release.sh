#!/bin/bash

# echo to stderr: https://stackpointer.io/script/shell-script-echo-to-stderr/355/


# get_latest_release from here https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c
get_latest_release() {
  curl --silent "$1" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

SPECFILE=$(find "$(pwd)" -type f -name '*.rb' | head -n1)

# grab the update url from the spec file
URL=$(grep -E homepage "${SPECFILE}" | awk '{print $NF}' | tr -d '"')
# pull the latest version
LATEST=$(get_latest_release "${URL}" )

DOWNLOAD_URL=$(grep -E 'url \"http.*' handbrakecli.rb | awk '{print $NF}' | tr -d '"' | sed -E "s/#{version}/${LATEST_VERSION}/g")

FILEHASH=$(curl -L --silent "${DOWNLOAD_URL}" | shasum -a 256 | awk '{print $1}')

# if [ -z "${LATEST}" ]; then
#     echo "Couldn't find release" >&2
#     exit 1
# fi

# echo "Found latest for ${REPO}: ${LATEST}" >&2
# updates the file
find "$(pwd)" -maxdepth 1 -type f -name '*.rb' -exec sed -i "" -E "s/version \\\".*/version \"${LATEST}\"/g" "{}" \;
find "$(pwd)" -maxdepth 1 -type f -name '*.rb' -exec sed -i "" -E "s/sha256 \\\".*/sha256 \"${FILEHASH}\"/g" "{}" \;

echo "::set-env name=LATEST::${LATEST}"