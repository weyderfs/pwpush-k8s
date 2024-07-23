# Password Pusher K8s Deployment

[Pwpush or Password Pusher](https://pwpush.com/) is a [project](https://github.com/pglombardo/PasswordPusher) created and maintained by [@pglombardo](https://github.com/pglombardo). 

Pwpush is a solution to share passwords, secrets, any sensitive data in a security way.

The project allow to you selfhosted the solution in your environment. Using the **Pwpush-k8s**, such the name intent you will deploy the solution in a [Kubernetes](https://kubernetes.io/) Cluster.

# Disclaimer

> In this deploy method Pwpush run in a ephemeral mode. Without store data. 
> So what's means? If for any purpose the Pod of the Pwpush die/killed, any sensitive data in a valid time will be lost.

# Installation

## Requirements

- The kubectl updated in some version that recognize the [Kustomize](https://kustomize.io/) parameter `-k`

## How to Deploy?

This is very simple, after made your customizations in the YAML files, just run:

```sh
kubectl apply -k .
```

## Teardown

Easly like the installation, just run:

```sh
kubectl delete -k .
```
