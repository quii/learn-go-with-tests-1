# Learn Go with Tests

_Or learn test-driven development with Go._

This book is hosted on [github-pages](http://damianoneill.github.io/learn-go-with-tests/).

Ebook can be downloaded as [pdf](https://damianoneill.github.io/learn-go-with-tests/raw/gh-pages/learn-go-with-tests.pdf), [epub](https://damianoneill.github.io/learn-go-with-tests/raw/gh-pages/learn-go-with-tests.epub) and [mobi](https://damianoneill.github.io/learn-go-with-tests/raw/gh-pages/learn-go-with-tests.mobi).

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