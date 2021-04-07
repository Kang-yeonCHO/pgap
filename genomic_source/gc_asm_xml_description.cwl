cwlVersion: v1.2
label: "Extract Assembly Information II"
class: CommandLineTool

#gc_asm_xml_description -i gencoll.asn -o assembly.report.xml
baseCommand: gc_asm_xml_description
inputs:
  asnfile:
    type: File
    inputBinding:
      prefix: -i
  outfile:
    type: string?
    default: assembly.report.xml
    inputBinding:
      prefix: -o
      
outputs:
  stats_report:
    type: File
    outputBinding:
      glob: $(inputs.outfile)
