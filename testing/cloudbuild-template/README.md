```
gcloud builds submit $SAMPLE --config .ci/$SAMPLE.cloudbuild.yaml --substitutions COMMIT_SHA=manual
```
**Note** The use of the $COMMIT_SHA substitution variable is populated by Cloud Build when triggered from a git repository. To test this configuration manually override the variable.