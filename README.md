# sphinx_demo

https://thetanil.github.io/sphinx_demo/

works with act

```sh
# install nekos/act

# build the docs and "upload" to .artifacts/...
./build.sh

# unzip the "artifact" and serve with with python -m http.server
./serve.sh
```

GitHub Action "deploy" job will unzip and deploy the built artifact
