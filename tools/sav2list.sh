#!/bin/bash
#
# This file extracts soldier data from a save, and for each skill store
# the results in a seperate file.
#
# This script is assumed to be run from the directory in which the
# generated files will be stored.
#
# Synopsis: sav2list PATH_TO_SAVEFILE
INPUT="$1"
#INPUT="~/.local/share/openxcom/xcom1/Start.sav"

SKILL+=("bravery:")
SKILL+=("firing:")
SKILL+=("health:")
SKILL+=("improvement:")
SKILL+=("melee:")
SKILL+=("psiSkill:")
SKILL+=("psiStrength:")
SKILL+=("reactions:")
SKILL+=("stamina:")
SKILL+=("strength:")
SKILL+=("throwing:")
SKILL+=("tu:")

FILENAME+=("bravery")
FILENAME+=("firing")
FILENAME+=("health")
FILENAME+=("improvementPsiSKL")
FILENAME+=("melee")
FILENAME+=("psiSkill")
FILENAME+=("psiStrength")
FILENAME+=("reactions")
FILENAME+=("stamina")
FILENAME+=("strength")
FILENAME+=("throwing")
FILENAME+=("tu")

FILEBASENAME="soldiers"


for ind in ${!FILENAME[@]}; do
    cat "$INPUT" | grep ${SKILL[$ind]} > "$FILEBASENAME.${FILENAME[$ind]}"
done


echo "done"
