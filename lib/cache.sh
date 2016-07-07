source $BP_DIR/lib/assets.sh

get_cache_status() {
  if ! ${ASSETS_CACHE:-true}; then
    echo "disabled by config"
  elif [ -d "$CACHE_DIR/assets/$(tarball_name)" ]; then
    echo "valid"
  else
    echo "new runtime signature"
  fi
}

clear_cache() {
  rm -rf $CACHE_DIR/assets
  mkdir -p $CACHE_DIR/assets
}
