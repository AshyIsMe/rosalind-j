0 : 0

http://rosalind.info/problems/rna/


The Second Nucleic Acid

Problem

An RNA string is a string formed from the alphabet containing 'A', 'C', 'G', and 'U'.

Given a DNA string t
corresponding to a coding strand, its transcribed RNA string u is formed by replacing all occurrences of 'T' in t with 'U' in u.

Given: A DNA string t having length at most 1000 nt.

Return: The transcribed RNA string of t.

Sample Dataset

GATGGAACTTGACTACGTAAATT

Sample Output

GAUGGAACUUGACUACGUAAAUU


)

NB. Set unlimited line length first
9!:37 ] 0 _ _ _


sample =: 'GATGGAACTTGACTACGTAAATT'

'U' (I. 'T'=sample)} sample

NB. or probably more sensibly using the string library function
sample rplc 'TU'

NB. A Fold solution from jfondren in #jsoftware@freenode
'' [ F.. {{ y,(x='T') { x,'U' }} sample

NB. rna =: 3 : 'y rplc ''TU'''

rna =: 'TU'&stringreplace