/*------------------------------------------------------------
Author:        Alex Ferrari
Description:   Utility class that implements the String.split method to be used in Flows, Einstein Bots, etc.
How to use:    Just deploy this class to your org and find it in Flows as Action
Test Class:    TestSplitString
------------------------------------------------------------*/

public with sharing class SplitString {

    /**
     * @param List<SplitInputParams> contains variables inputString and separator 
     * @return List<SplitOutputStrings> containing outputList a collection of Strings that were split at separator from inputString
     */
     
    @InvocableMethod(label='Split a string (SplitString.SplitString)')
    public static List<SplitOutputStrings> SplitString(List<SplitInputParams> SplitInputParams) {
        List<SplitOutputStrings> SplitOutputStringsList = new List<SplitOutputStrings>();
        SplitOutputStrings outputString = new SplitOutputStrings();
        outputString.outputList = SplitInputParams[0].inputString.split(SplitInputParams[0].separator);
        SplitOutputStringsList.add(outputString);
        return SplitOutputStringsList;
    }

    public class SplitInputParams{
        @InvocableVariable(required=true)
        public String inputString;
        @InvocableVariable(required=true)
        public String separator;
    }

    public class SplitOutputStrings{
        @InvocableVariable(required=true)
        public List<String> outputList;
    }
}