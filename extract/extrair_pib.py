import requests
import pandas as pd

url = (
    "https://apisidra.ibge.gov.br/values/"
    "t/5938/n6/all/v/37/p/2021"
)

print("Consultando API...")

resposta = requests.get(url)

dados = resposta.json()

df = pd.DataFrame(dados[1:])

print(df.head())

df.to_csv(
    "Datasets/pib_2021.csv",
    index=False,
    sep=";",
    encoding="utf-8-sig"
)

print("Arquivo salvo com sucesso!")
