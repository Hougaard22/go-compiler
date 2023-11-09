docker buildx build . \
        --progress=plain --no-cache --load \
        -t go-compiler