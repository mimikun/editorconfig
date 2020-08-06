function editorconfig --description 'Generate editorconfig'
  if not test -e .editorconfig
    echo ".editorconfig not exist."
    echo "Creating .editorconfig."
    cp $HOME/.editorconfig-template ./.editorconfig
  end
end

