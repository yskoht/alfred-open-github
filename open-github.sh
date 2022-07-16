#!/bin/bash
number=$1

if [[ -z "${owner}" ]] || [[ -z "${repository}" ]]; then

cat << EOB
{"items": [
  {
    "title": "Open GitHub: Please set 'owner' and 'repository' variables",
  }
]}
EOB

else

cat << EOB
{"items": [
  {
    "title": "Open GitHub by PR or Issue number",
    "subtitle": "Number: ${number}",
    "arg": "https://github.com/${owner}/${repository}/pull/${number}"
  }
]}
EOB

fi
