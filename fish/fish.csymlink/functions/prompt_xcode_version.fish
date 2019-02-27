function prompt_xcode_version
  set projects_and_workspaces (find -H . -maxdepth 2 -name '*.xcodeproj' -not -path '*.git*' | wc -l)

  if [ $projects_and_workspaces -gt 0 ]
    set xcode_version (plutil -p (xcode-select -p)/../Info.plist \
    | egrep CFBundleShortVersionString \
    | sed 's/[^0-9\.]*//g')

    echo "[$xcode_version] "
  end
end
