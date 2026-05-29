#!/bin/bash
echo "$ bundle exec jekyll serve"
bundle exec jekyll serve 2>&1 | while IFS= read -r line; do
    echo "$line"
    if [[ "$line" == *"Server running"* ]]; then
        echo "$ open http://127.0.0.1:4000/"
        open http://127.0.0.1:4000/
    fi
done
