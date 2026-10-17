# Nosso Cantinho — atualizações

Canal público de distribuição do APK Android assinado.

## Versão 4.4 — download dentro do app
Baixe [Nosso-Cantinho-4.4.apk](https://raw.githubusercontent.com/Pkkarllo/nosso-cantinho-atualizacoes/main/apk/Nosso-Cantinho-4.4.apk), abra no Android e escolha Atualizar. Não desinstale para preservar seus dados.

A partir desta versão, atualizações posteriores são baixadas no próprio app, com tela azul/vermelha, corações, barra e porcentagem real quando o servidor informa o tamanho. O app confere tamanho, SHA-256, pacote, versão e assinatura antes de abrir a confirmação de instalação Android. A primeira instalação pode pedir Permitir desta fonte. Não instala silenciosamente. Mantenha o app aberto durante o download; se o processo encerrar, toque Atualizar novamente. O arquivo de cache só é reutilizado após nova verificação.

Quem está na 4.2 ou 4.3 ainda precisa usar o fluxo antigo uma última vez para instalar a 4.4. Interface e instalador precisam de teste real nos A05/A16; foram verificados compilação, assinatura e lógica de transferência, incluindo arquivos inválidos. Chamadas continuam experimentais, sem servidor TURN.

## Publicar uma atualização obrigatória
1. Incrementar versionCode e Updates.VERSION juntos no projeto privado.
2. Gerar e verificar APK com a mesma chave original. Nunca publicar a chave privada ou ZIP do projeto neste repositório.
3. Publicar novo arquivo em apk/ e update.json na mesma alteração, preservando versões antigas.
4. latestVersionCode deve corresponder exatamente ao APK; minVersionCode deve ser no máximo latestVersionCode. Aumentar minVersionCode bloqueia versões anteriores que tenham o verificador.
5. Atualizar sha256 e conferir o download público antes de anunciar.

O controle é consultado ao retomar e periodicamente em primeiro plano. Sem internet o app não descobre versões novas; bloqueios já recebidos permanecem salvos. Não publicar códigos de casal, dados pessoais ou backups aqui.
