#Write a shell script that accepts a list of filenames as its argument, count and report occurrence of each word that is present in the first argument file on other argument files.

if [ $# -ge 2 ]

then

    for fn in $*

    do

        if [ -e $fn ]

        then 

            if [ $fn = $1 ]

            then

                continue

            fi

            for w in `cat $1`

            do

                lc=`grep -woi "$w" $fn | wc -l`

                echo "$w is $lc in $fn"

            done

        else

            echo "$fn File not Found!"

        fi

    done

else

    echo "ParameterPattern: PatternFile FilesToCheck.. "

fi




	
	
		
	
                    
                     
      	                 
     	               
          

