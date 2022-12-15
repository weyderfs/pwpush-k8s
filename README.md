# Installation Through Kubernetes

Installing Password Pusher should be simple. For Kubernetes installations, the repository includes a bundle of manifests configured to set up a working copy of Password Pusher.

Kubernetes clusters are complex and may differ a lot. The bundled manifests expects the following:
- `nginx ingress-controller` deployed for the cluster or namespace
- `cert-manager` installed and configured with a `cluster-issuer` named `letsencrypt-prod`

When deployed, the following kubernetes objects are provisioned:
* namespace: `pwpush`
* deployment: `pwpush`
  * pods:
    * pwpush
    * postgres (when using the persistent deploy type)
* service: `pwpush-http`
* ingress: `pwpush-ingress`
* certificate: `pwpush.domain.tld` (will be renamed accordingly if following the documented steps in [deploy](#deploy)

# Customization



# Deploy

Since Password Pusher supports both ephemeral and database-backed installations, instructions (and manifests) vary.

For both types of deploys, the configured ingress maps to the URL `pwpush.domain.tld` and cert-manager requires that domain be correctly mapped to your cluster for the letsencrypt certificates to generate automatically. You probably want to modify that URL which can be done by:
`sed -i 's|pwpush.domain.tld|pwpush.your.domain.here|g' containers/kubernetes/ingress.yaml`

## Ephemeral
```
kubectl apply -f containers/kubernetes/namespace.yaml
kubectl apply -f containers/kubernetes/ephemeral_deploy.yaml
kubectl apply -f containers/kubernetes/service.yaml
kubectl apply -f containers/kubernetes/ingress.yaml
```
