#!/bin/bash

# made to simplify the creation of React Components.
# I personally like to use css or scss module approach.

# when calling the script,
# the first argument is the component name,
# the second argument is the style extension.

COMPONENT=$1
STYLE=$2

mkdir $1
cd $1

if [ -z "$2" ]
then 
  STYLE="css"
fi
  
touch style.module.$STYLE

echo "
  import style from './style.module.$STYLE';

	export const $COMPONENT = () => {
		return (
			<></>
		)
	}
" > index.tsx