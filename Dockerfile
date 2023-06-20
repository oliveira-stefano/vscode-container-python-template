FROM python:3.10.2-slim

RUN apt update && apt install -y --no-install-recommends \
                    git \
                    zsh \
                    curl \
                    wget \
                    fonts-powerline \
                    gcc 


RUN useradd -ms /bin/bash python

USER python

WORKDIR /home/python/app

ENV MY_PYTHON_PACKAGES=/home/python/app/.venv/lib/python3.10/site-packages
ENV PYTHONPATH=${PYTHONPATH}/home/python/app/src
ENV PATH=${PATH}:/home/python/app/.venv/bin

RUN pip install pdm

#Lembrar de verificar se https://github.com/deluan/zsh-in-docker tem alguma atualização
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t https://github.com/romkatv/powerlevel10k \
    -p git \
    -p https://github.com/zdharma-continuum/fast-syntax-highlighting \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -a 'export TERM=xterm-256color'

RUN echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >> ~/.zshrc && \
    echo 'HISTFILE=/home/python/zsh/.zsh_history' >> ~/.zshrc && \
    echo 'eval "$(pdm --pep582)"' >> ~/.zshrc && \
    echo 'eval "$(pdm --pep582)"' >> ~/.bashrc


CMD [ "tail", "-f", "/dev/null" ]