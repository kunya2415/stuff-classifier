# encoding: utf-8
require 'set'
StuffClassifier::Tokenizer::TOKENIZER_PROPERTIES = {
  "en" => {
    :preprocessing_regexps => {/['`]/ => '',/[_]/ => ' '},
    :stop_word => Set.new([
    'a', 'about', 'above', 'across', 'after', 'afterwards',
    'again', 'against', 'all', 'almost', 'alone', 'along',
    'already', 'also', 'although', 'always', 'am', 'among',
    'amongst', 'amoungst', 'amount', 'an', 'and', 'another',
    'any', 'anyhow', 'anyone', 'anything', 'anyway', 'anywhere',
    'are', 'around', 'as', 'at', 'back', 'be',
    'became', 'because', 'become', 'becomes', 'becoming', 'been',
    'before', 'beforehand', 'behind', 'being', 'below', 'beside',
    'besides', 'between', 'beyond', 'bill', 'both', 'bottom',
    'but', 'by', 'call', 'can', 'cannot', 'cant', 'dont',
    'co', 'computer', 'con', 'could', 'couldnt', 'cry',
    'de', 'describe', 'detail', 'do', 'done', 'down',
    'due', 'during', 'each', 'eg', 'eight', 'either',
    'eleven', 'else', 'elsewhere', 'empty', 'enough', 'etc', 'even', 'ever', 'every',
    'everyone', 'everything', 'everywhere', 'except', 'few', 'fifteen',
    'fify', 'fill', 'find', 'fire', 'first', 'five',
    'for', 'former', 'formerly', 'forty', 'found', 'four',
    'from', 'front', 'full', 'further', 'get', 'give',
    'go', 'had', 'has', 'hasnt', 'have', 'he',
    'hence', 'her', 'here', 'hereafter', 'hereby', 'herein',
    'hereupon', 'hers', 'herself', 'him', 'himself', 'his',
    'how', 'however', 'hundred', 'i', 'ie', 'if',
    'in', 'inc', 'indeed', 'interest', 'into', 'is',
    'it', 'its', 'itself', 'keep', 'last', 'latter',
    'latterly', 'least', 'less', 'ltd', 'made', 'many',
    'may', 'me', 'meanwhile', 'might', 'mill', 'mine',
    'more', 'moreover', 'most', 'mostly', 'move', 'much',
    'must', 'my', 'myself', 'name', 'namely', 'neither',
    'never', 'nevertheless', 'next', 'nine', 'no', 'nobody',
    'none', 'noone', 'nor', 'not', 'nothing', 'now',
    'nowhere', 'of', 'off', 'often', 'on', 'once',
    'one', 'only', 'onto', 'or', 'other', 'others',
    'otherwise', 'our', 'ours', 'ourselves', 'out', 'over',
    'own', 'part', 'per', 'perhaps', 'please', 'put',
    'rather', 're', 'same', 'see', 'seem', 'seemed',
    'seeming', 'seems', 'serious', 'several', 'she', 'should',
    'show', 'side', 'since', 'sincere', 'six', 'sixty',
    'so', 'some', 'somehow', 'someone', 'something', 'sometime',
    'sometimes', 'somewhere', 'still', 'such', 'system', 'take',
    'ten', 'than', 'that', 'the', 'their', 'them',
    'themselves', 'then', 'thence', 'there', 'thereafter', 'thereby',
    'therefore', 'therein', 'thereupon', 'these', 'they', 'thick',
    'thin', 'third', 'this', 'those', 'though', 'three',
    'through', 'throughout', 'thru', 'thus', 'to', 'together',
    'too', 'top', 'toward', 'towards', 'twelve', 'twenty',
    'two', 'un', 'under', 'until', 'up', 'upon',
    'us', 'very', 'via', 'was', 'we', 'well',
    'were', 'what', 'whatever', 'when', 'whence', 'whenever',
    'where', 'whereafter', 'whereas', 'whereby', 'wherein', 'whereupon',
    'wherever', 'whether', 'which', 'while', 'whither', 'who',
    'whoever', 'whole', 'whom', 'whose', 'why', 'will',
    'with', 'within', 'without', 'would', 'yet', 'you', 'your', 'yours',
    'yourself', 'yourselves'
    ])
  },
  "fr" => {
    :stop_word => Set.new([
    'au',  'aux',  'avec',  'ce',  'ces',  'dans',  'de',  'des',  'du',  'elle',  'en',  'et',  'eux',
    'il',  'je',  'la',  'le',  'leur',  'lui',  'ma',  'mais',  'me',  'même',  'mes',  'moi',  'mon',
    'ne',  'nos',  'notre',  'nous',  'on',  'ou',  'par',  'pas',  'pour',  'qu',  'que',  'qui',  'sa',
    'se',  'ses',  'son',  'sur',  'ta',  'te',  'tes',  'toi',  'ton',  'tu',  'un',  'une',  'vos',  'votre',
    'vous',  'c',  'd',  'j',  'l',  'à',  'm',  'n',  's',  't',  'y',  'été',  'étée',  'étées',
    'étés',  'étant',  'suis',  'es',  'est',  'sommes',  'êtes',  'sont',  'serai',  'seras',
    'sera',  'serons',  'serez',  'seront',  'serais',  'serait',  'serions',  'seriez',  'seraient',
    'étais',  'était',  'étions',  'étiez',  'étaient',  'fus',  'fut',  'fûmes',  'fûtes',
    'furent',  'sois',  'soit',  'soyons',  'soyez',  'soient',  'fusse',  'fusses',  'fût',
    'fussions',  'fussiez',  'fussent',  'ayant',  'eu',  'eue',  'eues',  'eus',  'ai',  'as',
    'avons',  'avez',  'ont',  'aurai',  'auras',  'aura',  'aurons',  'aurez',  'auront',  'aurais',
    'aurait',  'aurions',  'auriez',  'auraient',  'avais',  'avait',  'avions',  'aviez',  'avaient',
    'eut',  'eûmes',  'eûtes',  'eurent',  'aie',  'aies',  'ait',  'ayons',  'ayez',  'aient',  'eusse',
    'eusses',  'eût',  'eussions',  'eussiez',  'eussent',  'ceci',  'celà ',  'cet',  'cette',  'ici',
    'ils',  'les',  'leurs',  'quel',  'quels',  'quelle',  'quelles',  'sans',  'soi'
    ])
  },
  "de" => {
    :stop_word => Set.new([
    'aber', 'alle', 'allem', 'allen', 'aller', 'alles', 'als', 'also', 'am', 'an', 'ander', 'andere',
    'anderem', 'anderen', 'anderer', 'anderes', 'anderm', 'andern', 'anderr', 'anders', 'auch', 'auf',
    'aus', 'bei', 'bin', 'bis', 'bist', 'da', 'damit', 'dann', 'der', 'den', 'des', 'dem', 'die', 'das',
    'daß', 'dass', 'derselbe', 'derselben', 'denselben', 'desselben', 'demselben', 'dieselbe', 'dieselben', 'dasselbe',
    'dazu', 'dein', 'deine', 'deinem', 'deinen', 'deiner', 'deines', 'denn', 'derer', 'dessen', 'dich', 'dir', 'du',
    'dies', 'diese', 'diesem', 'diesen', 'dieser', 'dieses', 'doch', 'dort', 'durch', 'ein', 'eine', 'einem', 'einen',
    'einer', 'eines', 'einig', 'einige', 'einigem', 'einigen', 'einiger', 'einiges', 'einmal', 'er', 'ihn', 'ihm', 'es',
    'etwas', 'euer', 'eure', 'eurem', 'euren', 'eurer', 'eures', 'für', 'gegen', 'gewesen', 'hab', 'habe', 'haben', 'hat',
    'hatte', 'hatten', 'hier', 'hin', 'hinter', 'ich', 'mich', 'mir', 'ihr', 'ihre', 'ihrem', 'ihren', 'ihrer', 'ihres',
    'euch', 'im', 'in', 'indem', 'ins', 'ist', 'jede', 'jedem', 'jeden', 'jeder', 'jedes', 'jene', 'jenem', 'jenen', 'jener',
    'jenes', 'jetzt', 'kann', 'kein', 'keine', 'keinem', 'keinen', 'keiner', 'keines', 'können', 'könnte', 'machen', 'man', 'manche',
    'manchem', 'manchen', 'mancher', 'manches', 'mein', 'meine', 'meinem', 'meinen', 'meiner', 'meines', 'mit', 'muss', 'musste', 'nach',
    'nicht', 'nichts', 'noch', 'nun', 'nur', 'ob', 'oder', 'ohne', 'sehr', 'sein', 'seine', 'seinem', 'seinen', 'seiner', 'seines', 'selbst',
    'sich', 'sie', 'ihnen', 'sind', 'so', 'solche', 'solchem', 'solchen', 'solcher', 'solches', 'soll', 'sollte', 'sondern', 'sonst', 'über',
    'um', 'und', 'uns', 'unse', 'unsem', 'unsen', 'unser', 'unses', 'unter', 'viel', 'vom', 'von', 'vor', 'während', 'war', 'waren', 'warst',
    'was', 'weg', 'weil', 'weiter', 'welche', 'welchem', 'welchen', 'welcher', 'welches', 'wenn', 'werde', 'werden', 'wie', 'wieder', 'will',
    'wir', 'wird', 'wirst', 'wo', 'wollen', 'wollte', 'würde', 'würden', 'zu', 'zum', 'zur', 'zwar', 'zwischen'
    ])
  },
  "ru" => {
    :preprocessing_regexps => {/['`]/ => '',/[_]/ => ' '},
    :stop_word => Set.new([
      "а", "е", "и", "ж", "м", "о", "на", "не", "ни", "об", "но", "он", 
      "мне", "мои", "мож", "она", "они", "оно", "мной", "много", "многочисленное", 
      "многочисленная", "многочисленные", "многочисленный", "мною", "мой", "мог", "могут",
      "можно", "может", "можхо", "мор", "моя", "моё", "мочь", "над", "нее", "оба", "нам", 
      "нем", "нами", "ними", "мимо", "немного", "одной", "одного", "менее", "однажды", 
      "однако", "меня", "нему", "меньше", "ней", "наверху", "него", "ниже", "мало", "надо",
      "один", "одиннадцать", "одиннадцатый", "назад", "наиболее", "недавно", "миллионов", 
      "недалеко", "между", "низко", "меля", "нельзя", "нибудь", "непрерывно", "наконец", 
      "никогда", "никуда", "нас", "наш", "нет", "нею", "неё", "них", "мира", "наша", "наше", 
      "наши", "ничего", "начала", "нередко", "несколько", "обычно", "опять", "около", "мы", 
      "ну", "нх", "от", "отовсюду", "особенно", "нужно", "очень", "отсюда", "в", "во", "вон", 
      "вниз", "внизу", "вокруг", "вот", "восемнадцать", "восемнадцатый", "восемь", "восьмой", 
      "вверх", "вам", "вами", "важное", "важная", "важные", "важный", "вдали", "везде", "ведь", 
      "вас", "ваш", "ваша", "ваше", "ваши", "впрочем", "весь", "вдруг", "вы", "все", "второй", 
      "всем", "всеми", "времени", "время", "всему", "всего", "всегда", "всех", "всею", "всю", 
      "вся", "всё", "всюду", "г",
      "год", "говорил", "говорит", "года", "году", "где", "да", "ее", "за", "из", "ли", "же", 
      "им", "до", "по", "ими", "под", "иногда", "довольно", "именно", "долго", "позже", "более", 
      "должно", "пожалуйста", "значит", "иметь", "больше", "пока", "ему", "имя", "пор", "пора", 
      "потом", "потому", "после", "почему", "почти", "посреди", "ей", "два", "две", "двенадцать", 
      "двенадцатый", "двадцать", "двадцатый", "двух", "его", "дел", "или", "без", "день", "занят", 
      "занята", "занято", "заняты", "действительно", "давно", "девятнадцать", "девятнадцатый", 
      "девять", "девятый", "даже", "алло", "жизнь", "далеко", "близко", "здесь", "дальше", "для", 
      "лет", "зато", "даром", "первый", "перед", "затем", "зачем", "лишь", "десять", "десятый", "ею", 
      "её", "их", "бы", "еще", "при", "был", "про", "процентов", "против", "просто", "бывает", "бывь", 
      "если", "люди", "была", "были", "было", "будем", "будет", "будете", "будешь", "прекрасно", "буду", 
      "будь", "будто", "будут", "ещё", "пятнадцать", "пятнадцатый", "друго", "другое", "другой", "другие", 
      "другая", "других", "есть", "пять", "быть", "лучше", "пятый", "к", "ком", "конечно", "кому", 
      "кого", "когда", "которой", "которого", "которая", "которые", "который", "которых", "кем", 
      "каждое", "каждая", "каждые", "каждый", "кажется", "как", "какой", "какая", "кто", "кроме", 
      "куда", "кругом", "с",
      "т", "у", "я", "та", "те", "уж", "со", "то", "том", "снова", "тому", "совсем", "того", "тогда", "тоже", 
      "собой", "тобой", "собою", "тобою", "сначала", "только", "уметь", "тот", "тою", "хорошо", "хотеть", 
      "хочешь", "хоть", "хотя", "свое", "свои", "твой", "своей", "своего", "своих", "свою", "твоя", "твоё", 
      "раз", "уже", "сам", "там", "тем", "чем", "сама", "сами", "теми", "само", "рано", "самом", "самому", 
      "самой", "самого", "семнадцать", "семнадцатый", "самим", "самими", "самих", "саму", "семь", "чему", 
      "раньше", "сейчас", "чего", "сегодня", "себе", "тебе", "сеаой", "человек", "разве", "теперь", "себя", 
      "тебя", "седьмой", "спасибо", "слишком", "так", "такое", "такой", "такие", "также", "такая", "сих", 
      "тех", "чаще", "четвертый", "через", "часто", "шестой", "шестнадцать", "шестнадцатый", "шесть", "четыре", 
      "четырнадцать", "четырнадцатый", "сколько", "сказал", "сказала", "сказать", "ту", "ты", "три", "эта", 
      "эти", "что", "это", "чтоб", "этом", "этому", "этой", "этого", "чтобы", "этот", "стал", "туда", "этим", 
      "этими", "рядом", "тринадцать", "тринадцатый", "этих", "третий", "тут", "эту", "суть", "чуть", "тысяч"
    ])
  }
}