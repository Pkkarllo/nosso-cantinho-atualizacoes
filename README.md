# Nosso Cantinho — atualizações

Canal público de distribuição do APK Android assinado.

## Versão 4.5 — sons e carinho
Baixe [Nosso-Cantinho-4.5.apk](https://raw.githubusercontent.com/Pkkarllo/nosso-cantinho-atualizacoes/main/apk/Nosso-Cantinho-4.5.apk), abra no Android e escolha Atualizar. Não desinstale para preservar seus dados. Quem já usa 4.4 pode iniciar o download no app.

Notificações com coração azul/vermelho, descrições carinhosas e atalhos para abrir conversa, ver convite e recusar. O aviso contínuo de conexão permanece silencioso. Em Ajustes > Sons de mensagens e ligações, escolha Carinho ou Estrelinhas para mensagens; Nosso encontro ou Saudade de você para ligações. Também há som padrão do celular, Sem som, prévia e acesso às configurações Android. As melodias foram sintetizadas originalmente para este app.

Canais de som são separados por escolha e vibração; alterações manuais no Android são preservadas. Ligações têm toque repetido pelo sistema, cancelado ao atender/recusar/encerrar e timeout de 90s. Silencioso, Não perturbe, volume e configurações Android têm prioridade. Android/Samsung define o layout final. APK/recursos/assinatura e estrutura dos WAVs conferidos; aparência, som e instalação completa ainda precisam de testes reais nos A05/A16. Chamadas seguem experimentais, sem TURN.

## Download interno
Desde 4.4, atualizações são baixadas dentro do app, com progresso real, SHA-256, conferência de pacote, versão e assinatura. O instalador Android exige confirmação e pode pedir Permitir desta fonte. Mantenha o app aberto durante o download. Quem usa versão anterior à 4.4 instala esta uma vez pelo fluxo antigo.

## Publicar atualização obrigatória
1. Incrementar versionCode e Updates.VERSION juntos no projeto privado.
2. Gerar e verificar APK com a mesma chave original. Nunca publicar a chave privada ou ZIP do projeto aqui.
3. Publicar novo APK e update.json na mesma alteração, preservando arquivos antigos.
4. latestVersionCode deve corresponder exatamente ao APK; minVersionCode não pode superar latestVersionCode.
5. Calcular sha256 e verificar bytes do download público antes de anunciar.

O controle é consultado ao retomar e periodicamente em primeiro plano. Sem internet não descobre novas versões; bloqueios conhecidos permanecem salvos. Nunca publicar códigos de casal, dados pessoais ou backups.
