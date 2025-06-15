# set -e
REPO_URL="https://raw.githubusercontent.com/mahadikbs/required-software/main/custom/"
echo "Installing Software..."
cat $REPO_URL/kind_amzn_lnx.sh

curl -sSL "$REPO_URL/kind_amzn_lnx.sh" | bash