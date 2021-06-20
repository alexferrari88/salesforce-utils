@isTest
private class TestSplitString {
    @isTest static void TestSplitText() {
        String inputTestString = 'a;b;c;d';
        SplitString.SplitOutputStrings expectedOutput = new SplitString.SplitOutputStrings();
        expectedOutput.outputList = inputTestString.split(';');
        SplitString.SplitInputParams inputParams = new SplitString.SplitInputParams();
        inputParams.inputString = inputTestString;
        inputParams.separator = ';';
        List<SplitString.SplitInputParams> SplitInputParamsList = new List<SplitString.SplitInputParams>();
        SplitInputParamsList.add(inputParams);
        System.assertEquals(expectedOutput.outputList, SplitString.SplitString(SplitInputParamsList)[0].outputList);
    }

}