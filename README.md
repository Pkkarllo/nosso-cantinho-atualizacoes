# Nosso Cantinho — atualizações

Canal público de distribuição do APK Android assinado.

## Versão 4.6 — conversa limpa
[Baixar Nosso-Cantinho-4.6.apk](https://raw.githubusercontent.com/Pkkarllo/nosso-cantinho-atualizacoes/main/apk/Nosso-Cantinho-4.6.apk). Instale por cima, sem desinstalar. Quem usa 4.4+ pode baixar dentro do app.

Sinais rápidos antigos e novos ficam ocultos na aba Conversa; mensagens escritas e fotos permanecem. Notificações dos sinais mostram apenas o significado, sem contar vibrações. Os padrões de vibração permanecem iguais. Os registros dos sinais não foram apagados. Compilação, assinatura e filtro SQLite conferidos; interface precisa de teste nos aparelhos.

## Sons e atualizações
Ajustes > Sons de mensagens e ligações tem quatro melodias originais, som padrão, Sem som e prévia. Android/Samsung controla layout, volume, DND e canais de notificação. Chamadas continuam experimentais, sem TURN.
Desde 4.4, download de APK dentro do app com progresso, SHA-256, pacote, versão e assinatura conferidos. O instalador Android exige confirmação e pode pedir Permitir desta fonte. Mantenha o app aberto durante o download. Atualização remota de conteúdo/tema sem APK ainda não foi implementada.

## Publicar atualização obrigatória
1. Incrementar versionCode e Updates.VERSION juntos no projeto privado.
2. Gerar e verificar APK com a chave ORIGINAL. Nunca publicar a chave privada ou ZIP do projeto aqui.
3. Publicar novo APK e update.json na mesma alteração, preservando arquivos antigos.
4. latestVersionCode deve corresponder exatamente ao APK; minVersionCode não pode superar latestVersionCode.
5. Calcular sha256 e verificar bytes do download público antes de anunciar.

Controle consultado ao retomar e periodicamente em primeiro plano. Sem internet não descobre novas versões; bloqueios conhecidos permanecem. Não publicar códigos do casal, dados pessoais ou backups.
