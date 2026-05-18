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

## Licensing

This repository is dual-licensed:

- **Code and tooling** (`bin/`, `validations/`, `Gemfile`, `Dockerfile`,
  CI workflows, etc.) is licensed under the **MIT License** — see
  [`LICENSE.txt`](LICENSE.txt).
- **Course content** (the flight-plan modules, common blocks, common
  resources, and the materials rendered from them) is licensed under
  **Creative Commons Attribution-ShareAlike 4.0 International (CC-BY-SA-4.0)** —
  see [`LICENSE-CONTENT.txt`](LICENSE-CONTENT.txt).

Each source file carries a header indicating which licence applies.
Copyright © 2026 Better Conversations Foundation Ltd.

## Things to do

TODO is it safe having a "/" in the gem name

TODO Declare demo and also require it to be there (and if there's one and no demo declaration then raise an error)

TODO Consistency check that all common blocks take the same time

TODO I removed some of the highlighting in STATE_CHECKIN
TODO is state checkin always 2 mins

TODO need to add who Fx is for the common blocks
TODO we can do something with the Flipcharts
