function prompt_ruby_version
  if rbenv local &>/dev/null
    set ruby_version (rbenv local)
    echo "[$ruby_version] "
  end
end
