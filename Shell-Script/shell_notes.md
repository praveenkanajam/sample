shell scripting topics
    
    she-bang::
        
        to determine the path of the interpretor.
        
        it has be very first line, starts with #!/path of interpretor
        
        #!/bin/bash
        ----------------------------------------------------------------
        from the second line # treats as comment
        
        line 1 #!/bin/bash # interpretor
        line 2 # comment  # comment
        
        
    comments
    
    print:
    
    ----------
    INput:
    #!/bin/bash

    ## to print a message on the screen we user printf command or echo command

    echo hellow world
    
    printf Hellow WOrld
    --------------

    Output:
    # ./02-print.sh
    hellow world
    Hellow
    -------------
    If we want to print in multile lines. we need to use the escape sequence.

    echo line 1\nline 2
     
    ## \n is an excape sequence which prints new lines.
    #    to enable escape sequence we need to use the an option -e to echo command
    
    echo -e "Hellow\nWorld"
    ---------------
    Alias:
    alias G='git pull'
    or 
    alias G="git pull"

    To remove the alias:
    unalias G


    ----------
    variales
    
        -- Command Subsititution
    
        -- Environment variale
    
    Inputs
    
        -- Read Command
    
        -- Special Variable
    
    
    Redirectors
    
    Quotes
    
    Exit status
    
    Functions
    
    conditionals
    
        --case
    
        --if
    
    Loops
    
        --While
    
        --for