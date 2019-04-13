##:fa-language: English to Pig Latin Translator
This English to Pig Latin translation program performs a translation of any English text to Pig Latin. Words, phrases, sentences, paragraphs and more.

Basically, the Pig Latin system used here works as follows:
- Words that start with a vowel (A, E, I, O, U) simply have "WAY" appended to the end of the word.
- Words that start with a consonant have all consonant letters up to the first vowel moved to the end of the word (as opposed to just the first consonant letter), and "AY" is appended.


####:fa-cogs: How it works
When inserting a string, the algorithm calls the `preg_replace_callback` method that split a sentence into words, each word passes through the` modifyWorld` method. Word starts with a vowel it adds the suffix **way**, if word start with consonant  call the `moveConsonantsToEnd` method:

    <?php
	function moveConsonantsToEnd($word)
	{
		$vowelFound = false;
		$newWord = '';
		$consonants = '';

		for ($i = 0; $i < strlen($word); $i++) {
			$char = $word[$i];

			if ($vowelFound) {
				$newWord .= $char;
				continue;
			}

			if (in_array($char, $this->vowels)) {
				$vowelFound = true;
				$newWord .= $char;
			}
			else {
				$consonants .= $char;
			}
		}

		return $newWord . $consonants . $this->consonantSuffix;
	}
	
	
	
The idea is to traverse input word and maintain two strings, one string that contains new word characters and other string that maintains consoants characters. Finally, concatenate the two strings and add suffix **ay**.

####:fa-flag-checkered: Getting started
`#> php piglatin.php`