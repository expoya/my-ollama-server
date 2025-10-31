# 1. Das offizielle Basis-Image von Ollama verwenden
FROM ollama/ollama

# 2. Umgebungsvariable setzen, damit der Server auf allen IPs lauscht
ENV OLLAMA_HOST=0.0.0.0

# 3. Server im Hintergrund starten, Modelle pullen
#    'ollama serve &' startet den Server im Hintergrund.
#    'sleep 5' wartet 5 Sekunden, damit der Server hochfahren kann.
#    '&&' kettet die Befehle aneinander.
RUN ollama serve & \
   sleep 5 && \
   ollama pull phi3:mini && \
   ollama pull deepseek-coder:6.7b && \
   ollama pull llama3:8b

# 4. Den Standard-Port von Ollama freigeben
EXPOSE 11434
