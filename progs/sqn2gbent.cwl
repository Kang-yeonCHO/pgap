cwlVersion: v1.2
label: "sqn2gbent"

class: CommandLineTool
baseCommand: sqn2gbent
inputs:
  input:
    type: File
    inputBinding:
      prefix: -input
  out_name:
    type: string
    default: annot-gb.ent
    inputBinding:
      prefix: -out
  it:
    type: boolean?
    inputBinding:
      prefix: -it
outputs:
  output:
    type: File
    outputBinding:
      glob: $(inputs.out_name)

  
  
