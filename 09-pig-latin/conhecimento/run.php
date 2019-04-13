<?php 
/*
Solução desenvolvida por CONHECIMENTO

Pontos (base): 20
Pontos adicionais: 5 (README)
Pontos (total): 25

Forma(s) de contato:
  - Discord: Conhecimento#2812
*/

class PigLatin
{
	private $prase;
	private $vowels = ['a', 'e', 'i', 'o', 'u'];
	private $vowelSuffix = 'way';
	private $consonantSuffix = 'ay';

	public function __construct($phase)
	{
		$this->phase = $phase;
	}

	public function translate()
	{	
		return preg_replace_callback('/\w+/', function($word) {
			return $this->modifyWord($word[0]);
		}, $this->phase);
	}

	private function modifyWord($word)
	{
		$isUpper = $this->checkFirstCharIsUpper($word[0]);

		$char = strtolower($word[0]);
		$newWord = in_array($char, $this->vowels) ? $this->addVowalsSuffix($word) : $this->moveConsonantsToEnd($word);

		return $isUpper ? ucfirst($newWord) : $newWord;
	}

	private function checkFirstCharIsUpper($char)
	{
		return preg_match('/[A-Z]/', $char);
	}

	private function addVowalsSuffix($word) {
		return $word . $this->vowelSuffix;
	}

	private function moveConsonantsToEnd($word)
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

}

echo "| Pig latin" . PHP_EOL;
echo "| Digite 'Sair' para sair" . PHP_EOL;
echo PHP_EOL;

$text = '';

while(strtolower($text) !== 'sair') {
	echo "| Escreva uma frase ou texto: ";
	$text = trim(fgets(STDIN));

	echo "| Tradução: ";
	$pigLatin = new PigLatin($text);

	echo $pigLatin->translate() . PHP_EOL;
}
