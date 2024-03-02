# DE_Zoomcamp_2024

You can run docker compose file with 
```bash
docker-compose up
```

or with full path:

Create a network (the name what you want) 
```bash
docker network create pg-network
```

Postgres path (the container name what you want)
  ```bash
docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v "/home/<your-dir>/<your-dir>/<your-dir>/<your-file>:/var/lib/postgresql/data:rw" \
  -p 5432:5432 \
  --network=pg-network \
  --name  pg-database1 \
  postgres:13
```

  Pgadmin path (the container name what you want)
  ```bash
  docker run -it \
  -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
  -e PGADMIN_DEFAULT_PASSWORD="root" \
  -p 8080:80 \
  --network=pg-network \
  --name pgadmin-2one \
  dpage/pgadmin4:8.1
```

    
Running locally data ingestion:
```bash
URL="https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"
python ingest_data.py \
  --user=root \
  --password=root \
  --host=localhost \
  --port=5432 \
  --db=ny_taxi \
  --table_name=yellow_taxi_trips \ (the name what you want)
  --url=${URL}
```

Build the image:
```bash
docker build -t taxi_ingest:v001 .
```
After that, run this: 
```bash
URL="https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"
docker run -it \
  --network=pg-network \
  taxi_ingest:v001 \
    --user=root \
    --password=root \
    --host=pg-database \
    --port=5432 \
    --db=ny_taxi \
    --table_name=yellow_taxi_trips \ (the name what you want)
    --url=${URL}
```
    
