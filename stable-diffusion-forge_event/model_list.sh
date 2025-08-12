if [[ -z $CIVITAI_TOKEN ]]; then
  echo "WARNING: CIVITAI_TOKEN required!!"
fi

declare -A models=(
  ["Stable-diffusion/waiNSFWIllustrious_v140.safetensors"]="https://civitai.com/api/download/models/1761560?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/hassakuXLIllustrious_v30.safetensors"]="https://civitai.com/api/download/models/2010753?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/mistoonX3D_v20Semireal.safetensors"]="https://civitai.com/api/download/models/2013688?type=Model&format=SafeTensor&size=full&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/mistoonX3D_v20Semireal.safetensors"]="https://civitai.com/api/download/models/2013688?type=Model&format=SafeTensor&size=full&fp=fp16&token=${CIVITAI_TOKEN}"
)
