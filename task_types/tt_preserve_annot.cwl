cwlVersion: v1.2
class: CommandLineTool
baseCommand: preserve_annot
arguments: [ -nogenbank ]
inputs:
  asn_cache:
    type: Directory[]
    inputBinding:
      prefix: -asn-cache
      itemSeparator: ","
  gc_assembly:
    type: File?
    inputBinding:
        prefix: -gc-assembly
  input_annotation:
    type: File
    inputBinding:
        prefix: -input
  output_annotation:
    type: string
    default: annotation.asn
    inputBinding:
        prefix: -o
  rfam_amendments:
    type: File
    inputBinding:
        prefix: -rfam-amendments
  no_ncRNA:
    type: boolean
    inputBinding:
        prefix: -no-ncRNA
outputs:
  annotations:
    type: File
    outputBinding:
      glob: $(inputs.output_annotation)

   
