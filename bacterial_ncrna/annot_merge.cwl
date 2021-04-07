cwlVersion: v1.2
label: "Post-process CMsearch annotations"
class: CommandLineTool

requirements:
  - class: InitialWorkDirRequirement
    listing:
      - entry: $(inputs.asn_cache)
        writable: False

#annot_merge -asn-cache sequence_cache -input-manifest annots.mft -output annots.asn -output-manifest annots.mft -unique
baseCommand: annot_merge
arguments: [ -unique, -nogenbank ]
inputs:
  asn_cache:
    type: Directory
    inputBinding:
      prefix: -asn-cache
  input:
    type: File
    inputBinding:
      prefix: -input
  output_name:
    type: string?
    default: "annots.asn"
    inputBinding:
      prefix: -output

outputs:
  annots:
    type: File
    outputBinding:
      glob: $(inputs.output_name)
