
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-VanGoghLettersV1-web="http://www.tei-c.org/pm/models/VanGoghLettersV1/web/module" at "../transform/VanGoghLettersV1-web-module.xql";
import module namespace pm-VanGoghLettersV1-print="http://www.tei-c.org/pm/models/VanGoghLettersV1/print/module" at "../transform/VanGoghLettersV1-print-module.xql";
import module namespace pm-VanGoghLettersV1-latex="http://www.tei-c.org/pm/models/VanGoghLettersV1/latex/module" at "../transform/VanGoghLettersV1-latex-module.xql";
import module namespace pm-VanGoghLettersV1-epub="http://www.tei-c.org/pm/models/VanGoghLettersV1/epub/module" at "../transform/VanGoghLettersV1-epub-module.xql";
import module namespace pm-VanGoghLettersV1-fo="http://www.tei-c.org/pm/models/VanGoghLettersV1/fo/module" at "../transform/VanGoghLettersV1-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "VanGoghLettersV1.odd" return pm-VanGoghLettersV1-web:transform($xml, $parameters)
    default return pm-VanGoghLettersV1-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "VanGoghLettersV1.odd" return pm-VanGoghLettersV1-print:transform($xml, $parameters)
    default return pm-VanGoghLettersV1-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "VanGoghLettersV1.odd" return pm-VanGoghLettersV1-latex:transform($xml, $parameters)
    default return pm-VanGoghLettersV1-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "VanGoghLettersV1.odd" return pm-VanGoghLettersV1-epub:transform($xml, $parameters)
    default return pm-VanGoghLettersV1-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "VanGoghLettersV1.odd" return pm-VanGoghLettersV1-fo:transform($xml, $parameters)
    default return pm-VanGoghLettersV1-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    