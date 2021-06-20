@isTest
private class TestReplaceString{
@isTest static void TestReplaceTextOneValue() {
        String inputTestString = 'Welcome #FirstName#, this is the IMCD Bot';
        List<String> toReplace = new List<String>{'#FirstName#'};
        List<String> replaceValue = new List<String>{'John'};

        ReplaceString.ReplaceInputParams inputParams = new ReplaceString.ReplaceInputParams();
        List<ReplaceString.ReplaceInputParams> inputParamsList = new List<ReplaceString.ReplaceInputParams>();
        ReplaceString.ReplaceOutputString expectedOutputString = new ReplaceString.ReplaceOutputString();

        inputParams.inputString = inputTestString;
        inputParams.toReplace = toReplace;
        inputParams.replaceValue = replaceValue;
        inputParamsList.add(inputParams);

        expectedOutputString.outputString = inputParams.inputString;

        for (Integer i=0; i<inputParams.toReplace.size(); i++){
            String wordToReplace = inputParams.toReplace[i];
            String wordReplacement = inputParams.replaceValue[i];
            expectedOutputString.outputString = expectedOutputString.outputString.replace(wordToReplace, wordReplacement);
        }

        System.assertEquals(expectedOutputString.outputString, ReplaceString.ReplaceString(inputParamsList)[0].outputString);

    }

    @isTest static void TestReplaceTextMultipleValues() {
        String inputTestString = 'Welcome #FirstName#, this is the IMCD Bot. Right now I am #status#';
        List<String> toReplace = new List<String>{'#FirstName#', '#status#'};
        List<String> replaceValue = new List<String>{'John', 'offline'};

        ReplaceString.ReplaceInputParams inputParams = new ReplaceString.ReplaceInputParams();
        List<ReplaceString.ReplaceInputParams> inputParamsList = new List<ReplaceString.ReplaceInputParams>();
        ReplaceString.ReplaceOutputString expectedOutputString = new ReplaceString.ReplaceOutputString();

        inputParams.inputString = inputTestString;
        inputParams.toReplace = toReplace;
        inputParams.replaceValue = replaceValue;
        inputParamsList.add(inputParams);

        expectedOutputString.outputString = inputParams.inputString;

        for (Integer i=0; i<inputParams.toReplace.size(); i++){
            String wordToReplace = inputParams.toReplace[i];
            String wordReplacement = inputParams.replaceValue[i];
            expectedOutputString.outputString = expectedOutputString.outputString.replace(wordToReplace, wordReplacement);
        }

        System.assertEquals(expectedOutputString.outputString, ReplaceString.ReplaceString(inputParamsList)[0].outputString);

    }
}