cwlVersion: v1.2
label: extract_gencoll_ids
# File: tt_extract_gencoll_ids.cwl
class: Workflow # task type
inputs:
    assemblies: File
outputs:
   gc_id_list: 
        type: File
        outputSource: extract_gencoll_ids/gc_id_list
steps:
    extract_gencoll_ids:
        run: ../progs/extract_gencoll_ids.cwl
        in: 
            assemblies: assemblies
            o: 
                default: gc_id.list
        out: [gc_id_list]
