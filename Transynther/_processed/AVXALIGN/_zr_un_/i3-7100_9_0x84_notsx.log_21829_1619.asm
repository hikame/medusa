.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rdi
push %rdx
lea addresses_A_ht+0x5676, %r14
nop
nop
nop
nop
and %r11, %r11
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x180c, %rbp
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rbp)
sub $36049, %r14
lea addresses_normal_ht+0xd1b8, %r11
clflush (%r11)
dec %r13
mov (%r11), %rbp
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x62c, %r13
add %r10, %r10
mov (%r13), %edi
nop
nop
cmp $40666, %r14
lea addresses_normal_ht+0x5bd8, %rdi
nop
nop
nop
sub $65474, %r13
movl $0x61626364, (%rdi)
nop
nop
nop
sub $61395, %r13
pop %rdx
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rsi

// Faulty Load
mov $0xc2c, %r10
nop
nop
nop
nop
nop
and $7652, %r12
vmovntdqa (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 6653, '80': 14959, '08': 217}
80 00 00 00 00 80 80 80 80 80 80 80 80 80 80 00 80 00 08 80 80 80 00 00 80 80 80 00 80 00 80 00 80 80 00 00 80 00 00 00 80 80 00 00 80 80 80 80 80 00 80 80 80 00 80 80 00 80 00 80 00 80 80 80 80 80 00 80 80 80 80 80 00 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 00 00 00 80 00 80 00 80 00 80 80 80 80 00 00 80 80 80 00 80 00 80 80 80 00 80 00 00 00 80 00 80 80 00 80 00 80 00 00 00 80 80 80 80 80 80 80 80 00 80 00 00 80 00 00 80 80 80 00 00 80 80 80 80 80 80 00 00 00 80 80 00 00 80 80 80 80 80 80 80 80 80 80 00 80 80 00 80 80 00 00 80 80 00 00 80 80 80 80 80 00 80 80 80 80 80 00 00 80 80 80 80 00 80 80 00 00 80 00 00 80 80 08 80 80 80 00 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 80 00 80 00 80 80 00 80 00 80 80 00 80 00 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 80 80 00 00 00 80 00 80 80 00 00 80 80 80 80 00 80 80 80 00 80 00 80 80 00 80 00 80 00 00 80 80 80 00 00 80 80 00 80 80 80 80 80 80 80 00 80 00 80 80 80 80 80 80 80 80 00 00 00 80 80 80 00 00 00 80 00 80 80 00 80 00 00 80 80 00 80 80 00 80 00 80 80 80 80 00 00 80 80 08 80 00 80 80 80 00 80 80 80 80 00 80 00 80 00 80 80 80 80 80 80 80 80 80 80 00 80 80 80 80 00 80 00 80 80 80 00 00 00 00 80 80 80 80 00 00 80 80 00 80 80 00 00 00 80 00 80 00 80 80 80 00 80 80 80 80 00 00 80 80 80 80 80 80 80 80 00 80 80 00 80 80 80 00 80 00 00 80 00 80 00 80 80 80 80 80 80 80 00 80 00 80 80 80 00 00 80 00 80 80 80 00 80 80 80 80 80 80 00 80 00 00 80 00 80 00 80 80 80 80 00 00 00 00 00 80 80 80 00 00 00 80 80 80 80 80 80 00 80 00 80 80 00 80 00 80 00 00 80 00 80 00 80 80 80 80 80 00 00 08 00 80 80 80 80 80 80 80 80 80 80 80 00 80 80 00 80 80 80 00 00 00 80 80 80 80 00 80 00 80 80 80 00 00 80 00 80 80 80 00 80 00 80 80 00 80 80 00 80 80 00 00 80 00 80 00 80 80 80 80 80 80 80 80 80 80 00 00 80 08 00 80 00 80 00 80 80 80 80 00 00 00 00 80 00 00 00 80 80 00 80 80 80 80 80 80 80 80 00 80 80 80 80 80 80 00 80 00 08 00 80 00 00 80 80 00 80 80 00 80 80 80 80 80 00 80 80 80 80 00 00 80 80 80 00 80 00 80 80 80 80 80 80 80 00 00 00 80 80 00 80 00 80 80 80 80 80 80 80 80 00 80 00 80 80 80 80 80 00 00 00 80 80 80 80 80 80 80 80 80 80 80 00 80 00 80 80 00 80 80 80 80 00 80 80 80 80 00 00 80 80 80 80 80 80 00 80 80 80 00 00 80 80 00 80 80 80 80 00 00 00 80 80 00 00 80 80 00 80 00 80 80 80 80 80 80 00 80 80 80 80 80 80 80 80 80 00 80 00 80 80 80 00 80 80 00 80 08 80 00 80 00 00 80 80 00 80 80 80 80 80 80 00 80 00 80 80 80 00 00 80 00 80 80 80 80 00 80 80 00 00 80 00 80 80 80 80 00 00 80 80 00 00 00 00 00 80 80 80 00 00 80 00 80 00 80 80 80 80 00 80 80 80 80 00 80 08 80 80 80 80 00 80 80 00 80 80 80 80 80 80 00 00 00 80 80 00 00 00 80 00 80 00 80 80 00 80 80 00 80 80 80 00 80 80 80 80 00 00 80 00 80 00 00 80 80 80 80 80 80 80 80 00 00 80 80 00 00 80 80 80 80 80 80 00 00 00 80 00 80 00 80 00 80 80 80 80 00 80 80 80 80 00 80 80 00 80 80 80 80 00 80 80 80 80 80 80 00 00 00 80 00 80 80 80 80 80 80 08 00 80 00 80 80 00 00 80 00 00 80 00 80 00 80 00 80 00 80 80 80 80 80 80 00 80 80 00 80 00 80 80 80 80
*/
