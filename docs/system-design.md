## Node Types

Each node type has an incremental port value in steps of `100`.

- Applications start on `5000`
- APIs start on `5100`
- Services start on `5200`
- ... etc

This allows for up to `100` of each type of node to exist without port conflict. Hopefully `100` is enough.

## Applications

All applications must start with `50**`. 

### Test app

#### Port Mappings

`5000-8080`

#### URLs

- `https://apps.bradio.io/test-app`
- `https://apps.bradio.io/test-app/ping`
- `https://apps.bradio.io/test-app/docs`

## APIs

All apis must start with `51**`

### Test API

#### Port Mappings

`5100-8080`

#### URLs

- `https://apis.bradio.io/test-api`
- `https://apis.bradio.io/test-api/ping`
- `https://apis.bradio.io/test-api/docs`
