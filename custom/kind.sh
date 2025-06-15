# set -e
REPO_URL="https://raw.githubusercontent.com/mahadikbs/required-software/main/custom/"
echo "Installing Docker..."
cat $REPO_URL/docker.sh
curl -sSL "$REPO_URL/docker.sh" | bash