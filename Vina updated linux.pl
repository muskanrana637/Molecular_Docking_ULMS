 #!/usr/bin/perl
print"Ligand_file:\t";
$ligfile=<STDIN>;
chomp $ligfile;
open (FH,$ligfile)||die "Cannot open file\n";
@arr_file=<FH>;

for($i=0;$i<@arr_file;$i++)
{
print"@arr_file[$i]\n";
@name=split(/\./,@arr_file[$i]);
}
for($i=0;$i<@arr_file;$i++)
{
	chomp @arr_file[$i];
	print"@arr_file[$i]\n";
	system("vina --config conf.txt --ligand  @arr_file[$i] --verbosity 2 > @arr_file[$i]_log.log --out  @arr_file[$i]_out.pdbqt");
}
