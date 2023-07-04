echo ""
echo "Generate new GPG keys for git commit signing"
echo "If you need further information please visit: https://docs.github.com/de/authentication/managing-commit-signature-verification/generating-a-new-gpg-key"
gpg --full-generate-key

echo ""
echo "List keys and copy the ID manually"
gpg --list-secret-keys --keyid-format=long

echo ""
echo "Paste the ID as new signingkey in ~/.gitconfig"
echo ""
echo "Export the key with following code and paste it in https://github.com/settings/keys: gpg --armor --export 3AA5C34371567BD2 | pbcopy"

echo ""
echo "Restart GPG agent"
gpgconf --kill gpg-agent
gpgconf --launch gpg-agent
