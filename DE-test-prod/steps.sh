python -m pip install --upgrade pip

pip install -r requirements.txt

docker pull postgres:12

docker run -p 5432:5432 --name staging-pg -e POSTGRES_PASSWORD=password -e POSTGRES_DB=zipmex -d postgres:12

python app/postgres/create_pg_table.py