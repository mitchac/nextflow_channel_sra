nextflow.preview.dsl=2

include {trimming} from './modules/trimming.nf'

Channel
    .fromSRA('SRR5352271',apiKey:'')                                    
    .set { ch_read_pairs }
workflow {
    trimming(ch_read_pairs)
}
