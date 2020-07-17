# model-server

To run the model-server with default configuration run:

```
./gradlew run'
```

You may also want to specify a different jdbc configuration. You can do that in this way:

```
./gradlew run --args='-jdbcconf path-to-my-database.properties'
```

## Development

To reformat and add license header to all files run:

```
./gradlew spotlessApply
```

## Perform a release

Insert your bintray credentials under `~/.gradle/gradle.properties`:

```
bintray_user=yourusername
bintray_api_key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

Note that you cannot publish versions ending with 'SNAPSHOT'.