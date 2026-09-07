marco(){
	export MARCO_SAVE_DIR="$PWD"
	echo "$MARCO_SAVE_DIR has been saved."
}

polo(){
	if [ -n "$MARCO_SAVE_DIR" ]; then
		cd "$MARCO_SAVE_DIR"
		echo "Return to: $PWD"
	else
		echo "Error!"
	fi
}
