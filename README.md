# ChemDB-w-KNIME
Project for IBM 2017 data importer for chemical databases and analytics utilizing KNIME.

## Instructions

*Data is not included for confidentiality*

### To import into KNIME
1. Download the workflow file of interest "*.knwf"
1. In KNIME File>"Import KNIME Workflow">Select "*.knwf"
1. Confirm import.

### CSV Importer 
___

1. Match "List Files" configuration to file naming scheme. 
1. Configure "PostgreSQL Connector" to your database or replace the node accordingly.

  *Will continue...*

### SMILE to InChiKey
___

1. Ensure configuration is set to database column format.
	* It will throw an error otherwise!

  *Will continue...*

### Simple Substructure Filter
___

1. Change SMARTS input to desired filter.
  * Currently filters aromatics out

Maybe extend this to take in a gene and filtered substruc for compatibility? I wonder if KNIME has this capability...The main problem is while yes, a drug may affect the target, but how do we determine what else it'll affect? Leave it to the lab techs? ...Just found [Schrödinger](https://www.schrodinger.com/knimeworkflows "Schrödinger KNIME Workflows")

  *Will continue* 

