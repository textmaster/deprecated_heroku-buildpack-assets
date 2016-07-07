download_assets() {
  wget "$ASSETS_TAR_URL" -O entries.tar.gz
}

tarball_name() {
  echo "$(basename "$ASSETS_TAR_URL" | cut -d. -f1)"
}

extract_assets() {
  local assets_dir="$BUILD_DIR/$ASSETS_OUTPUT_PATH"
  mkdir -p "$assets_dir"
  tar xzf entries.tar.gz -C "$assets_dir"
}

clean_assets_tarball() {
  rm entries.tar.gz
}

copy_assets_from_cache() {
  local assets_dir="$BUILD_DIR/$ASSETS_OUTPUT_PATH"
  local cache_dir="$CACHE_DIR/assets/$(tarball_name)"
  mkdir -p "$assets_dir"
  cp -a "$cache_dir/." "$assets_dir"
}

cache_assets() {
  local assets_dir="$BUILD_DIR/$ASSETS_OUTPUT_PATH"
  local cache_dir="$CACHE_DIR/assets/$(tarball_name)"
  mkdir -p "$cache_dir"
  cp -a "$assets_dir/." "$cache_dir"
}
