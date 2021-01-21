WEBHOOK_SECRET="v3r1s3cur3"
oc -n reversewords-ci create secret generic webhook-secret --from-literal=secret=${WEBHOOK_SECRET}
sed -i '' "s/<git-triggerbinding>/github-triggerbinding/" webhook.yaml
sed -i '' "/ref: github-triggerbinding/d" webhook.yaml
sed -i '' "s/- name: pipeline-binding/- name: github-triggerbinding/" webhook.yaml
oc -n reversewords-ci create -f webhook.yaml
