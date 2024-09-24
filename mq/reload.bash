SCRIPT_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "${SCRIPT_PATH}/docker-compose.yaml"

docker compose -f "${SCRIPT_PATH}/docker-compose.yaml" down

sudo rm "${SCRIPT_PATH}/data" -rf

docker compose -f "${SCRIPT_PATH}/docker-compose.yaml" up -d