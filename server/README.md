# Servidor próprio de mensagens (ntfy)

Há dois modos de executar este servidor:

- **Teste grátis no Windows:** usa seu PC e um túnel temporário. O PC precisa ficar ligado e conectado à internet. O endereço pode mudar quando o túnel reinicia; é para teste, não para uso definitivo.
- **VPS com domínio:** endereço estável com HTTPS automático, indicado para uso contínuo.

Em ambos os modos, as mensagens ficam no disco do servidor por até 1 ano e o acesso anônimo fica bloqueado.

## Testar grátis no Windows

1. Instale e abra o Docker Desktop no Windows.
2. Baixe o ZIP do repositório pelo GitHub e extraia.
3. Abra a pasta `server` e clique duas vezes em `iniciar-no-windows.bat`.
4. Na janela que abrir, copie o endereço `https://...trycloudflare.com`. O servidor fica acessível enquanto o PC e o Docker Desktop estiverem ligados.
5. Para parar, clique duas vezes em `parar-no-windows.bat`.

O túnel gratuito gera um endereço aleatório e temporário. Ele pode mudar depois que o túnel reinicia e tem limitações próprias, então serve apenas para experimentar. Para usar o endereço, o aplicativo também precisa aceitar um servidor personalizado.

Para proteger o servidor, crie os usuários no Prompt de Comando ou PowerShell, dentro da pasta `server`:

```powershell
docker compose -f docker-compose.windows.yml exec ntfy ntfy user add --role=admin pkzin
docker compose -f docker-compose.windows.yml exec ntfy ntfy user add casal
docker compose -f docker-compose.windows.yml exec ntfy ntfy access casal nosso-cantinho rw
```

Os comandos pedem senhas. Troque `nosso-cantinho` pelo tópico usado pelo app. Não compartilhe a URL nem as senhas.

## Hospedar em VPS

Para um endereço estável, é preciso um VPS Linux com Docker Compose, um domínio apontado para o VPS e as portas TCP 80 e 443 liberadas. O pacote usa Caddy para HTTPS automático e ntfy v2.29.0.

No VPS:

1. Baixe/clonar este repositório e entre na pasta `server`.
2. Copie `.env.example` para `.env`; edite `NTFY_DOMAIN` com seu domínio real.
3. Rode `docker compose up -d`.
4. Crie usuários e libere apenas o tópico do app:
   ```sh
   docker compose exec ntfy ntfy user add --role=admin pkzin
   docker compose exec ntfy ntfy user add casal
   docker compose exec ntfy ntfy access casal nosso-cantinho rw
   ```

A política é `deny-all`: pessoas sem usuário e permissão não conseguem ler nem publicar. Não torne o tópico público para contornar a autenticação.

## Conectar o app

O endereço do servidor, o tópico e os dados de autenticação precisam ser configurados no app. O APK 4.21 publicado no repositório é somente o arquivo compilado; não há projeto-fonte aqui para trocar o endereço ou gerar uma atualização instalável. Não desinstale o app atual antes de confirmar uma migração e as mensagens nos dois celulares.

## Backup e restauração

No VPS, rode `bash backup.sh` dentro da pasta `server`. No Windows, o backup pode ser feito depois de parar o servidor: copie a pasta `server/data` para um local seguro. Ela contém mensagens e autenticação. Não envie `.env`, senhas, dados ou backups para o GitHub.

As mensagens do ntfy ficam armazenadas no servidor até expirar ou os dados serem apagados. O servidor no PC deixa de funcionar quando o computador ou a internet desligar. Mesmo no VPS, há limites de espaço, memória e tráfego e pode haver cobrança mensal.
