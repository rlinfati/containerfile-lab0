# ollama

## ollama pull
- sudo podman pull ghcr.io/open-webui/open-webui:latest-ollama
- sudo podman pull docker.io/cloudflare/cloudflared:latest

## ollama create
- sudo podman create --interactive --tty --oom-score-adj 1000 --init --name LLM-ollama --replace --device=nvidia.com/gpu=all ghcr.io/open-webui/open-webui:latest-ollama
- sudo podman create --interactive --tty --oom-score-adj 1000 --init --name LLM-https --replace docker.io/cloudflare/cloudflared tunnel --url http://LLM-ollama:8080

## ollama start
- sudo podman container start LLM-ollama
- sudo podman container start LLM-https
- sudo podman container logs LLM-https

## ollama pull model
- sudo podman exec --interactive --tty LLM-ollama ollama pull llama3:8b-instruct-q5_K_M
- sudo podman exec --interactive --tty LLM-ollama ollama pull gemma2:9b-instruct-q5_K_M
- sudo podman exec --interactive --tty LLM-ollama ollama pull mistral:7b-instruct-v0.3-q5_K_M
- sudo podman exec --interactive --tty LLM-ollama ollama pull qwen2:7b-instruct-q5_K_M
- sudo podman exec --interactive --tty LLM-ollama ollama pull phi3:14b-medium-4k-instruct-q5_K_M
