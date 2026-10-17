# Nosso Cantinho — atualizações

Canal público de distribuição do APK Android assinado.

## Versão 4.7 — chamada flutuante
[Baixar Nosso-Cantinho-4.7.apk](https://raw.githubusercontent.com/Pkkarllo/nosso-cantinho-atualizacoes/main/apk/Nosso-Cantinho-4.7.apk). Instale por cima, sem desinstalar. Quem usa 4.4+ pode baixar pelo app.

Nos dois celulares: Ajustes > Chamadas por cima de outros apps > Ativar janela de chamada e conceder Aparecer sobre outros apps no Android. Requer internet e recebimento ativo em segundo plano. A janela central aparece ao receber chamada enquanto outro app é usado, com Atender e Recusar. O cartão é o mesmo convite azul/vermelho do app. Ao atender, abre a chamada no Nosso Cantinho; câmera/microfone só abrem com aceite e permissões. Se o perfil estiver bloqueado, precisa autenticar primeiro.

A janela é opt-in e pode ser desativada. Fecha por recusa, fim, expiração, retorno ao app, parada do serviço ou revogação da permissão. Sem janela sobre tela bloqueada/apagada ou durante sessão ativa. Android e apps protegidos podem impedir a janela; a notificação continua disponível. As regras foram testadas e o APK compilado/assinado; WindowManager, abertura por clique e aparência ainda precisam de teste real nos A05/A16. Chamadas seguem experimentais, sem TURN.

Mantém a 4.6: sinais rápidos fora da Conversa; notificações com significado sem contagem de vibrações. Mantém quatro toques originais em Ajustes > Sons de mensagens e ligações.

## Download interno e publicação
Desde 4.4, download dentro do app com progresso e verificação SHA-256, pacote, versão e assinatura. O Android exige confirmação e pode pedir Permitir desta fonte. Atualização remota de tema/conteúdo sem APK ainda não implementada.

1. Incrementar versionCode e Updates.VERSION juntos no projeto privado.
2. Gerar APK com a chave ORIGINAL, verificar assinatura e preservar o APK dentro de ZIP validado para evitar truncamento no transporte.
3. Publicar novo APK e update.json na mesma alteração, preservando versões antigas.
4. latestVersionCode deve corresponder ao APK; minVersionCode nunca deve superá-lo.
5. Comparar SHA-256 e bytes do download público com o APK original do ZIP antes de anunciar.

Nunca publicar a chave privada, ZIP de projeto, códigos do casal, dados pessoais ou backups aqui. Sem internet o app não descobre novas versões; bloqueios já recebidos permanecem salvos.
