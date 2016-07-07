download_assets() {
  wget "$ASSETS_TAR_URL" -O entries.tar.gz
}

extract_assets() {
  mkdir -p "$ASSETS_OUTPUT_PATH"
  tar xzf entries.tar.gz -C "$ASSETS_OUTPUT_PATH"
}
