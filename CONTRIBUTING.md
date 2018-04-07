# Contributing

Contributions are very welcome, I hope for this to become a great home for guides of how to learn go by writing tests

## What we're looking for

- Teaching Go features (e.g things like `if`, `select`, structs, methods, etc)
- Showcase interesting functionality within the standard library. Show off how easy it is to TDD a HTTP server for instance.
- Show how Go's tooling, like benchmarking, race detectors, etc can help you arrive at great software

If you don't feel confident to submit your own guide, submitting an issue for something you want to learn is still a valuable contribution.

## Style guide

- Always reinforce the TDD cycle. Take a look at [template.md](template.md)
- Emphasis on iterating over functionality driven by tests. The Hello, world example works well because we gradually make it more sophisticated and learning new techniques *driven* by the tests. For example:
  - `Hello()` <- how to write functions, return types.
  - `Hello(name string)` <- arguments, constants
  - `Hello(name string)` <- default to "world" using `if`
  - `Hello(name, language string)` <- `switch`

- Try to minimise the surface area of required knowledge.
  - Thinking of examples that showcase what you're trying to teach without confusing the reader with other features is important.
  - For example, you can learn about `struct`s without understanding pointers.
  - Brevity is king.
- Follow the [Code Review Comments style guide](https://github.com/golang/go/wiki/CodeReviewComments). It's important for a consistent style across all the sections.
- Your section should have a runnable application at the end (e.g `package main` with a `main` func) so users can see it in action and play with it
- All tests should pass

## Publishing this book

Docker is used both for travis and for local builds. You can create the Docker image as follows:

```sh
docker build -t learn-go-with-tests .
```

Once the image has been created it can be used to run up a local copy of the Gitbook output:

```sh
docker run --rm --name learn-go-with-tests -p 4000:4000 learn-go-with-tests
```

The Serving book can be viewed at http://localhost:4000

Or it can be used to verify the code in this repository is passing the unit tests:

```sh
docker run --rm -it learn-go-with-tests make test
```

The book can be published to Github Pages with the following command:

```sh
docker run --rm -it learn-go-with-tests make publish -e GITHUB_TOKEN=xxxx
```