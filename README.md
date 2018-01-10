This can be used to run micro-demos inside a pod inside your kube cluster.

Run it like this:

`kubectl create -f https://raw.githubusercontent.com/coresolve/micro-demos/master/k8s/micro-demos.yaml`

This will create a new namespace `micro-demos`
A service account `micro-demos:micro-demos`
A clusterrolebinding setting the service account to cluster-admin
A pod micro-demos

Then you can exec into the pod. 

`kubectl exec -n micro-demos -ti micro-demos /bin/bash`

and start playing with micro-demos.

TODO:
Need to make a repo of the micro-demos for tectonic and pull that instead of the tarball that I am pulling in now.

