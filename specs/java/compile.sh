#!/usr/bin/env bash
set -e

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$BASEDIR/generate.sh $1 $BASEDIR/smoke/generated
mvn --file $BASEDIR/smoke/generated/pom.xml compile
