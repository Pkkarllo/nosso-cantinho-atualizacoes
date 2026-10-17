# Nosso Cantinho — atualizações

Canal público de distribuição do APK Android assinado.

## Versão 4.8 — tela de chamada
[Baixar Nosso-Cantinho-4.8.apk](https://raw.githubusercontent.com/Pkkarllo/nosso-cantinho-atualizacoes/main/apk/Nosso-Cantinho-4.8.apk). Instale por cima, sem desinstalar. Quem usa 4.4+ pode baixar pelo app.

Correção de um possível bloqueio da janela externa: marcadores de chamadas antigas não impedem mais a janela após reiniciar o processo. Android11+ usa contexto de janela associado ao display/tipo de overlay. Um teste local por 10 segundos mostra o mesmo cartão fora do app sem ligar para ninguém ou iniciar mídia; há diagnóstico se o Android recusar a janela.

Para configurar NOS DOIS celulares: Ajustes > Chamadas por cima de outros apps. Ative Janela externa e autorize Aparecer sobre outros apps. Para tela apagada/bloqueada, ative Chamada na tela bloqueada e autorize notificações em tela cheia no Android14+. Notificações e alertas do canal de chamadas também precisam estar permitidos. Confira recebimento ativo e bateria se parar de chegar em segundo plano.

Convites de voz/vídeo podem solicitar ao Android que acenda o visor e mostre o mesmo cartão com Atender/Recusar sobre a tela bloqueada. Desenho não solicita wake-up. Atender pede desbloqueio quando necessário e só abre mídia após aceite e perfil autorizado. A tela de convite não dá acesso ao histórico. Expiração/encerramento fecha a tela. Celular totalmente desligado não recebe chamadas; precisa estar ligado, com internet e serviço ativo. Android, bateria, Doze e configurações podem limitar entrega/exibição. Nenhum teste físico de tela bloqueada, wake-up, PIN ou janela nos A05/A16 foi executado. Compilação, assinatura e regras de exibição foram verificadas. Chamadas permanecem experimentais, sem TURN.

Mantém os quatro toques originais, sinais rápidos fora da Conversa e notificações sem contagem de vibrações.

## Download interno e publicação
Desde 4.4, download interno com progresso e verificação de SHA-256, pacote, versão e assinatura. A instalação continua dependendo da confirmação Android. Atualização remota de tema/conteúdo sem APK ainda não implementada.

1. Incrementar versionCode e Updates.VERSION juntos no projeto privado.
2. Gerar APK com a chave ORIGINAL, verificar assinatura e preservar o arquivo em ZIP validado.
3. Publicar novo APK e update.json na mesma alteração, preservando arquivos anteriores.
4. latestVersionCode deve corresponder ao APK; minVersionCode nunca deve superá-lo.
5. Conferir bytes e hash do download público com o APK original dentro do ZIP.

Nunca publicar chave privada, ZIP de projeto, código do casal, dados pessoais ou backups aqui. Sem internet não descobre novas versões; bloqueios conhecidos permanecem.
