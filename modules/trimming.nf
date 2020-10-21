process trimming {

input:
tuple val(pair_id), file(reads)

output:

script:
"""
gunzip -f ${reads[1][0]}
"""
}
