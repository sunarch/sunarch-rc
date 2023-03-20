#!/usr/bin/env bash

for f in ./*;
do
loffice --headless --invisible --nodefault --view --nolockcheck --nologo --norestore --nofirststartwizard --convert-to pdf "$f";
done
