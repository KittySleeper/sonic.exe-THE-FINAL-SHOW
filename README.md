"# sonic.exe-yoshi-engine-port-project" 
Unknown command echo
Haxe Library Manager 4.0.2 - (c)2006-2019 Haxe Foundation
  Usage: haxelib [command] [options]
  Basic
    install            : install a given library, or all libraries from a hxml file
    update             : update a single library (if given) or all installed libraries
    remove             : remove a given library/version
    list               : list all installed libraries
    set                : set the current version for a library
  Information
    search             : list libraries matching a word
    info               : list information on a given library
    user               : list information on a given user
    config             : print the repository path
    path               : give paths to libraries' sources and necessary build definitions
    libpath            : returns the root path of a library
    version            : print the currently used haxelib version
    help               : display this list of options
  Development
    submit             : submit or update a library package
    register           : register a new user
    dev                : set the development directory for a given library
    git                : use Git repository as library
    hg                 : use Mercurial (hg) repository as library
  Miscellaneous
    setup              : set the haxelib repository path
    newrepo            : create a new local repository
    deleterepo         : delete the local repository
    convertxml         : convert haxelib.xml file to haxelib.json
    run                : run the specified library with parameters
    proxy              : setup the Http proxy
  Available switches
    --flat             : do not use --recursive cloning for git
    --always           : answer all questions with yes
    --debug            : run in debug mode, imply not --quiet
    --quiet            : print less messages, imply not --debug
    --system           : run bundled haxelib version instead of latest update
    --skip-dependencies: do not install dependencies
    --never            : answer all questions with no
    --global           : force global repo if a local one exists
