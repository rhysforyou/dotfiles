function prompt_ruby_version
  if test -e "$PWD/.ruby-version"
    set ruby_version (rbenv local)
    echo "[$ruby_version] "
  end
end
