#!/usr/bin/env -S jq -rf
.[] as $root | $root.meta | "# \(.name)
<\(.homepage)> *\(.license.spdxId)*
\(.description)

\(.longDescription)
\($root.outputs.out)
\(.position)"
