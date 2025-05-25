# Custom script for [Stable Diffusion Forge Template for RunPod](https://runpod.io/console/deploy?template=whdfh5h5d4&ref=oxrbnozc)

Makes the template more flexible to use.

## Adding Models

You can override the list of models to download by specifying a script URL in
the environment variable `MODEL_LIST_URL`.\
Please refer to the `model_list.sh` file for actual examples.

Note that model downloads are performed in the background, so the timing of
WebUI startup completion and download completion may not match.\
Download progress will be displayed in the logs.

Also, Civitai sometimes requires tokens for model downloads, so it's recommended
to set up something like `CIVITAI_TOKEN`.\
For cases like this, the model list needed to be written as a Shell Script
rather than JSON.

## Customizing Startup Scripts

You can add startup processing by specifying a script URL in the environment
variable `CUSTOM_SCRIPT_URL`.\
Please refer to the `custom_script.sh` file for actual examples.

You can use `curl` or `axel` for file downloads.\
This script runs with user privileges, so you cannot add system packages.

## Example

To use this configuration, set the environment variables as follows:

```
MODEL_LIST_URL=https://raw.githubusercontent.com/hdae/runpod-custom-scripts/refs/heads/main/stable-diffusion-forge/model_list.sh
CUSTOM_SCRIPT_URL=https://raw.githubusercontent.com/hdae/runpod-custom-scripts/refs/heads/main/stable-diffusion-forge/custom_script.sh
CIVITAI_TOKEN=[token issued from civitai]
```
