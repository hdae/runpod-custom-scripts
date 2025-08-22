
# Add extension "stable-diffusion-webui-images-browser"
[[ -e /workspace/extensions/images-browser ]] || \
    git clone --depth=1 "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser" /workspace/extensions/images-browser

# Add extension "a1111-sd-webui-tagcomplete"
[[ -e /workspace/extensions/tag-autocomplete ]] || \
    git clone --depth=1 "https://github.com/DominikDoom/a1111-sd-webui-tagcomplete" /workspace/extensions/tag-autocomplete

# Install danbooru-tagcomplete-extra (Japanese tag completion)
rm /workspace/extensions/tag-autocomplete/tags/danbooru.csv
curl -fsSL "https://github.com/hdae/danbooru-tagcomplete-extra/releases/download/2025-05-06/danbooru.csv" -o /workspace/extensions/tag-autocomplete/tags/danbooru.csv

# # Add config files.
# SDF_CONFIG="https://raw.githubusercontent.com/hdae/runpod-custom-scripts/refs/heads/main/stable-diffusion-forge"
# curl -fsSL "${SDF_CONFIG}/config.json" -o /workspace/config.json
# curl -fsSL "${SDF_CONFIG}/ui-config.json" -o /workspace/ui-config.json
