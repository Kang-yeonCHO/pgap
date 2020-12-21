cwlVersion: v1.0
label: "final_bact_asn"

class: CommandLineTool
requirements:
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - entryname: cleaned-annotation.mft
        entry: ${var blob = '# cleaned-annotation.mft created for final_bact_asn from input annotation Array of Files\n'; for (var i = 0; i < inputs.annotation.length; i++) { blob += inputs.annotation[i].path + '\n'; } return blob; }

baseCommand: final_bact_asn
inputs:
  annotation: 
    type: File[]
  annotation_mft:
    type: string
    default: cleaned-annotation.mft
    inputBinding:
      prefix: -annotation
  asn_cache: # sequence_cache
    type: Directory
    inputBinding:
      prefix: -asn-cache
  gc_assembly:
    type: File
    inputBinding:
      prefix: -gc-assembly
  master_desc:
    type: File
    inputBinding:
      prefix: -master-desc
  outfull_name:
    type: string
    default: annot-full.ent
    inputBinding:
      prefix: -outfull
  it:
    type: boolean?
    inputBinding:
      prefix: -it
  submission_mode_genbank:
    type: boolean?
    inputBinding:
      prefix: -submission-mode-genbank
  nogenbank:
    type: boolean?
    inputBinding:
      prefix: -nogenbank
  order:
    type: File?
    inputBinding:
      prefix: -order
    

outputs:
  outfull:
    type: File
    outputBinding:
      glob: $(inputs.outfull_name)

  
  
