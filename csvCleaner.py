import csv, os

file_count = 0

for file in os.listdir('./Input'):
	file_data = []
	with open('./Input/'+file,'r+') as csvfile:
		# fnames = ['docid', 'tdce', 'mol_disc', 'unkwn', 'l_dist', 'smiles', 'name_corr', 'name_orig', 'dummy1', 'dummy2', 'dummy3', 'dummy4', 'dummy']
		# reader = csv.DictReader(csvfile, fieldnames=fnames)
		# for row in reader:
		# 	print(row)
		file_data = csvfile.readlines()

	for ind,row in enumerate(file_data):
		if row.count('"') % 2 != 0:
			row_stage = list(row)
			row_stage.insert(row.rfind('"'), '"')
			
			# print(file + ':Line ' + str(ind + 1) + ' Needs another one at index ' + str(row.rfind('"')))
			# print(row, end='')
			# print('How does this look? \n' + ''.join(row_stage))
			file_data[ind]=''.join(row_stage)
			file_count += 1

	file_data.insert(0, '\n')

	with open('./Input/'+file, 'w') as corr_file:
		corr_file.write(''.join(file_data))


print('Corrected ' + str(file_count) + ' files.' )
