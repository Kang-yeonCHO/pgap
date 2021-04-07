cwlVersion: v1.2
label: "val_format"

class: Workflow
inputs:
    input: File
    inputMG: File
steps:
    testMG: 
        run: val_format.cwl
        in:
            input: inputMG
        out: [output]
    # test: 
        # run: val_format.cwl
        # in:
            # input: input
        # out: [output]
outputs:
    # output: 
        # type: File
        # outputSource: test/output
    outputMG: 
        type: File
        outputSource: testMG/output
    