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

# Install package needed for alignments.
# It is important to run sequence alignments because of identifying sequence similarities, phylogenetic trees, and developing homology models of protein structures
sudo apt-get install clustalw

#  run command clustalw
clustalw

# once prompted select 1 for Sequence Input from disk
1

# introduce the name of the file with FASTA
your_fastafile.FASTA

# select option for Multiple Alignments
2

# select 9 for Output format options and select 3
9
3

# re-select option 1 to Do complete multiple alignment now (Slow/Accurate)
1

# three files will be generated:
# extension dnd - contains the guide tree
# extension aln - contains the alignment in ClustaW format
# extension msf - alignment in MSF format