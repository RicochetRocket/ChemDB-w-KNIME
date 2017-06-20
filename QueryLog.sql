-- Only for quick notes on queries to keep

-- Creates a table "relationships_w_smiles" with the given columns in parenthesis.
CREATE TABLE Relationships_w_SMILES(
	documentType TEXT, 
	documentID TEXT NOT NULL, 
	relCanonicalName TEXT, 
	relInstanceName TEXT, 
	agent_canonicalName TEXT, 
	agent_instanceName TEXT, 
	agent_typeType TEXT,
	target_canonicalName TEXT,
	target_instanceName TEXT,
	target_typeType TEXT
	);

-- Returns all unique genes and their respective occcurance in the db
SELECT agent_instancename, COUNT(*) FROM relationships_w_smiles 
	WHERE agent_typeType='GENE' 					-- Can be generalized to others
	GROUP BY agent_instancename;

-- Returns the top 5 most referenced genes in the db
SELECT agent_instancename, COUNT(*) FROM relationships_w_smiles 
	WHERE agent_typeType='GENE'  					-- Can be generalized to others
	GROUP BY agent_instancename 
	ORDER BY COUNT(*) DESC  						-- Change to "ASC" for least referenced
	LIMIT 5;										-- Can be any limit

-- Returns all unique agents for a given target
SELECT DISTINCT agent_instancename FROM relationships_w_smiles 
	WHERE target_canonicalname='ASTHMA';			-- Can change to target of interest

-- Returns all unique agents for a given target and their respective occurance in the db
SELECT agent_instancename, COUNT(*) FROM relationships_w_smiles 
	WHERE target_canonicalname='ASTHMA' 			-- Can change to target of interest
	GROUP BY agent_instancename;

-- Returns all unique pairs of targets and agent_instancename
SELECT DISTINCT target_canonicalname, agent_instancename FROM relationships_w_smiles; 