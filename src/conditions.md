# Conditions Setup Page

Conditions can be added to a task to include or exclude files from being processed.  
The task will only process files that evaluate any of the set conditions as *true*.

> [!WARNING]
> Conditions are applied to references of the top-level assembly (parts or sub-assemblies). 


To add a condition, *click* the ***Add*** button. 

You can also  ***export*** and  ***import*** conditions.

### Condition Options

|Option|Description|
|---|---|
|**Variable**|Variable name with the run the condition on.|
|**Condition Type**|Operation type to process.|
|**Value**|Value to evaluate the condition against.|
|**Configuration**|Configuration: Specify the configuration from which to get the value of the variable. Use @ in general.|


### Special Variable

The variable list in the condition column starts with several entries that are special variables. They contain:
 
 - FileName: Filename of the file.
 - Revision: Current revision of the file (What's locally cached).
 - Version: Current version of the file (What's locally cached).
 - Workflow: Name of the workflow the file is in.
 - State: Name of the state the file is in.

### Operation Types

|Operation|Description|
|---|---|
|**TextEqualTo**|Text Equal To (* as a wildcard)|
|**TextNotEqualTo**|Text Not Equal To|
|**TextLengthLessThan**|Text Length Less Than|
|**TextLengthBiggerThan**|Text Length Bigger Than|
|**TextContains**|Text Contains|
|**TextDoesNotContain**|Text Does Not Contain|
|**NumberEqualTo**|Number Equal To|
|**NumberNotEqualTo**|Number Not Equal To|
|**NumberLessThan**|Number Less Than|
|**NumberBiggerThan**|Number Bigger Than|
|**DateEqualTo**|Date Equal To|
|**DateNotEqualTo**|Date Not Equal To|
|**DateLessThan**|Date Less Than|
|**DateBiggerThan**|Date Bigger Than|
|**YesOrNoEqualTo**|Yes or No Equal To|
