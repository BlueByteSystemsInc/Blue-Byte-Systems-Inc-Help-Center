
# Frequently Asked Questions

|Question|Answer|
|---|---|
|I'm unable to consume my license|Make sure your system/firewall allows for connections to be made to httsp://bluebyte.biz on **port 443**. **[Contact](https://bluebyte.biz/contact/)** us if this problem still persists.|
|I’m running the add-in on assembly and it is not capturing all the references.|Make sure that the assembly and its references have local copies on the machine that runs the add-in. You can do that by doing a get-latest on the assembly and its references in the machine that runs the task. This is a by-design behavior of the PDM Convert Task Extended.|
|The task is unable to check in the log file.|This could be related to a number of issues. You may need to make sure the user running the add-in has proper file and folder permissions on the log folder. You also need to make sure that the txt file extension is NOT part of the **[auto-add user setting](https://help.solidworks.com/2017/english/enterprisepdm/admin/idd_page_file_adding.htm)**.|