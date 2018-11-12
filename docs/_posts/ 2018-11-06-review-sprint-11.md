---
layout: review
title:  "Sprint 11 - Review"
date:   2018-11-07 13:47:39
categories: sprint-review

sprint: 11
previousSprint: 10
startDate: 31/10/2018
endDate: 06/11/2018
duration: 7
plannedPoints: 22
debtPoints: 13
totalPoints: 35

plannedFinishedPoints: 22
debtFinishedPoints: 13
addPoints: 0
addFinishedPoints: 0
finishedPoints: 35
nextDebtPoints: 0

scrumMaster:  Gabriel Davi
productOwner: Weiller Fernandes
architect: Iasmin Mendes
devops: João
developmentTeam: [
  Renato Valério, Iasmin Mendes,
  Heron Rodrigues Sousa,
  João Lucas Fragoso Zarbiélli,
  Lucas Maciel Aguiar,
  Matheus Gomes Ferreira,
  Weiller Fernandes Pereira,
]

issues: [
    {
      number: 127,
      description: US6 M1 - Criar container de favoritar local,
      responsible: ['Renato' , 'Lucas'],
      points: 3,
      status: 'Concluído'
    },
    {
        number: 157,
        description: US9 M3 - Criar método no frontend para cadastrar local na IndicaAi API,
        responsible: ['Weiller' , 'Heron'],
        points: 8,
        status: 'Concluído'
    },
    {
        number: 262,
        description: US3 M3 - Criar método para salvar os dados na API IndicaAi,
        responsible: ['Gabriel Davi', 'Weiller Fernandes'],
        points: 3,
        status: 'Concluído'
    },
    {
        number: 266,
        description:  Criar método para verificar se o usuário já foi cadastrado no sistema,
        responsible: ['Matheus' ,'Heron'],
        points: 3,
        status: 'Concluído'
    },
    {
        number: 280,
        description: App versão 0.3,
        responsible: ['João Zarbiélli'],
        points: 2,
        status: 'Concluído'
    },
    {
        number: 264,
        description: US3 M5 - Adicionar imagens para o local na API IndicaAi,
        responsible: ['João Zarbiélli'],
        points: 5,
        header: Debito,
        status: 'Concluído'
    },
    {
        number: 195,
        description: Configurar/Integrar ambiente de homologação do front,
        responsible: ['João Zarbiélli',  'Iasmin Mendes'],
        points: 2,
        header: Debito,
        status: 'Concluído'
    },
    {
        number: 217,
        description: US5 M2 - Criar método para buscar as informações do local na IndicaAi API,
        responsible: ['Renato', 'Lucas'],
        points: 3,
        header: Debito,
        status: 'Concluído'
    },

]

presence : [
    {
        name: Iasmin Mendes,
        presence: true
    },
    {
        name: Renato Valério,
        presence: false

    },
    {
        name: Gabriel Davi,
        presence: true
    },
    {
        name: Heron Rodrigues,
        presence: true
    },
    {
        name: João Lucas Zarbiélli,
        presence: true
    },
    {
        name: Lucas Maciel,
        presence: false
    },
    {
        name: Matheus Gomes,
        presence: true

    },
    {
        name: Weiller Fernandes,
        presence: false,
        justified: true
    }
]

positives: [
 "entrega do deploy",
 "Time buscou se ajudar bastante",
 "Scrum master bem participativo"
]

negatives: [
 "Má planejamento das issues no pareamento",
 "Má comunicação por parte dos integrantes em relação ao andamento da issue (Ter trabalho e não avisar no planning)",
 "demora para perceber que a equive estava com dificuldade e tomar uma atitude (Scrum master)",
 "Má participação e planejamento dos stand ups"
]

improvements: [
"Melhorar o planejamento dos pareamentos",
"Avisar os outro integantes do grupo sobre possível risco não entregar a issue",
"Melhorar a participação pessoal nos stand ups"
]

burndown: [
    "Nessa Sprint a entrega caminhou bem.Todavia, em certos instantes houve um grande risco da <b>não entrega</b> de algumas issues. No caso da issue de criar container para favoritar local, os responsáveis estavam ou ocupados devido problemas pessoais, ou muito ocupados com outras matérias. Por isso, para não atrapalhar a entrega o próprio scrumMaster, que já havia fechado sua issue, passou a ser responsável por terminar essa issue. Também, na issue de Verificar se o usuário já foi cadastrado no sistema, houve uma <b>má divisão no pareamento</b> e também a <b>má comunicação entre os responsáveis</b>. O membro Matheus nunca havia entrado em uma issue de backend e foi colocado com alguém que possui pouca esperiência com o backend, porém devido a má comunicação Matheus achou que estava responsável sozinho pela issue. No final, com ajuda de outros membros a issue foi concluida. A issue de verificar token de autenticação foi <b>Retirada</b> durante a sprint devido a um impasse com relação a manipulação do token com as outras equipes. As issue de lançar a versão do app e criar métodos para salvar dados na API foram concluidas com antecedência, e o restante foram concluidas mais pro final da sprint. "
]

velocity: [
    "O velocity da equipe ficou com o valor de 29. O que mostrou um grande avanço com relação  a sprint passada quando foram entregues somemente 20 pontos. Durante a sprint, alguns problemas surgiram como por exemplo, um dos integrantes não iria terminar a issue pois tinha trabalho de outras matérias, todavia o scrum master passou a tarefa para outro membro que havia fachado sua issue mais cedo."
]

knowledge: []

pairing: []
numberPairing: []

coverage: {
    "url": "https://coveralls.io/builds/19455961",
    "review": []
}

complexity: []

duplication: []

styleSheet: []

maintainability: []

feedback: [
    "O maior problema dessa sprint foi a <b>falta da descrição nas issues</b>. Foi relatado pela dupla responsável pela issue de Visualizar Local que eles tiveram dificuldade de entender no começo o que realmente era para eles fazerem na issue. Eles conseguiram sanar essa dúvida durante os primeiros stand-ups da sprint e assim conseguiram entregar a tarefa. Contudo, a issue de refatorar a busca de locais teve o problema de ser deixada para ser implementada no final da sprint devido os membros estarem envolvidos em provas de outras disciplinas, e somado a falta de uma especificação sobre o que era pra ser feita na issue, a dupla acabou entregando algo que era fora do esperado e não resolvia o problema real. Assim, <b>objetiva-se uma revisão o mais rápido possível da descrição das issues</b>, para evitar retrabalhos como o que teremos que fazer na próxima sprint.",
    "Quando esta sprint foi planejada, esperava-se um ritmo saudável de produção e que a equipe seria capaz de entregar todos os pontos. <b>Nós tivemos um ritmo saudável de produção, mas devido a falhas de comunicação não conseguimos entregar o proposto</b>."
]

---