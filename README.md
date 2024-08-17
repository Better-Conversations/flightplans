# BCF Flight Plan Sources

This repository contains the sources for the BCF flight plans. 

- Each file should contain one flight plan
- Examples of pre-sets or reusable components can be found in `common_blocks.rb`
- An example flight plan can be found in `module_3.rb`
- There is a VSCode devcontainer configuration to write flight plans.
- To build the currently open file run the Render PDF task or launch configuration.
    - Or use one of the files in the `bin/` directory with the filename as an argument.
    - `bin/render-pdf` builds once
    - `bin/render-pdf-watch` watches for changes and rebuilds but may be less reliable.
    - `bin/render-pdf-fswatch` uses fswatch to watch for changes and rebuilds, so is slower but more reliable.

## Things to do 

TODO is it safe having a "/" in the gem name
TODO modules aren't building at all
