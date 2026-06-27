% Fatos: Componentes (nome, energia_mw, categoria)
componente(reator_fusao, 0, fundamental). % Produz, não consome
componente(propulsor_ion, 8, propulsao).
componente(dobra_espacial, 10, propulsao).
componente(escudo_plasma, 6, defesa).
componente(canhao_laser, 4, combate).
componente(torpedo_foton, 6, combate).
componente(ia_navegação, 4, sistemas).
componente(scanner_deep_space, 6, sistemas).
componente(modulo_suporte_vida, 8, sistemas).
componente(cloaking_device, 6, defesa).
componente(android_reparo, 4, suporte).
componente(estacao_pesquisa, 10, pesquisa).

% Fatos: Dependências de Engenharia (componente_alvo, peça_necessaria)
precisa(propulsor_ion, reator_fusao).
precisa(dobra_espacial, propulsor_ion).
precisa(escudo_plasma, reator_fusao).
precisa(ia_navegação, propulsor_ion).
precisa(ia_navegação, modulo_suporte_vida).
precisa(canhao_laser, ia_navegação).
precisa(canhao_laser, propulsor_ion).
precisa(torpedo_foton, ia_navegação).
precisa(scanner_deep_space, modulo_suporte_vida).
precisa(android_reparo, modulo_suporte_vida).
precisa(estacao_pesquisa, scanner_deep_space).
precisa(estacao_pesquisa, android_reparo).

% Fatos: Inventário dos Hangares (hangar, peca_disponivel)
possui(hangar_alpha, reator_fusao).
possui(hangar_alpha, modulo_suporte_vida).
possui(hangar_beta, reator_fusao).
possui(hangar_beta, propulsor_ion).
possui(hangar_beta, modulo_suporte_vida).
possui(hangar_gamma, reator_fusao).
possui(hangar_gamma, cloaking_device).
possui(hangar_gamma, scanner_deep_space).
possui(hangar_delta, modulo_suporte_vida).
possui(hangar_delta, android_reparo).
possui(hangar_delta, scanner_deep_space).
possui(hangar_epsilon, propulsor_ion).
possui(hangar_epsilon, dobra_espacial).
possui(hangar_epsilon, cloaking_device).
possui(hangar_epsilon, canhao_laser).

% Exercicio 1:

peça_crítica(P) :-
    componente(P, Energia, _),
    Energia > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2.

% Exercicio 2:

hangar_combate(H) :-
    possui(H, P1), componente(P1, _, combate),
    possui(H, P2), componente(P2, _, combate),
    P1 \= P2.

falta_energia(H) :-
    possui(H, _),
    \+ ( possui(H, Peca), componente(Peca, _, propulsao) ).

% Exercucio 3:

item_faltante(Hangar, Peca) :-
    precisa(_, Peca),
    \+ possui(Hangar, Peca).

pode_montar(Hangar, Componente) :-
    componente(Componente, _, Categoria),
    Categoria \= fundamental,
    \+ ( precisa(Componente, Req), item_faltante(Hangar, Req) ).

% Exercucio 4:

peça_raiz(P) :-  componente(P, _, _), \+ precisa(P, _).
peça_final(P) :- componente(P, _, _), \+ precisa(_, P).