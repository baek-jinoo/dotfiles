if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

for file in /usr/local/etc/bash_completion.d/*; do
  [[ -r "$file" ]] && source "$file"
done

# Customizations can be placed into ~/.bash_profile_includes/ with a .sh extension
for file in ~/.bash_profile_includes/*.sh; do
  [[ -r $file ]] && source $file;
done
