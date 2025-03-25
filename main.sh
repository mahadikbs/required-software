# set -e

REPO_URL="https://raw.githubusercontent.com/mahadikbs/required-software/main"

echo "Installing Docker..."
curl -sSL "$REPO_URL/docker.sh" | bash

echo "Installing Kubernetes..."
curl -sSL "$REPO_URL/k8s.sh" | bash

echo "Installing Minikube..."
curl -sSL "$REPO_URL/minikube.sh" | bash

echo "All software installed successfully!"
