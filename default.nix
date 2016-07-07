with import <yarnpkgs>;
stdenv.mkDerivation {
  name = "asciidoctor";
  buildInputs = [ zlib libxml2 libxslt ruby_2_2.dev ];
  shellHook = ''
    export C_INCLUDE_PATH=${libxml2}/include/libxml2:${libxslt}/include
    export BUNDLE_PATH=$(pwd)/bundle
    export GEM_HOME=$(pwd)/bundle
    export GEM_PATH=$(pwd)/bundle
    export PATH=$(pwd)/bin:$PATH
  '';
}

# Stuff to do:
# - Put paths for interdependencies
# - Add Gemfile with path for top-level projects
# - gem install bundler
# - bundler install --binstubs

