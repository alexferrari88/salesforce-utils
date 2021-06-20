# salesforce-utils
Various bits of code to assist you as Salesforce Developer.

# Apex Classes
## SplitString
**Test Class**: TestSplitString

### Description 
This class is to be used in Flows or Einstein Bots whenever you need to split a string into an array/collection. You can pass the separator as parameter.

It is useful when, for some reasons, you can only to store a list of values as a string and you want to convert them into an array. 

I use this a lot in an Einstein Bot where I pass a string with comma-separated values to a flow which uses this class to split the string in a collection to loop through.

## ReplaceString
**Test Class**: TestSplitString

### Description
This class is to be used in Flows or Einstein Bots whenever you need to replace some text with other text.

As for the class above, I use this in Einstein Bots where placeholder text in custom metadata is replaced by text from the bot (e.g. *Hello, #FirstName#!* becomes *Hello, Alex!*)