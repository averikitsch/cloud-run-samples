RTN=0
for config in *.cloudbuild.yaml; do
  if [[ ! -f "${config}" ]]; then
    continue
  fi

  echo "Building $config ... "
  (
    gcloud builds submit --config $config
    EXIT=$?
    echo "EXIT? ${EXIT}"
    if [[ $EXIT -ne 0 ]]; then
      RTN=1
      echo "RTN ${RTN}"
    fi
    echo "RTN1 ${RTN}"
    exit "$RTN"
  ) &
done
wait

# echo "RTN2 ${RTN}"
# exit "$RTN"
