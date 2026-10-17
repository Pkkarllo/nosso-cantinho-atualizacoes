# Nosso Cantinho — atualizações

Canal público de distribuição do APK Android assinado.

## Instalar a versão inicial
Baixe [Nosso-Cantinho-4.2.apk](https://raw.githubusercontent.com/Pkkarllo/nosso-cantinho-atualizacoes/main/apk/Nosso-Cantinho-4.2.apk), abra o arquivo no Android e escolha Atualizar. Não desinstale para preservar os dados locais. Versões antigas precisam desta instalação manual inicial.

## Publicar uma atualização obrigatória
1. Incrementar versionCode e Updates.VERSION juntos no projeto privado.
2. Gerar e verificar APK com a mesma chave original. Nunca enviar a chave privada ou ZIP do projeto a este repositório.
3. Adicionar o APK em novo caminho apk/ e atualizar update.json na mesma alteração.
4. latestVersionCode deve corresponder ao APK; minVersionCode deve ser no máximo essa versão. Aumentar minVersionCode força as versões anteriores compatíveis com o verificador a atualizar.
5. Calcular sha256 do APK e conferir o download público antes de anunciar.

O app consulta o controle ao retomar e periodicamente enquanto aberto. Sem internet não descobre novas versões; um bloqueio já recebido permanece salvo. O botão Atualizar abre o navegador; o usuário deve abrir o APK baixado e confirmar a instalação no Android. A interface de atualização ainda precisa ser validada em aparelhos reais. Não publique códigos de casal, dados pessoais ou backups aqui.
