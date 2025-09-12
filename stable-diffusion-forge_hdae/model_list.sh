if [[ -z $CIVITAI_TOKEN ]]; then
  echo "WARNING: CIVITAI_TOKEN required!!"
fi

declare -A models=(

  # Add Stable Diffusion model to "/workspace/models/Stable-diffusion" directory.
  ["Stable-diffusion/absoluteTerritory_v3.safetensors"]="https://civitai.com/api/download/models/2031413?type=Model&format=SafeTensor&size=full&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/copycatIllustrious_v70.safetensors"]="https://civitai.com/api/download/models/1892440?type=Model&format=SafeTensor&size=full&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/JANKUV5NSFWTrainedNoobai_v50.safetensors"]="https://civitai.com/api/download/models/1896532?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"
  # ["Stable-diffusion/hakushiMix_v141.safetensors"]="https://civitai.com/api/download/models/2060205?type=Model&format=SafeTensor&size=full&fp=fp16&token=${CIVITAI_TOKEN}"
  # ["Stable-diffusion/hassakuXLIllustrious_v30.safetensors"]="https://civitai.com/api/download/models/2010753?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"

  # Realistic
  ["Stable-diffusion/mistoonX3D_v20Semireal.safetensors"]="https://civitai.com/api/download/models/2013688?type=Model&format=SafeTensor&size=full&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/illustrijEVO_lvl3.safetensors"]="https://civitai.com/api/download/models/2182724?type=Model&format=SafeTensor&size=full&fp=fp16&token=${CIVITAI_TOKEN}"

  # WAI-NSFW-illustrious
  ["Stable-diffusion/waiNSFWIllustrious_v140.safetensors"]="https://civitai.com/api/download/models/1761560?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"
  ["Stable-diffusion/waiNSFWIllustrious_v150.safetensors"]="https://civitai.com/api/download/models/2167369?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${CIVITAI_TOKEN}"

  # Add LoRA model to "/workspace/models/Lora" directory.
  # ["Lora/pixel-Illustrius.safetensors"]="https://civitai.com/api/download/models/1352325?type=Model&format=SafeTensor&token=${CIVITAI_TOKEN}"
)
