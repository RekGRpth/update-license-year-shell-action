#!/bin/sh

set -eux
sed -Ei "s|^([Cc]opyright.+) ([0-9]{4})([-]?)([0-9]{4}?) (.+)$|\1 \2-$(date "+%Y") \5|g" "${INPUTS_LICENSE:-LICENSE}"
git commit --message "update license year" --all
git push --progress
