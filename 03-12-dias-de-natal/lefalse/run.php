<?php

/*
Solução desenvolvida por LEFALSE

Entrega: 22/12/18 10:37 BRT

Pontos (base): 20
Pontos adicionais: 0
Pontos (total): 20

Forma(s) de contato:
 - Discord: LeFalse#0001
 - GitHub: https://github.com/lefalse
*/

class days12Christimas{
    
    /**
     * Define for run browser or terminal
     * @var boolean
     */
    private $_terminal;
    
    /**
     * Parts lyric
     * @var array
     */
    private $_partsLyric;
    
    /**
     * Lyric complete
     * @var string
     */
    private $_lyric;
    
    /**
     * Format breakline
     * @var string breakLine
     */
    private $_breakLine;
    
    function __construct() {
        $this->_terminal   = false;
        $this->_partsLyric = array(
            "Turtle Doves",
            "French hens",
            "calling birds",
            "golden rings",
            "geese a-laying",
            "swans a-swimming",
            "maids a-milking",
            "ladies dancing",
            "lords a-leaping",
            "pipers piping",
            "drummers drumming"
        );
        $this->_breakLine = ($this->_terminal ? "\n" : "<br>");
    }
    
    /**
     * Get Lyric
     * @return string     
     */
    public function getLyric() {
        $cPartSound = count($this->_partsLyric)+2;
        for($i = 1 ; $i < $cPartSound ; $i++) {
            $this->_lyric .= "On the ". $i . $this->getSuffix($i) ." day of Christmas".  $this->_breakLine;
            $this->_lyric .= "My true love sent to me".$this->_breakLine;
            
            for($i2=($i-2) ; $i2 > -1 ; $i2--) {
                $this->_lyric .= ($i2+2) ." ". $this->_partsLyric[$i2] .",".  $this->_breakLine;
            }
            
            if($i > 1) {
                $this->_lyric .= "and ";
            }
            
            $this->_lyric .= "a Partridge in a Pear Tree.". $this->_breakLine;
            $this->_lyric .= "--". $this->_breakLine;
        }
        
        return $this->_lyric;
    }
    
    private function getSuffix($n) {
        return ($n === 1 ? "st" : ($n === 2 ? "nd" : ($n === 3 ? "rd" : "th")));
    }
    
}

$days12 = new days12Christimas();
echo $days12->getLyric();