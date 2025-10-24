# random_user_data_persistence
<img width="101" height="92" alt="image" src="https://github.com/user-attachments/assets/93e3b831-eecd-465f-8e54-ccff9df11b63" />

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

<img width="240" height="520" alt="simulator_screenshot_C932C9FB-335F-4208-BD59-54E6C21D42A2" src="https://github.com/user-attachments/assets/c0af4291-a5d0-4f5b-99fb-92237696bf21" />
<img width="240" height="520" alt="simulator_screenshot_5464D388-463D-4842-84B7-BEA3FE0935A1" src="https://github.com/user-attachments/assets/834d5f79-98b1-4e7b-a39b-29a3973a0a23" />
<img width="240" height="520" alt="simulator_screenshot_1156296C-4885-44F8-9DAE-B75C893F56E6" src="https://github.com/user-attachments/assets/ec6fa897-b4ec-4e25-ade8-78b7e3e36609" />
<img width="240" height="520" alt="simulator_screenshot_57C6743B-D4ED-474C-8520-9774D1204EF4" src="https://github.com/user-attachments/assets/3a01a5e5-8044-43ec-9b3e-7bc7b06ae04a" />
