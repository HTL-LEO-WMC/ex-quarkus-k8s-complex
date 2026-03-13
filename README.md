# Exercise - Quarkus k8s Complex Deployment
This contains all the files you'll need to complete the exercise found on https://htl.dev.

| FILE             | DESCRIPTION                                                                                                                                                              |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| root             | In the root you have the build-scripts you can start. Those scripts build your backend and frontend for either local use (`build.sh`) or minikube (`minikube-build.sh`). |
| k8s              | Contains all json files you'll need to `kubectl apply -f <file>`.                                                                                                        |
| backend-quarkus  | The backend code (a Quarkus REST backend).                                                                                                                               |
| frontend-quarkus | The frontend code (Angular).                                                                                                                                             |
