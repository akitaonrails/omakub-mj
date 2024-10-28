# Install ollama with appropriate acceleration
if [[ -v OMAKUB_OLLAMA_BACKENDS ]]; then
  backends=$OMAKUB_OLLAMA_BACKENDS
else
  AVAILABLE_BACKENDS=("CPU (no acceleration)" "CUDA (for NVIDIA)" "ROCm (for AMD)")
  backends=$(gum choose "${AVAILABLE_BACKENDS[@]}" --no-limit --height 10 --header "Select LLM acceleration backend")
fi

if [[ -n "$backends" ]]; then
  for backend in $backends; do
    case $backend in
    CPU)
      yay -S --needed ollama --noconfirm
      ;;
    CUDA)
      yay -S --needed ollama-cuda --noconfirm
      ;;
    ROCm)
      yay -S --needed ollama-rocm --noconfirm
      ;;
    esac
  done
fi
