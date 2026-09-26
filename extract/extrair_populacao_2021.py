import requests
import pandas as pd
from pathlib import Path

url = (
    "https://apisidra.ibge.gov.br/values/"
    "t/6579/"
    "n6/all/"
    "v/9324/"
    "p/2021"
)

print("Consultando API do SIDRA...")

resposta = requests.get(url, timeout=120)
resposta.raise_for_status()

dados = resposta.json()

df = pd.DataFrame(dados[1:])

pasta = Path("Datasets/Populacao")
pasta.mkdir(parents=True, exist_ok=True)

arquivo = pasta / "populacao_2021.csv"

df.to_csv(
    arquivo,
    index=False,
    sep=";",
    encoding="utf-8-sig"
)

print(f"Registros extraídos: {len(df)}")
print(f"Arquivo salvo em: {arquivo.resolve()}")
print(df.head())