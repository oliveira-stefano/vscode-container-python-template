# VScode container python template

O Template de Aplicação Python é um projeto de base que visa facilitar o início de novos projetos em Python.
Ele foi desenvolvido para fornecer uma estrutura pré-configurada e pronta para uso, permitindo que eu me concentre na lógica do aplicativo em vez de lidar com configurações iniciais.


## Como usar

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
    extensions.json          # Extensões recomendadas
    settings.json            # Configurações do VSCode
src/                         # Código fonte
Dockerfile                   # Arquivo de configuração do Docker
docker-compose.yml           # Arquivo de configuração do Docker Compose
docker-compose.override.yml  # Arquivo de configuração do Docker Compose
README.md                    # Este arquivo
.docker                      # Diretório de arquivos temporários do Docker
cmd                          # Diretório de scripts utilitários
.gitignore                   # Arquivo de configuração do Git
```