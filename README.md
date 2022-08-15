### Instalação

1. Instalar o chrome driver ou outro driver da sua preferencia no path do seu sistema operacional
2. Instalar O Python 3
3. Instalar dependencias do robot:
$ pip install robotframework
$ pip install robotframework-seleniumlibrary


### Executar a automação

Executar o regressivo: 
$ robot -d ../logs/ scenarios
Executar um dos cenarios: 
$ cd scenarios
$ robot -d ../logs/ nomedocenario.robot
