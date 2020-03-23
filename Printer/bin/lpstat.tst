#!/bin/bash

function DisplayPrinter ()
{
	# Print the printer name
        echo $1

        # Displaying all of the printer work
        for i in ../spool/$1/R*

        	do
     	        	cat $i
                done
}

# Check wheter to run on all printers or just one
if [ "$1" == "-all" ]

	then
		cd ../spool/
		for printer in *

			do
				if [ ! -h $printer ]

					then
						DisplayPrinter $printer
						#echo $printer
				fi
			done
	else
		if [ -d ../spool/$1 ]

			then
				DisplayPrinter $1
			else
				echo we dont have such printer

		fi
fi
