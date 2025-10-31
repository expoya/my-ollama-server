# 1. Das offizielle Basis-Image von Ollama verwenden
FROM ollama/ollama

# 2. Umgebungsvariable setzen, damit der Server auf allen IPs lauscht
ENV OLLAMA_HOST=0.0.0.0

# 3. Alle gewünschten Modelle "backen"
#    Dieser Teil wird beim Build auf Railway ausgeführt.
RUN ollama pull phi3:mini
RUN ollama pull deepseek-coder:6.7b
RUN ollama pull llama3:8b

# 4. Den Standard-Port von Ollama freigeben
EXPOSE 11434

# HINWEIS: Du brauchst keinen CMD-Befehl. 
# Das Basis-Image startet "ollama serve" von selbst.
