!/bin/bash

function read_document_character_count {
	echo "Number of words in document: $(wc -c < $1)"
}

read_document_character_count $1
