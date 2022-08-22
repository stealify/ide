
# Contributing to Che

- [Other Che repositories](#other-che-repositories)
- [Devfile to contribute](#devfile-to-contribute)
- [Contribute to ...](#contribute-to-...)
  - [Dashboard](#dashboard)
  - [Che Server ](#che-server...)

## Other Che repositories

Che is composed of multiple sub projects. For each projects we provide a *CONTRIBUTE.md* file describing how to setup the development environment to start your contribution. Most of the time, we encourage you to use Che to contribute to Che.

<!-- begin repository list -->
Repository | Component | Description | Devfile | Documentation
--- | --- | ---  | --- | ---
[che](https://github.com/eclipse/che) | | (this repository) the main project repository | [devfile](https://github.com/eclipse/che/blob/main/devfile.yaml) | [doc](https://github.com/eclipse/che/blob/main/CONTRIBUTING.md#che-server-aka-ws-master)
---| [tests](https://github.com/eclipse/che/tree/main/tests) | source code of our integration tests. | | |
[che-server](https://github.com/eclipse-che/che-server/) | | Che server project repository | [devfile](https://github.com/eclipse-che/che-server/blob/HEAD/devfile.yaml) | [doc](https://github.com/eclipse/che/blob/HEAD/CONTRIBUTING.md#che-server-aka-ws-master)
---| [dockerfiles](https://github.com/eclipse-che/che-server/tree/HEAD/dockerfiles) | source code, dockerfiles to build our main docker images. Note that Che-theia related dockerfiles are located in che-theia repo. | | |
---| [che-server](https://github.com/eclipse-che/che-server/tree/HEAD/wsmaster) | orchestrates the Che workspaces with devfiles on Kubernetes | | |
---| [tests](https://github.com/eclipse/che/tree/master/tests) | source code of our integration tests. | | |
[che-theia](https://github.com/eclipse-che/che-theia) | | Theia IDE integrated in Che. | [devfile](https://github.com/eclipse-che/che-theia/blob/main/devfiles/che-theia-all.devfile.yaml) | [doc](https://github.com/eclipse-che/che-theia/blob/main/CONTRIBUTING.md)
---| [generator](https://github.com/eclipse-che/che-theia/tree/main/generator) | `che:theia init` CLI to prepare and build che-theia | | |
[chectl](https://github.com/che-incubator/chectl) | | The CLI to install Che, create and start workspaces and devfiles | [devfile](https://github.com/che-incubator/chectl/blob/master/devfile.yaml) | [doc](https://github.com/che-incubator/chectl/blob/master/CONTRIBUTING.md)
[che-code](https://github.com/che-incubator/che-code) | | Fork of "Code - OSS" to work with Eclipse Che | [devfile](https://github.com/che-incubator/che-code/blob/main/devfile.yaml) | [doc](https://github.com/che-incubator/che-code/blob/main/README.md)
[dashboard](https://github.com/eclipse-che/che-dashboard) | | UI to manage workspaces, devfiles, etc. | [devfile](https://github.com/eclipse-che/che-dashboard/blob/main/devfile.yaml) | [doc](https://github.com/eclipse-che/che-dashboard/blob/main/README.md#eclipse-che-dashboard)
[devfile-registry](https://github.com/eclipse-che/che-devfile-registry) | | The default set of devfiles that would be made available on the Che dashboard stacks. |  | 
[docs](https://github.com/eclipse-che/che-docs) | | Eclipse Che documentation https://github.com/eclipse-che/che-docs source code. | [devfile](https://github.com/eclipse-che/che-docs/blob/main/devfile.yaml) | [doc](https://github.com/eclipse-che/che-docs/blob/main/CONTRIBUTING.adoc)
[machine-exec](https://github.com/eclipse-che/che-machine-exec) | | Interface to execute tasks and terminals on other containers within a workspace. | [devfile](https://github.com/eclipse-che/che-machine-exec/blob/master/devfile.yaml) | [doc](https://github.com/eclipse-che/che-machine-exec/blob/master/CONTRIBUTING.md)
[operator](https://github.com/eclipse-che/che-operator) | | Che operator to deploy, update and manage K8S/OpenShift resources of Che. | [devfile](https://github.com/eclipse-che/che-operator/blob/master/devfile.yaml) | 
[plugin-broker](https://github.com/eclipse-che/che-plugin-broker) | | The workspace microservice that is in charge of analyzing, preparing and installing the workspace components defined in a Devfile. | [devfile](https://github.com/eclipse-che/che-plugin-broker/blob/master/devfile.yaml) | [doc](https://github.com/eclipse-che/che-plugin-broker/blob/master/CONTRIBUTING.md)
[plugin-registry](https://github.com/eclipse-che/che-plugin-registry) | | The default set of Che plugins (vscode extension + containers) or editors that could be installed on any Che workspaces. |  | 
[website](https://github.com/eclipse-che/che-website) | | https://eclipse.org/che website source code. | [devfile](https://github.com/eclipse-che/che-website/blob/main/.devfile.yaml) | 
[workspace-client](https://github.com/eclipse-che/che-workspace-client) | | JS library to interact with a che-server. |  | 
[che-container-tools](https://github.com/che-dockerfiles/che-container-tools) | | Base image used for sidecars that service container tooling plugins |  | 
[che-custom-nodejs-deasync](https://github.com/che-dockerfiles/che-custom-nodejs-deasync) | | Provides a custom nodejs binary embedding deasync node-gyp module as builtin module |  | 
[che-cert-manager-ca-cert-generator-image](https://github.com/che-dockerfiles/che-cert-manager-ca-cert-generator-image) | | CA cert generation job image used by chectl |  | 
[che-buildkit-base](https://github.com/che-dockerfiles/che-buildkit-base) | | Eclipse Che Sidecar container for buildkit tooling |  | 
[che-buildah-base](https://github.com/che-dockerfiles/che-buildah-base) | | Use this image to build docker images using buildah |  | 
[che-docker-registry-image-copier](https://github.com/che-dockerfiles/che-docker-registry-image-copier) | | copy images between public and private docker registry inside k8s cluster |  | 
[che-php-base](https://github.com/che-dockerfiles/che-php-base) | | Base image to be used for the PHP devfile |  | 
[che-tls-secret-creator](https://github.com/che-dockerfiles/che-tls-secret-creator) | | This images generates TLS certificates |  | 
[che-theia-openshift-auth](https://github.com/che-incubator/che-theia-openshift-auth) | | OpenShift authentication plugin |  | 
[configbump](https://github.com/che-incubator/configbump) | | Simple Kubernetes controller that is able to quickly synchronize a set of config maps |  | 
[workspace-data-sync](https://github.com/che-incubator/workspace-data-sync) | | Provides the ability to increase I/O performance for a developer workspaces |  | 
[che-workspace-telemetry-client](https://github.com/che-incubator/che-workspace-telemetry-client) | | abstract telemetry API and a Typescript implementation of the API. |  | 
[kubernetes-image-puller](https://github.com/che-incubator/kubernetes-image-puller) | | ensures that all nodes in the cluster have those images cached |  | 
[blog](https://github.com/eclipse-che/blog) | | Eclispe Che blog content. Get published at https://che.eclipseprojects.io/ | [devfile](https://github.com/eclipse-che/blog/blob/main/devfile.yaml) | 
[che-docs-vale-style](https://github.com/eclipse-che/che-docs-vale-style) | | Vale style for Eclipse Che Documentation and related projects |  | 
[che-release](https://github.com/eclipse-che/che-release) | | orchestration scripts for Eclipse Che artifacts and container images. |  | 
[che-deploy-action](https://github.com/che-incubator/che-deploy-action) | | GitHub action deploying Eclipse Che using chectl |  | 
[devfile-converter](https://github.com/che-incubator/devfile-converter) | | Allow to convert Devfile v1 to v2 or v2 to v1 |  | 
[happy-path-tests-action](https://github.com/che-incubator/happy-path-tests-action) | | Run Happy Path tests as part of a Github action |  | 
[header-rewrite-traefik-plugin](https://github.com/che-incubator/header-rewrite-traefik-plugin) | | Traefik plugin that can modify http headers.  |  | 
[jetbrains-editor-images](https://github.com/che-incubator/jetbrains-editor-images) | | Run JetBrains IDE remotely in Eclipse Che |  | 
[kubernetes-image-puller-operator](https://github.com/che-incubator/kubernetes-image-puller-operator) | | Install, configure, and manage the kubernetes-image-puller |  | 
[devworkspace-operator](https://github.com/devfile/devworkspace-operator) | | Runs devfile based development environments on Kubernetes |  | 
[registry](https://github.com/devfile/registry) | | Upstream devfile registry |  | 
[developer-images](https://github.com/devfile/developer-images) | | Container images to code, build run applications on secured Kubernetes clusters |  | 
[devworkspace-operator-docs](https://github.com/devfile/devworkspace-operator-docs) | | DevWorkspace operator documentation |  | 
<!-- end repository list -->

## Devfile to contribute

We are trying to provide a devfile for each areas where you could contribute. Each devfile could be run on any Che instances to setup a *ready-to-code* developer environment. Beware that each of them may need a certain amount of memory.
Devfile could be launched through a factory or [chectl](https://github.com/che-incubator/chectl) cli.

```bash
$ chectl workspace:start -f devfiles/che-theia-all.devfile.yaml
```

or

```bash
$ chectl workspace:start -f https://raw.githubusercontent.com/eclipse/che-theia/main/devfiles/che-theia-all.devfile.yaml
```

or `https://<CheInstance>/f?url=https://raw.githubusercontent.com/eclipse/che-theia/main/devfiles/che-theia-all.devfile.yaml`

## Contribute to ...

Let's cover the developer flow for these projects:

### Che server
There is a [devfile](https://github.com/eclipse-che/che-server/blob/HEAD/devfile.yaml) for development of Che server in Che.
To build Che one may run a predefined build task from the devfile.

Starting Che master requires some manual steps.
Open a terminal in runtime container (`che-server-runtime`) and perform:
 - First, set `CHE_HOME` environment variable with absolute path to parent folder of Che master's Tomcat.
   It might look like `/projects/che/assembly/assembly-main/target/eclipse-che-*-SNAPSHOT/eclipse-che-*-SNAPSHOT`.
 - Then set `CHE_HOST` with the endpoint of new Che master.
   If using the [devfile](devfile.yaml) the endpoint is `che-dev` and already set.
 - After, set `CHE_INFRASTRUCTURE_ACTIVE` according to your environment.
   For example: `openshift` (note, use `kubernetes` and `openshift` insted of `minikube` and `minishift` correspondingly).
 - Run `/entrypoint.sh`.
   After this, new Che master should be accesible from the `che-dev` endpoint.
   To reach Swagger use url from `che-dev` endpoint with `/swagger` suffix.

To start a workspace from Che server under development some additional configuration of the cluster is needed.
One should add rights for the service account to be able to perform all needed for Che server actions.
Example for Openshift (in case of Kubernetes replace `oc` with `kubectl`):
```bash
cat << EOF | oc apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  labels:
    app: che
    component: che
  name: che-workspace-admin
  namespace: che
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: admin
subjects:
- kind: ServiceAccount
  name: che-workspace
  namespace: che
EOF
```

Also `CHE_API_INTERNAL`, `CHE_API_EXTERNAL` and `CHE_API` should be set in runner container and point to new Che server API.
If one uses provided devfile, they are already set to: `http://che-dev:8080/api`, which should be changed in case of https protocol.


## Pull Request Template and its Checklist

Che repositories includes a GitHub Pull Request Template. Contributors must read and complete the template. In particular there is a list of requirements that the author needs to fulfil to merge the PR. This sections goes into the details of this checklist.

### The Eclipse Contributor Agreement is valid

The author has completed the [Eclipse Contributor Agreement](https://accounts.eclipse.org/user/eca) and has signed the commits using his email.

### Code produced is complete

No `TODO` comments left in the PR source code.

### Code builds without errors

The author has verified that code builds, tests pass and linters are happy.

### Tests are covering the bugfix or new feature 

If the Pull Request fixes a bug, it must includes a new automated test. The test validates the fix and protect against future regressions.

If the Pull Request is for a new feature, it must include a new automated test. The test(s) validate the feature and protect against future regressions.

### The repository devfile is up to date and works

The devfile commands used to build and run the application are still working.

### Sections "What issues does this PR fix or reference" and "How to test this PR" completed

Never omit the two sections "What issues does this PR fix or reference" and "How to test this PR".

### Relevant user documentation updated

The author has documented the changes to Che installation, usage or management in [Che documentation](https://github.com/eclipse/che-docs).

### Relevant contributing documentation updated

Document changes to the steps to contribute to the project in the `CONTRIBUTING.md` files.

### CI/CD changes implemented, documented and communicated

Update CI/CD scripts and documentation when the PR includes changes to the build, test, distribute or deploy procedures. Communicate CI/CD changes to the whole community with an email.
