# Custom external assets buildpack

This buildpack allows to download a compressed tarball and copy its content to a given directory.  It is especially useful when working with external assets.

You have to provide those two environment variables:
- *ASSETS_TAR_URL*: URL of the tarball
- *ASSETS_OUTPUT_PATH*: Output path of the extracted entries (this is a relative path to the root path of the application)
