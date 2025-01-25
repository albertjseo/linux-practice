# make a directory
mkdir Development/linux-practice

# ensure you are in the correct directory
cd Development/linux-practice

# after creating the directory, retrieve the files via HTTP or FTP
wget https://raw.githubusercontent.com/biopython/biopython/master/Doc/examples/ls_orchid.fasta

: '
3 tasks:

Print all the contents of the downloaded dataset to terminal window (”standard output”)
Print how many lines there are in the file
Print how many lines there are in the file THAT CONTAIN GENETIC DATA (no headers)
'
# Print all the contents of the downloaded dataset to terminal window (”standard output”)
cat ls_orchid.fasta

# Print how many lines there are in the file
wc ls_orchid.fasta

# Print how many lines there are in the file that contain genetic data (no headers)
grep -c "[ATCG]" ls_orchid.fasta
