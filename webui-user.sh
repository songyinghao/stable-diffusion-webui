#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
#install_dir="/home/$(whoami)"

# Name of the subdirectory
#clone_dir="stable-diffusion-webui"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
# xformers/opt-sdp-attention
export COMMANDLINE_ARGS=" --listen --port=3278 --timeout-keep-alive=120 --xformers --skip-version-check --cors-allow-origins=* --no-hashing --no-download-sd-model --enable-console-prompts --api --api-log --loglevel=INFO "
# export COMMANDLINE_ARGS=" --listen --port=3278 --timeout-keep-alive=120 --xformers --skip-version-check --cors-allow-origins=* --no-hashing --no-download-sd-model --enable-console-prompts --api --api-log --loglevel=INFO --ckpt=~/development/tools/stable-diffusion-webui/models/Stable-diffusion/sdXL_v10VAEFix.safetensors"
# nowebui
#export COMMANDLINE_ARGS=" --listen --port=3278 --timeout-keep-alive=120 --xformers --nowebui --skip-version-check --cors-allow-origins=* --no-hashing --no-download-sd-model --enable-console-prompts --api --api-log --loglevel=INFO --ckpt=~/development/tools/stable-diffusion-webui/models/Stable-diffusion/sdXL_v10VAEFix.safetensors"

# python3 executable
#python_cmd="python3"

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# python repository
#export INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple/"

# install command for torch
export TORCH_COMMAND="pip install torch==2.0.1+cu118 torchvision==0.15.2+cu118 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/cu118"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
