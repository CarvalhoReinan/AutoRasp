# 🎥 Raspberry Pi -- Player Automático de Vídeo com Pendrive

Este projeto transforma um **Raspberry Pi** em um **player automático de
vídeos em loop**, ideal para **murais digitais, exposições, lojas ou
painéis informativos**.

O sistema funciona assim:\
- Sempre reproduz um **vídeo local** padrão (`video.mp4`).\
- Quando um pendrive da **"EX: KINGSTON"** (pasta `MURAL/`) é conectado com o
arquivo `Mural.mp4`, o script detecta e substitui o vídeo local.\
- O vídeo atualizado passa a ser reproduzido automaticamente, em
**fullscreen e loop infinito**.\
- A cada novo vídeo colocado no pendrive, o player detecta a mudança e
atualiza sem precisar reiniciar manualmente.

------------------------------------------------------------------------

## 🚀 Tecnologias utilizadas

-   **Bash Script** → automação e monitoramento do pendrive.\
-   **MPV Player** → reprodução de vídeo em loop fullscreen.\
-   **Raspberry Pi OS** → sistema operacional.

------------------------------------------------------------------------

## 📂 Estrutura esperada

    /home/pi/VideosPi/video.mp4      # Vídeo local (padrão e sempre usado na reprodução)
    /media/pi/PENDRIVE/MURAL/Mural.mp4  # Vídeo atualizado via pendrive

------------------------------------------------------------------------

## ⚡ Como usar

1.  Instale o `mpv`:

    ``` bash
    sudo apt update
    sudo apt install mpv -y
    ```
2. Crie o arquivo "sh"

    /home/pi/Update.sh

2.2  Copie o script para o Raspberry e salve (Ctrl + O >> Enter >> Ctrl + X)

2.3  Dê permissão de execução:

    ``` bash
    chmod +x Update.sh
    ./Update.sh
    ```


4.  Conecte o pendrive **EX :"KINGSTON"** na pasta `MURAL/` com o vídeo
    `Mural.mp4`.\

5.  O player detectará automaticamente o novo vídeo e atualizará a
    exibição.


# COMO FECHAR ?

Para encerrar o programa Ctrl + C  (Opção primária)

# Forçar Parada 
aperte alt + tab e entrará no código e digite

Utilize as seguintes alternativas 

# Pkill 

pkill -9 vlc
pkill vlc

# Sudo + killall

sudo killall vlc
sudo killall -9 vlc

------------------------------------------------------------------------

## 💡 Possíveis usos

-   Painéis digitais em **escolas**\
-   **Lojas** para exibir propagandas\
-   **Exposições e museus**\
-   Projetos de **sinalização digital**

# Projeto Comercial de uso livre @CarvalhoReinan - Github, reinancdj55@gmail.com - e-mail
