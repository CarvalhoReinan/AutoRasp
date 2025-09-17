# Caminho do vídeo local
VIDEO_LOCAL="/home/sde/VideosPi/video.mp4"

# Caminho do pendrive
PENDRIVE_DIR="/media/sde/KINGSTON/MURAL"
PENDRIVE_VIDEO="$PENDRIVE_DIR/Mural.mp4"

# Cria a pasta local se não existir
mkdir -p "$(dirname "$VIDEO_LOCAL")"

# Variável para armazenar hash do vídeo atual
CURRENT_HASH=""

# Inicia o mpv com o vídeo local, se existir
if [ -f "$VIDEO_LOCAL" ]; then
    mpv --fs --loop "$VIDEO_LOCAL" &
fi

while true; do
    # Verifica se o vídeo existe no pendrive
    if [ -f "$PENDRIVE_VIDEO" ]; then
        # Calcula hash do vídeo do pendrive
        NEW_HASH=$(md5sum "$PENDRIVE_VIDEO" | awk '{print $1}')
        
        # Se o vídeo mudou ou ainda não foi copiado
        if [ "$NEW_HASH" != "$CURRENT_HASH" ]; then
            cp -f "$PENDRIVE_VIDEO" "$VIDEO_LOCAL"
            CURRENT_HASH="$NEW_HASH"
            echo "Vídeo atualizado! Reiniciando o mpv..."
            
            # Mata o mpv se estiver rodando
            pkill mpv 2>/dev/null
            # Toca o vídeo novo em fullscreen e loop
            mpv --fs --loop "$VIDEO_LOCAL" &
        fi
    fi

    sleep 5
done
