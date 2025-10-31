# 1. Das offizielle Basis-Image von Ollama verwenden
FROM ollama/ollama

# 2. Umgebungsvariable setzen, damit der Server auf allen IPs lauscht
# (Wichtig für Railway)
ENV OLLAMA_HOST=0.0.0.0

# 3. Das phi3:mini Modell "backen"
# Dieser Befehl wird ausgeführt, WÄHREND Railway deinen Dienst baut.
# Das Modell ist danach fest im Image gespeichert.
RUN ollama pull phi3:mini

# 4. Den Standard-Port von Ollama freigeben
# Railway erkennt diesen Port automatisch.
EXPOSE 11434

# HINWEIS: Du brauchst keinen CMD-Befehl. 
# Das Basis-Image startet "ollama serve" von selbst.
