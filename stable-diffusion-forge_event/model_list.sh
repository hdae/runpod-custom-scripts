if [[ -z $CIVITAI_TOKEN ]]; then
  echo "WARNING: CIVITAI_TOKEN required!!"
fi

declare -A models=(
  ["Stable-diffusion/waiNSFWIllustrious_v140.safetensors"]="https://civitai.com/api/download/models/1761560?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"
)
