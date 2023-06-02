?- wcreate(menu,dialog,`Car Recommendation`,200,250,400,225,16'80c80000).
?- wcreate((menu,1),button,`&Search`,10,150,80,32,16'50010000).
?- wcreate((menu,2),button,`&Cancel`,100,150,80,32,16'50010000).

% quando o botão OK for clicado, retorne o texto na janela de edição
menu_handler( (menu,1), msg_button, _, Text ) :-
wtext( (menu,100), Text ).

% quando o botão Cancelar for clicado, retorne o átomo "cancel"
menu_handler( (menu,2), msg_button, _, cancel ).

% quando o ícone fechar é clicado duas vezes, mostra uma caixa de mensagem
menu_handler( menu, msg_close, _, _ ) :-
msgbox( 'Dear User!', 'Thank you and come back often!', 48, _ ).

% ignorando todas as outras mensagens
menu_handler( _, _, _, _ ).

?- window_handler(menu,menu_handler).

% exibindo a janela de dialogo
?- call_dialog(menu,X).