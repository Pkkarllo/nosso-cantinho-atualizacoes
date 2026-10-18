# Servidor próprio de mensagens (ntfy)

Este pacote prepara um servidor ntfy privado para substituir o serviço público atual. As mensagens ficam no disco do VPS e são mantidas por até 1 ano. O acesso anônimo fica bloqueado.

## O que precisa

- VPS Linux com Docker Engine e Docker Compose instalados.
- Um domínio ou subdomínio apontando para o IP do VPS.
- Portas TCP 80 e 443 liberadas no firewall do VPS.
- O aplicativo precisa aceitar um endereço ntfy próprio e autenticação. O APK atual no repositório é somente o arquivo compilado; não há código-fonte aqui para trocar o endereço ou gerar um APK compatível.

O servidor usa Caddy para HTTPS automático e ntfy v2.29.0. O ntfy fica disponível em `https://SEU-DOMINIO`.

## Instalar

No VPS:

1. Baixe/clonar este repositório e entre na pasta `server`.
2. Copie `.env.example` para `.env`; edite `NTFY_DOMAIN` com seu domínio real.
3. Rode `docker compose up -d`.
4. Crie um usuário administrador:
   ```sh
   docker compose exec ntfy ntfy user add --role=admin pkzin
   ```
   O comando pedirá uma senha. Guarde-a em local seguro.
5. Crie um usuário comum para o app:
   ```sh
   docker compose exec ntfy ntfy user add casal
   ```
6. Libere somente o tópico usado pelo app (troque `nosso-cantinho` pelo tópico correto):
   ```sh
   docker compose exec ntfy ntfy access casal nosso-cantinho rw
   ```

A política padrão é `deny-all`: ninguém sem usuário e permissão consegue ler ou publicar mensagens. Não torne o tópico público para contornar a autenticação.

## Antes de apontar o aplicativo

O endereço do servidor, o nome do tópico e a autenticação do usuário precisam ser configurados no app. Aponte para `https://SEU-DOMINIO`, use o mesmo tópico nos dois celulares e configure o usuário `casal` com a senha criada. Faça isso somente depois de confirmar que o app suporta esses campos. O APK publicado atualmente não permite confirmar essa compatibilidade porque o projeto-fonte não está no repositório.

Depois da troca, instale a nova versão por cima da atual nos dois celulares. Não desinstale a versão antiga antes de conferir a migração e as mensagens.

## Backup e restauração

Para fazer um backup manual no VPS, rode:

```sh
bash backup.sh
```

O arquivo vai para `server/backups/`. Baixe uma cópia para seu computador ou celular. O script pausa o ntfy brevemente, copia banco de mensagens, autenticação e anexos, e inicia o serviço novamente.

Para restaurar, pare os serviços, guarde uma cópia da pasta `data` atual, extraia o arquivo de backup na pasta `server` e rode `docker compose up -d`. Não envie `.env`, senhas, banco de mensagens ou backups para o GitHub.

## Limites e custos

Hospedar o servidor elimina as cotas do ntfy.sh, mas o VPS ainda tem limites de espaço, memória e tráfego e pode ter cobrança mensal. As mensagens ficam em um servidor remoto alugado até expirar ou você apagar os dados. Faça backup manual e mantenha o domínio e o VPS ativos para os celulares sincronizarem.
