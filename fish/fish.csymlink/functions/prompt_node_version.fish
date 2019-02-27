function prompt_node_version
  if test -e "$PWD/.node-version"
    set node_version (node -v)
    echo "[$node_version] "
  end
end
