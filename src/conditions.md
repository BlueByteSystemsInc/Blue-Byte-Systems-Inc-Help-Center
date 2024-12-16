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
|**TextEqualTo**|Checks if the text is exactly equal to the specified value. Supports * as a wildcard.|
|**TextNotEqualTo**|Checks if the text is not equal to the specified value.|
|**TextLengthLessThan**|Checks if the length of the text is less than the specified value.|
|**TextLengthBiggerThan**|Checks if the length of the text is greater than the specified value.|
|**TextContains**|Checks if the text contains the specified value.|
|**TextDoesNotContain**|Checks if the text does not contain the specified value.|
|**NumberEqualTo**|Checks if the number is equal to the specified value.|
|**NumberNotEqualTo**|Checks if the number is not equal to the specified value.|
|**NumberLessThan**|Checks if the number is less than the specified value.|
|**NumberBiggerThan**|Checks if the number is greater than the specified value.|
|**DateEqualTo**|Checks if the date is equal to the specified value.|
|**DateNotEqualTo**|Checks if the date is not equal to the specified value.|
|**DateLessThan**|Checks if the date is earlier than the specified value.|
|**DateBiggerThan**|Checks if the date is later than the specified value.|
|**YesOrNoEqualTo**|Checks if the value is equal to either Yes or No.|
