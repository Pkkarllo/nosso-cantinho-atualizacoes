# Nosso Cantinho — atualizações

Canal público de distribuição do APK Android assinado.

## Versão 4.9 — mapa do casal
[Baixar Nosso-Cantinho-4.9.apk](https://raw.githubusercontent.com/Pkkarllo/nosso-cantinho-atualizacoes/main/apk/Nosso-Cantinho-4.9.apk). Instale por cima, sem desinstalar. Quem usa 4.4+ pode baixar pelo app.

Nova aba Mapa com mapa nativo baseado em OpenStreetMap, marcadores azul/vermelho, zoom/pinça, arraste, centralização Nós dois, precisão, idade da posição e distância em linha reta. Não usa SDK Google Maps, trânsito, rotas ou navegação curva a curva.

Cada pessoa ativa Compartilhar meu GPS e autoriza no próprio aparelho. GPS só funciona com esta tela em primeiro plano; sair ou pausar remove a assinatura de localização e tenta avisar o par. Própria posição conforme atualização do provedor; envio cifrado ao par a cada30s, com recuo após falha. Posição expira em90s sem medição recente; não é rastreamento subsegundo. Internet, GPS e os dois apps atualizados são necessários. Transporte gratuito existente tem limites, então não há garantia de entrega contínua.

Localizações são eventos separados de conversas, notificações e backups: mantém apenas última posição recebida, sem trilha de trajetos. Dados do GPS não são publicados neste repositório. Quem possui o código do casal pode receber os eventos; cache do transporte pode reter conteúdo cifrado. Pausar não apaga cópias já recebidas. Sem acesso de localização em segundo plano.

Tiles solicitados só para área em exibição, com atribuição/link, identidade própria e cache HTTP/ETag (fallback7dias), sem bulk/prefetch/offline. Provedor recebe IP/região visualizada; informações na tela de privacidade. Política: https://operations.osmfoundation.org/policies/tiles/ . Disponibilidade best effort.

Testes de projeção, distância, antimeridiano, dados inválidos/antigos, separação do histórico/backup, compilação e assinatura passaram. GPS, renderização Android e posições reais nos A05/A16 ainda precisam de teste físico. Mantém funções de chamada e os toques originais; chamadas continuam experimentais sem TURN.

## Download interno e publicação
Desde 4.4, download interno com progresso e conferência SHA-256/pacote/versão/assinatura. Instalação depende do Android. Tema/conteúdo remoto sem APK ainda não implementado.

1. Incrementar versionCode e Updates.VERSION juntos no projeto privado.
2. Gerar com a chave ORIGINAL e preservar o APK em ZIP validado.
3. Publicar APK novo e update.json na mesma alteração, preservando versões anteriores.
4. latestVersionCode deve corresponder exatamente ao APK; minVersionCode não deve superá-lo.
5. Comparar bytes/hash do download público com o APK original do ZIP.

Nunca publicar chave privada, ZIP de projeto, código do casal, coordenadas reais, dados pessoais ou backups. Sem internet o app não descobre novas versões; bloqueios conhecidos permanecem.
