export CURRENT_PROJECT_PATH=$HOME/.current-project

function chpwd {
  echo $(pwd) >! $CURRENT_PROJECT_PATH
  ls -G
}

cd_to_most_recently_opened_directory() {
  if [[ -f $CURRENT_PROJECT_PATH && -d "$(cat $CURRENT_PROJECT_PATH)" ]]; then
    cd "$(cat $CURRENT_PROJECT_PATH)"
  fi
}
