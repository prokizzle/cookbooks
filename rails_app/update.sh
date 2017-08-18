pip install awscli
berks update
berks package
mkdir -p /tmp/cookbooks
mv cookbooks-* /tmp/cookbooks/cookbooks.tar.gz
aws s3 sync /tmp/cookbooks s3://prokizzle-cookbooks
