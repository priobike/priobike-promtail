# priobike-promtail

We use this repository to build our own [Promtail](https://github.com/grafana/loki) image with our configuration baked in. In detail, we use this to fetch the logs of a specific service in our deployment and send them to Loki. For this, Promtail needs to run on the same node as the service we want to fetch the logs from, because it fetches the logs directly from the Docker socket.

Promtail depends on a running Loki instance to send the logs to. For this, we also use our own [Loki image](https://github.com/priobike/priobike-loki).

[Learn more about PrioBike](https://github.com/priobike)

## Quickstart

Run using Docker:
```bash
docker build -t priobike-promtail . && docker run --rm --env-file .env priobike-promtail
```
Configure the environment variables in the `.env` file. The following variables are required:
- `LOKI_URL`: The URL of the Loki instance to send the logs to.
- `LOKI_PORT`: The port of the Loki instance to send the logs to.
- `SERVICE_NAME_OF_INTEREST`: The Docker Swarm service name of the service you want to fetch the logs from.

## What else to know

Needs to run on the same node as the service you want to fetch the logs from. This is because Promtail fetches the logs directly from the Docker socket.

## Contributing

We highly encourage you to open an issue or a pull request. You can also use our repository freely with the `MIT` license. 

Every service runs through testing before it is deployed in our release setup. Read more in our [PrioBike deployment readme](https://github.com/priobike/.github/blob/main/wiki/deployment.md) to understand how specific branches/tags are deployed.

## Anything unclear?

Help us improve this documentation. If you have any problems or unclarities, feel free to open an issue.