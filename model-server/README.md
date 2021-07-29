# model-server

To run the model-server with default configuration run:

```
../gradlew run'
```

You may also want to specify a different jdbc configuration. You can do that in this way:

```
../gradlew run --args='-jdbcconf path-to-my-database.properties'
```

To perform some tests it could be useful to start with in-memory storage:

```
../gradlew run --args='-inmemory'
```

## Development

To reformat and add license header to all files run:

```
./gradlew spotlessApply
```

## APIs

Valid keys are keys starting with the PROTECTED_PREFIX ($$$).

For details please refer to the OpenAPI documentation under `doc/model-server.json`.
