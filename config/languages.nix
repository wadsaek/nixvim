{lib,...}:let
  ukrainian = [
    {
      key = "й";
      action = "q";
    }
    {
      key = "ц";
      action = "w";
    }
    {
      key = "у";
      action = "e";
    }
    {
      key = "к";
      action = "r";
    }
    {
      key = "е";
      action = "t";
    }
    {
      key = "н";
      action = "y";
    }
    {
      key = "г";
      action = "u";
    }
    {
      key = "ш";
      action = "i";
    }
    {
      key = "щ";
      action = "o";
    }
    {
      key = "з";
      action = "p";
    }
    {
      key = "х";
      action = "[";
    }
    {
      key = "ї";
      action = "]";
    }
    {
      key = "ґ";
      action = "\\";
    }
    {
      key = "ф";
      action = "a";
    }
    {
      key = "і";
      action = "s";
    }
    {
      key = "в";
      action = "d";
    }
    {
      key = "а";
      action = "f";
    }
    {
      key = "п";
      action = "g";
    }
    {
      key = "р";
      action = "h";
    }
    {
      key = "о";
      action = "j";
    }
    {
      key = "л";
      action = "k";
    }
    {
      key = "д";
      action = "l";
    }
    {
      key = "ж";
      action = ";";
    }
    {
      key = "є";
      action = "'";
    }
    {
      key = "я";
      action = "z";
    }
    {
      key = "ч";
      action = "x";
    }
    {
      key = "с";
      action = "c";
    }
    {
      key = "м";
      action = "v";
    }
    {
      key = "и";
      action = "b";
    }
    {
      key = "т";
      action = "n";
    }
    {
      key = "ь";
      action = "m";
    }
    {
      key = "б";
      action = ",";
    }
    {
      key = "ю";
      action = ".";
    }
  ];
  hebrew = [
    {
      key = "ק";
      action = "e";
    }
    {
      key = "ר";
      action = "r";
    }
    {
      key = "א";
      action = "t";
    }
    {
      key = "ט";
      action = "y";
    }
    {
      key = "ו";
      action = "u";
    }
    {
      key = "ן";
      action = "i";
    }
    {
      key = "ם";
      action = "o";
    }
    {
      key = "פ";
      action = "p";
    }
    {
      key = "ש";
      action = "a";
    }
    {
      key = "ד";
      action = "s";
    }
    {
      key = "ג";
      action = "d";
    }
    {
      key = "כ";
      action = "f";
    }
    {
      key = "ע";
      action = "g";
    }
    {
      key = "י";
      action = "h";
    }
    {
      key = "ח";
      action = "j";
    }
    {
      key = "ל";
      action = "k";
    }
    {
      key = "ך";
      action = "l";
    }
    {
      key = "ף";
      action = ";";
    }
    {
      key = "ז";
      action = "z";
    }
    {
      key = "ס";
      action = "x";
    }
    {
      key = "ב";
      action = "c";
    }
    {
      key = "ה";
      action = "v";
    }
    {
      key = "נ";
      action = "b";
    }
    {
      key = "מ";
      action = "n";
    }
    {
      key = "צ";
      action = "m";
    }
    {
      key = "ת";
      action = ">";
    }
    {
      key = "ץ";
      action = "<";
    }
  ];
in
  {
  keymaps = ukrainian ++ hebrew;
  }
