download_assets() {
  wget "$ASSETS_TAR_URL" -O entries.tar.gz
}

# extract_assets <build_dir>
extract_assets() {
  local build_dir=$1
  local assets_dir="$build_dir/$ASSETS_OUTPUT_PATH"
  mkdir -p "$assets_dir"
  tar xzf entries.tar.gz -C "$assets_dir"
}

clean_assets() {
  rm entries.tar.gz
}
