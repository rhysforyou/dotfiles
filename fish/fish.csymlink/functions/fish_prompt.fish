function fish_prompt --description 'Write out the prompt'
  set -l last_status $status
  set -l normal (set_color normal)
  set -l fish_color_user blue
  set -l fish_color_ruby brred

  if not set -q __fish_git_prompt_show_informative_status
    set -g __fish_git_prompt_show_informative_status 1
  end
  if not set -q __fish_git_prompt_hide_untrackedfiles
    set -g __fish_git_prompt_hide_untrackedfiles 1
  end

  if not set -q ___fish_git_prompt_color_branch
    set -g __fish_git_prompt_color_branch blue
  end

  if not set -q __fish_git_prompt_showupstream
    set -g __fish_git_prompt_showupstream "informative"
  end
  if not set -q __fish_git_prompt_char_upstream_ahead
    set -g __fish_git_prompt_char_upstream_ahead "↑"
  end
  if not set -q __fish_git_prompt_char_upstream_behind
    set -g __fish_git_prompt_char_upstream_behind "↓"
  end
  if not set -q __fish_git_prompt_char_upstream_prefix
    set -g __fish_git_prompt_char_upstream_prefix ""
  end

  if not set -q __fish_git_prompt_char_stagedstate
    set -g __fish_git_prompt_char_stagedstate "●"
  end
  if not set -q __fish_git_prompt_char_dirtystate
    set -g __fish_git_prompt_char_dirtystate "✚"
  end
  if not set -q __fish_git_prompt_char_untrackedfiles
    set -g __fish_git_prompt_char_untrackedfiles "…"
  end
  if not set -q __fish_git_prompt_char_conflictedstate
    set -g __fish_git_prompt_char_conflictedstate "✖"
  end
  if not set -q __fish_git_prompt_char_cleanstate
    set -g __fish_git_prompt_char_cleanstate "✔"
  end

  if not set -q __fish_git_prompt_color_dirtystate
    set -g __fish_git_prompt_color_dirtystate blue
  end
  if not set -q __fish_git_prompt_color_stagedstate
    set -g __fish_git_prompt_color_stagedstate yellow
  end
  if not set -q __fish_git_prompt_color_invalidstate
    set -g __fish_git_prompt_color_invalidstate red
  end
  if not set -q __fish_git_prompt_color_untrackedfiles
    set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
  end
  if not set -q __fish_git_prompt_color_cleanstate
    set -g __fish_git_prompt_color_cleanstate green
  end

  set -l color
  set -l prefix

  switch $USER
      case root toor
        if set -q fish_color_cwd_root
          set color_cwd $fish_color_cwd_root
          else
            set color_cwd $fish_color_cwd
          end
          set suffix '#'
      case '*'
        set color_cwd $fish_color_cwd
        set suffix '%'
  end

  echo -ens "\n\x1b[K" \
    (set_color $color_cwd) (prompt_pwd) $normal ' ' \
    (set_color green) (prompt_node_version) $normal \
    (set_color blue) (prompt_xcode_version) $normal \
    (set_color $fish_color_ruby) (prompt_ruby_version) $normal \
    "\b" (__fish_git_prompt) $normal \
    "\n$suffix "
end