# Readme

Just a note for me who are curious about how argo rollouts works with `canary` deployment strategy.
You can use minikube for local testing with ingress from minikube addons, and make sure you have an kubernetes installed on your local computer. Don't forget to have a dockerhub account for push your docker image repository.

# How To Run

Run the command below on your terminal.

1. Install argocd-rollouts.
bash```kubectl create ns argocd-rollouts``` Create namespace for argocd-rollouts
bash```kubectl apply -n argo-rollouts -f https://github.com/argoproj/argo-rollouts/releases/latest/download/install.yaml``` Install argocd rollouts with kubernetes.

2. Build docker image.
bash```docker built -t <your-image-name>:<image-tag>```

3. Tag your docker image.
bash```docker tag <your-image-name>:<image-tag> <username>/<your-image-name>:<image-tag>```

4. Push your docker image to dockerhub.
bash```docker push <username>/<your-image-name>:<image-tag>```

5. See your deployment strategy.
bash```kubectl argo rollouts dashboard``` or bash```kubectl argo rollouts get rollout <your-deployment> --watch```

Actually you can use another provider for deploy your image or container, but i prefer using dockerhub for testing locally.
