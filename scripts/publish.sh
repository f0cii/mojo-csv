#!/bin/bash

# ignore errors because we want to ignore duplicate packages
for file in $CONDA_BLD_PATH/**/*.conda; do
    echo "Uploading $file..."
    magic run rattler-build upload prefix -c "mojo-libs-f0cii-nightly" "$file" --api-key=$PREFIX_DEV_API_KEY || true
done

rm $CONDA_BLD_PATH/**/*.conda