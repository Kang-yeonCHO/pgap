cwlVersion: v1.2
label: "gencode2trnamodel"

class: Workflow
inputs:
    gencode: int
steps:
    test: 
        run: ../../gencode2trnamodel.cwl
        in:
            gencode: gencode
        out: [output]
outputs:
    output: 
        type: string?
        outputSource: test/output
    