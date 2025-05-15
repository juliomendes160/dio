if ! node -v &>/dev/null; then
    dir="$node"
    url="https://nodejs.org/dist/v16.16.0/node-v16.16.0-x64.msi"
    filename=$(basename $url)
    
    mkdir -p "$dir"
    cd "$(dirname "$dir")"
    curl -L -O "$url"
    start "$filename"
    cd -
fi

if ! code --list-extensions --show-versions | grep -iq eamodio.gitlens; then
    code --install-extension eamodio.gitlens
fi

if ! code --list-extensions --show-versions | grep -iq ritwickdey.liveserver; then
    code --install-extension ritwickdey.liveserver
fi
