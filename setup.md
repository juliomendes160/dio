#  <!-- 4. Fundamentos de APIs REST com FastAPI -->
<details>
<summary>4. Fundamentos de APIs REST com FastAPI</summary>

```bash  
# 3. Introdução ao FastAPI para APIs RESTful Assíncronas
mkdir backend

cd backend

pip install poetry

poetry init <<-EOF
no
no
yes
EOF

# poetry add 'fastapi=*'
poetry add 'fastapi==0.110.1'

# poetry add 'uvicorn[standard]'
poetry add 'uvicorn[standard]==0.29.0'

poetry env info

source "C:\Users\julio\AppData\Local\pypoetry\Cache\virtualenvs\backend-g133O1gw-py3.8\Scripts\activate"

# deactivate

# 4. Primeiros passos com FastAPI
touch main.py

cat <<EOF | sed 's/^\t//' > main.py
	from fastapi import FastAPI

	app = FastAPI()

	@app.get("/")
	def read_root():
		return {"message": "Hello World"}
EOF

uvicorn main:app --reload
```

5. Desenvolvendo sua Primeira API com FastAPI, Python e Docker (Projeto)
```bash
# 5. Desenvolvendo sua Primeira API com FastAPI, Python e Docker (Projeto)
mkdir -p workoutapi

python -m venv workoutapi/.venv

source workoutapi/.venv/Scripts/activate

pip install fastapi uvicorn sqlalchemy pydantic

touch workoutapi/__init__.py

touch workoutapi/main.py

code workoutapi/main.py

cat <<EOF > workoutapi/main.py
from fastapi import FastAPI

app = FastAPI(title='WorkoutApi')

if __name__ == 'main':
	import uvicorn

	uvicorn.run('main:app', host='0.0.0.0', port=8000, log_level='info', reload=True)
EOF

uvicorn workoutapi.main:app --reload

touch workoutapi/Makefile

code workoutapi/Makefile

cat <<EOF > workoutapi/Makefile
run:
	@uvicorn workoutapi.main:app --reload
EOF

make -C workoutapi run

mkdir -p workoutapi/contrib

touch workoutapi/contrib/__init__.py

touch workoutapi/contrib/models.py

code workoutapi/contrib/models.py

cat <<EOF > workoutapi/contrib/models.py
from uuid import uuid4
from sqlalchemy import UUID
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.dialects.postgresql import UUID as PG_UUID


class BaseModel(DeclarativeBase):
    id: Mapped[UUID] = mapped_column(PG_UUID(as_uuid=True), default=uuid4, nullable=False)
EOF

mkdir -p workoutapi/atleta

touch workoutapi/atleta/__init__.py

touch workoutapi/atleta/schemas.py

code workoutapi/atleta/schemas.py

cat <<EOF > workoutapi/atleta/schemas.py
from typing import Annotated
from pydantic import BaseModel, Field, PositiveFloat

class Atleta(BaseModel):
    nome: Annotated[str, Field(description='Nome do atleta', example='Joao', max_length=50)]
    cpf: Annotated[str, Field(description='CPF do atleta', example='12345678900', max_length=11)]
    idade: Annotated[int, Field(description='Idade do atleta', example=25)]
    peso: Annotated[PositiveFloat, Field(description='Peso do atleta', example=75.5)]
    altura: Annotated[PositiveFloat, Field(description='Altura do atleta', example=1.70)]
    sexo: Annotated[str, Field(description='Sexo do atleta', example='M', max_length=1)]
    categoria: Annotated[CategoriaIn, Field(description='Categoria do atleta')]
    centro_treinamento: Annotated[CentroTreinamentoAtleta, Field(description='Centro de treinamento do atleta')]
EOF

touch workoutapi/atleta/models.py

code workoutapi/atleta/models.py

cat <<EOF > workoutapi/atleta/models.py
from datetime import datetime
from sqlalchemy import DateTime, ForeignKey, Integer, String, Float
from sqlalchemy.orm import Mapped, mapped_column, relationship
from workout_api.contrib.models import BaseModel


class AtletaModel(BaseModel):
    __tablename__ = 'atletas'

    pk_id: Mapped[int] = mapped_column(Integer, primary_key=True)
    nome: Mapped[str] = mapped_column(String(50), nullable=False)
    cpf: Mapped[str] = mapped_column(String(11), unique=True, nullable=False)
    idade: Mapped[int] = mapped_column(Integer, nullable=False)
    peso: Mapped[float] = mapped_column(Float, nullable=False)
    altura: Mapped[float] = mapped_column(Float, nullable=False)
    sexo: Mapped[str] = mapped_column(String(1), nullable=False)
    created_at: Mapped[datetime] = mapped_column(DateTime, nullable=False)
EOF
```
</details>

# <!-- # 5. Integrando Python com Banco de Dados Relacionais -->
<details open>
	<summary>5. Integrando Python com Banco de Dados Relacionais</summary>
</details>

# <!-- Setup -->
<details>
<summary>Setup</summary>

```bash
mkdir -p backend

cd backend

python -m venv .venv

source .venv/Scripts/activate

pip install poetry

poetry init <<-EOF
no
no
yes
EOF

# poetry add 'fastapi=*'
poetry add 'fastapi==0.110.1'

# poetry add 'uvicorn[standard]'
poetry add 'uvicorn[standard]==0.29.0'

poetry env info

touch main.py

cat <<EOF | sed 's/^\t//' > main.py
	from fastapi import FastAPI

	app = FastAPI()

	@app.get("/")
	def read_root():
		return {"message": "Hello World"}
EOF

code main.py

uvicorn main:app --reload
```

```bash

```
</details>
