# random_user_data_persistence

* Flutter utilizado: 3.32.0

Estrutura de apresentação MVVM consumindo um Repository que manipula os dados e um DataSource que
faz a comunicação remota e local.

# Fluxo de dados
DataSource -> Repository -> MVVM
DataSource <- Repository <- MVVM

# Principais bibliotecas utilizadas
Bloc(Cubit): Gerenciamento de tela e emissão de eventos para View
GetIt: Injeção de dependência
GoRouter: Gerenciamento de rotas e passagem de parâmetros
EventBus: Comunicar ações entre Views
Drift: Banco relacional para persistência de dados 