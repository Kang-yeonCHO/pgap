cwlVersion: v1.2
label: "kmer_build_tree"

class: CommandLineTool
baseCommand:     kmer_build_tree 
inputs:
    distances: 
        type: File
        inputBinding:
            prefix: -distances
    obin:  
        type: string?
        inputBinding:
            prefix: -obin
    otext:  
        type: string?
        inputBinding:
            prefix: -otext
    sort:  
        type: string?
        inputBinding:
            prefix: -sort
    no_merge:  
        type: boolean
        inputBinding:
            prefix: -no-merge
    skip_markup:  
        type: boolean
        inputBinding:
            prefix: -skip-markup
outputs:
    tree:
        type: File
        outputBinding:
            glob: $(inputs.otext)


