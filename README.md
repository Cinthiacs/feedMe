# FeedMe

# Sobre
Projeto IOT desenvolvido através do programa de Férias Fit|Flex-Sorocaba/SP.

  Feed.me foi idealizado baseado no segmento da saúde com objetivo de oferecer propostas baseando-se em uma alimentação saudável a fim de se obter a promoção da saúde.
  
   A aplicação consiste em uma pesquisa para coletar dados se baseando no gasto energético diário do indivíduo, para realizar essa tarefa foi desenvolvido um firmware no microcontrolador ESP 32 conectado ao sensor Heart Beat Rate para medir os batimentos cardiacos, simulando um smartwatch.
Para definir como marcar um batimento cardíaco foi determinado um Threshold de 2000 no sinal analógico do Heart Sensor, um valor lido pelo ADC (Analog to Digital Converter) do ESP32.

<div align="center">
  <img width="411" alt="Captura de tela_20230201_232108"src="https://user-images.githubusercontent.com/91417907/216215501-b8d7f571-6a95-4f4f-9597-af0636a58381.png">
</div>
  
# Tecnologias utilizadas:
- Linguagem C
- Linguagem Dart
- Framework Flutter
- Banco de dados Firebase
- Spoonacular API

# Pré Requisitos:
- ESP 32 devkit
- Heart Rate Sensor 
- Cabo USB
- Aplicação Móvel Desenvolvida em Flutter
  
# Esquema
<div align="center">
<img width="411" alt="Captura de tela_20230201_222554"src="https://user-images.githubusercontent.com/91417907/216208895-8c39cc12-d579-448d-a724-24969dc23fe7.png">
</div>
 
# Instalação
1- Clone este repositório para sua máquina local
shell
git clone

2- Abra o projeto no seu ambiente de desenvolvimento Arduino (IDE)

3- Conecte o ESP32 a sua máquina através do cabo USB

4- Selecione o modelo correto de ESP32 na IDE (ferramentas > placa)

5- Carregue o codigo fonte para o ESP32 (botão de upload)

# Ligando o Sensor

1- Conecte a saída analógica do sensor no pino GPIO 4 do ESP32

2- Conecte a alimentação do sensor (3v3) ao pino 3.3V do ESP32

3- Conecte o GND do sensorao GND do ESP32

# Uso

1- Inicie a aplicação móvel desenvolvida em Flutter

2- Inicie a conexão Bluetooth entre o ESP32 e o dispositivo movel

3- Os dados de batimentos cardíacos serão exibidos em tempo real na aplicação móvel

# Licença
Este projeto está sob a licença MIT - consulte o arquivo Licence.md para obter mais detalhes.
