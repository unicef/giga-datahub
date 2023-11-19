#!/bin/bash

if ! [ -f $HOME/.local/bin/bw ]; then
  echo "Bitwarden CLI could not be found"
  exit 1
fi

if [ -z $BW_SESSION ]; then
  echo "Bitwarden session variable not set"
  exit 1
fi

envsList=(
  .env
  broker.env
  datahub-actions.env
  datahub-frontend.env
  datahub-gms.env
  datahub-mae-consumer.env
  datahub-mce-consumer.env
  datahub-upgrade.env
  elasticsearch.env
  elasticsearch-setup.env
  kafka-setup.env
  neo4j.env
  postgres.env
  postgres-setup.env
  schema-registry.env
  user.props
  zookeeper.env
)

for env in "${envsList[@]}"; do
  bw get notes "Datahub $env" > $env
  echo "Saved $env"
done
