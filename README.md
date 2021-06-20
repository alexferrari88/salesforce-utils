# salesforce-utils
Various bits of code to assist you as Salesforce Developer ☁


# Apex Classes
## SplitString
**Test Class**: TestSplitString
**Why do I need this?**: Ever needed to split a CSV string in a flow⚡ but don't know how? This class will make your low-code life easier allowing you to do just that!

### Description 
This class is to be used in Flows or Einstein Bots whenever you need to split a string into an array/collection. You can pass the separator as a parameter.

It is useful when, for some reasons, you can only to store a list of values as a string and you want to convert them into an array. 

I use this a lot in an Einstein Bot where I pass a string with comma-separated values to a flow which uses this class to split the string in a collection to loop through.

## ReplaceString
**Test Class**: TestSplitString
**Why do I need this?**: Those Einstein Bots🤖 aren't that flexible, am I right? Say you need to replace a placeholder text from a custom metadata with a variable? Well, this class allows you to do just that.

### Description
This class is to be used in Flows or Einstein Bots whenever you need to replace some text with other text.

As for the class above, I use this in Einstein Bots where placeholder text in custom metadata is replaced by text from the bot (e.g. *Hello, #FirstName#!* becomes *Hello, Alex!*)

# Lightning Web Components
## relatedList
**Why do I need this?**: Do you need to create a component that looks like a native related list📃? You came to the right place.
### Description
This is a skeleton for a LWC that can be added to the related lists tab of any object. This component only provides the "looks"😎 of how a related list looks like so that it can show up seamlessly in your Related Lists tab. This means that you have to write the business logic yourself to make it work.

It is a good starting point so that you only need to focus on writing the logic, while the design is already taken care of.