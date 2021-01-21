sed -i '' "s|<reversewords_git_repo>|https://github.com/mmartofel/reverse-words|" build-pipeline.yaml
sed -i '' "s|<reversewords_quay_repo>|quay.io/mmartofe/tekton-reversewords|" build-pipeline.yaml
sed -i '' "s|<golang_package>|github.com/mmartofel/reverse-words|" build-pipeline.yaml
sed -i '' "s|<imageBuilder_sourcerepo>|mmartofel/reverse-words-cicd|" build-pipeline.yaml

sed -i '' "s|<reversewords_cicd_git_repo>|https://github.com/mmartofel/reverse-words-cicd|" promote-to-prod-pipeline.yaml
sed -i '' "s|<reversewords_quay_repo>|quay.io/mmartofe/tekton-reversewords|" promote-to-prod-pipeline.yaml
sed -i '' "s|<imageBuilder_sourcerepo>|mmartofel/reverse-words-cicd|" promote-to-prod-pipeline.yaml
sed -i '' "s|<stage_deployment_file_path>|./deployment.yaml|" promote-to-prod-pipeline.yaml

