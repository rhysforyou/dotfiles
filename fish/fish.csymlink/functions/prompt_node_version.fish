function prompt_node_version
  if nodenv local &>/dev/null
    set node_version (node -v)
    echo "[$node_version] "
  end
end
