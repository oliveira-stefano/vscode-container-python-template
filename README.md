# VScode container python template

O Template de Aplicação Python é um projeto de base que visa facilitar o início de novos projetos em Python.
Ele foi desenvolvido para fornecer uma estrutura pré-configurada e pronta para uso, permitindo que eu me concentre na lógica do aplicativo em vez de lidar com configurações iniciais.


## Como clonar este template

Para usar este modelo, você deve clonar este [repositório](https://github.com/oliveira-stefano/vscode-container-python-template.git)

```bash
git clone https://github.com/oliveira-stefano/vscode-container-python-template.git
```
E remover o diretório .git para que você possa iniciar um novo repositório.

```bash
rm -rf .git
```

## Estrutura do projeto

```
.vscode/                     # Configurações do VSCode
    settings.json            # Configurações do VSCode
src/                         # Código fonte
Dockerfile                   # Arquivo de configuração do Docker
docker-compose.yml           # Arquivo de configuração do Docker Compose
docker-compose.override.yml  # Arquivo de configuração do Docker Compose
README.md                    # Este arquivo
.docker                      # Diretório de arquivos temporários do Docker
    zsh                      # Diretório de arquivos temporários do ZSH
        history              # Diretório de arquivos temporários do histórico do ZSH
            .gitkeep         # Arquivo de configuração do Git
        powerlevel10k        # Diretório de arquivos temporários do Powerlevel10k
            .p10k.zsh        # Arquivo de configuração do Powerlevel10k
cmd                          # Diretório de scripts utilitários
.gitignore                   # Arquivo de configuração do Git

```

## Como usar

Apos clonar o repositório, você deve executar a aplicação no container do vscode, e executar os comandos abaixo:

```bash
pdm init
pdm install
```


## Erros conhecidos

- Ao executar o comando `docker-compose up` pela primeira vez, o arquivo `cmd/start-container-dev-app.sh` pode não ter permissão de execução. Para corrigir isso, execute o comando `chmod +x cmd/start-container-dev-app.sh` no diretório raiz do projeto.