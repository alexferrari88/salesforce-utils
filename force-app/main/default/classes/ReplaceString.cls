/*------------------------------------------------------------
Author:        Alex Ferrari
Description:   Utility class that implements the String.replace method to be used in Flows, Einstein Bots, etc.
Test Class:    TestReplaceString
------------------------------------------------------------*/
public with sharing class ReplaceString {

    /**
     * @param List<ReplaceInputParams> contains variables inputString, toReplace, replaceValue 
     * @return List<ReplaceOutputString> containing outputString where toReplace has been replaced by replaceValue in inputString
     */
     
    @InvocableMethod(label='Replace a string (ReplaceString.ReplaceString)')
    public static List<ReplaceOutputString> ReplaceString(List<ReplaceInputParams> replaceInputParams){
        List<ReplaceOutputString> replaceOutputList = new List<ReplaceOutputString>();
        ReplaceOutputString outputString = new ReplaceOutputString();
        for (ReplaceInputParams inputParam: replaceInputParams){
            outputString.outputString = inputParam.inputString;
            for (Integer i=0; i < inputParam.toReplace.size(); i++){
                outputString.outputString = outputString.outputString.replace(inputParam.toReplace[i], inputParam.replaceValue[i]);
            }
            replaceOutputList.add(outputString);
        }
        return replaceOutputList;
    }

    public class ReplaceInputParams{
        @InvocableVariable(required=true)
        public String inputString;
        @InvocableVariable(required=true)
        public List<String> toReplace;
        @InvocableVariable(required=true)
        public List<String> replaceValue;
    }

    public class ReplaceOutputString{
        @InvocableVariable(required=true)
        public String outputString;
    }
}