
# Testing

Testing that all the features of Modelix works is not an easy task, because it is such a large projects with different moving parts.

We have different kinds of tests:

* Unit Tests, as typical. In general, we have very few of those and we should increase them.
* Integration Tests, which runs as part of the CI. They verify the different parts of the systems work together
* Manual Tests, to be performed after major changes. They are necessary to catch errors we are unable to catch with automated tests. They are described in the directory _manual_tests_
