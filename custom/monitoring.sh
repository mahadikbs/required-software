# set -e
REPO_URL="https://raw.githubusercontent.com/mahadikbs/required-software/main/custom/"
echo "Installing Prometheus..."
cat $REPO_URL/prom_amzn_lnx.sh

curl -sSL "$REPO_URL/prom_amzn_lnx.sh" | bash