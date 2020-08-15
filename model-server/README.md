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

## APIs

Valid keys are keys starting with the PROTECTED_PREFIX ($$$).

* GET `/health`: returns 200 if the system is healthy, 500 otherwise
* GET `/get/<key>`: returns 200 if the key is found, 404 otherwise
* GET `/generateToken`: returns 403 if the request is not authorized, otherwise the token
* GET `/getEmail`: requires authorization. Returns the email associated with token used for authorization
* POST `/counter/<key>`: requires authorization. The key should be a valid key. It returns the id associated with the key (TODO: clarify)
* GET `/getRecursively/<key>`: requires authorization. Returns an array with all the keys being the given key or any key contained under it
* PUT `/put/<key>`: requires authorization. The key should be a valid key. Assign the value (specified as the body of the request) to the given key 
* PUT `/putAll`: requires authorization. The body should be a JSON array of pairs key/value. Each pair is an object with properties "key" and "value"
* PUT `/getAll`: requires authorization. The body should be a JSON array of keys. It will return a JSON array to objects with properties "key" and "value"
* GET `/`: returns the string "Model Server"
* GET `/subscribe/<key>`: TBW
