#!usr/bin/perl
use warnings;

# The following script will take an imput file replace a line with something else and output it to another file.
# Code by Levi Overstreet <levovers@uat.edu>


# This is asking to input the file for the input file. The file that is being used is /etc/passwd.
print "Please enter the INPUT file name:\n";

# This is taking the input and using it as a variable.
$INPUT = <>;

# This is removing any newline characters form the input.
chomp $INPUT;

# This is the if statement that is checking the contents of the input file and confirming if it exists and is readable or not.
if (-e $INPUT && -r $INPUT){

	print "$INPUT exists and is readable.\n";
}

else {

	print "$INPUT doesn't exist or is not readable.\n";
}

# This opens the input file and uses it as a variable.
open (INFILE, "$INPUT");

# This is asking to input the file name for the output file. The file that is being used is /tmp/project2_4_output.txt
print "Please enter the OUTPUT file name:\n";

# This is taking the output and using it as a variable.
$OUTPUT = <>;

# This is removing any newline characters form the input.
chomp $OUTPUT;

# This is the if statement that is checking the contents of the input file and confirming if it exists and is writable or not.
if (-e $OUTPUT && -w $OUTPUT){

	print "$OUTPUT exists and is writable.\n"
}

else {

	print "$OUTPUT doesn't exist or is not writable.\n"
}

# This opens the output file and writes to it.
open (OUTFILE, ">>$OUTPUT");

# This is the while statement that takes the variable and states what to look for and what to replace.
while (<INFILE>){

	s/home/export\/home/;
	print OUTFILE $_;
}

