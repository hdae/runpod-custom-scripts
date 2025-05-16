if [[ -z $CIVITAI_TOKEN ]]; then
  echo "WARNING: CIVITAI_TOKEN required!!"
fi

declare -A models=(

  # Add Stable Diffusion model to "/workspace/models/Stable-diffusion" directory.
  ["Stable-diffusion/waiNSFWIllustrious_v120.safetensors"]="https://civitai.com/api/download/models/1490781?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/waiNSFWIllustrious_v140.safetensors"]="https://civitai.com/api/download/models/1761560?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/novaFurryXL_illustriousV7b.safetensors"]="https://civitai.com/api/download/models/1760102?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"

  # Add LoRA model to "/workspace/models/Lora" directory.
  ["Lora/pixel-Illustrius.safetensors"]="https://civitai.com/api/download/models/1352325?type=Model&format=SafeTensor&token=${CIVITAI_TOKEN}"
)
