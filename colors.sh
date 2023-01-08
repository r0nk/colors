#!/bin/bash

show_colour() {
	for i do
		echo $i
		printf '\e]4;%d;%s\a\e[0;48;5;%dm%s\e[m\n' "$#" "$i" "$#" "$i                            " > /dev/stderr
		printf '\e]4;%d;%s\a\e[0;48;5;%dm%s\e[m\n' "$#" "$i" "$#" "$i                            " > /dev/stderr
		printf '\e]4;%d;%s\a\e[0;48;5;%dm%s\e[m\n' "$#" "$i" "$#" "$i                            " > /dev/stderr
		shift
	done
}

show_colour $(curl -s 'http://colormind.io/api/' --data-binary '{"model":"default"}' | jq .result[][] | xargs printf "#%x%x%x ")
