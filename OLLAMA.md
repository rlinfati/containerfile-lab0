# ollama

## ollama run
- sudo podman pull docker.io/ollama/ollama:latest
- sudo podman run --rm --interactive --tty --oom-score-adj 1000 --init --name LLM-ollama --replace --volume ollama:/root/.ollama/models --device=nvidia.com/gpu=all docker.io/ollama/ollama:latest

## ollama pull model
- sudo podman exec  --interactive --tty LLM-ollama bash
- ollama pull llama3.1:8b-instruct-q5_K_M
- ollama pull mistral-nemo:12b-instruct-2407-q5_K_M
- ollama pull gemma2:9b-instruct-q5_K_M
