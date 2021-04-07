cwlVersion: v1.2
label: "Run genomic CMsearch (Rfam rRNA), scatter"
class: CommandLineTool

requirements:
  - class: InitialWorkDirRequirement
    listing:
      - entry: $(inputs.asn_cache)
        writable: False
    
#gpx_qsubmit -asn-cache sequence_cache -ids-manifest seqids.mft
baseCommand: gpx_qsubmit
arguments: [ -nogenbank ]
inputs:
  asn_cache:
    type: Directory
    inputBinding:
      prefix: -asn-cache
  seqids:
    type: File
    inputBinding:
      prefix: -ids
  output:
    type: string?
    default: jobs.xml
    inputBinding:
      prefix: -output
outputs:
  jobs:
    type: File
    outputBinding:
      glob: $(inputs.output)

  
  
