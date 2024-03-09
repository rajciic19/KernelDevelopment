
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	09013103          	ld	sp,144(sp) # 80006090 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	325020ef          	jal	ra,80002b40 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <SuperTrap>:

.align 4
.global SuperTrap
.type SuperTrap, @function
SuperTrap:
    j ecall
    80001000:	0280006f          	j	80001028 <ecall>
    j timer
    80001004:	1240006f          	j	80001128 <timer>
    sret
    80001008:	10200073          	sret
    sret
    8000100c:	10200073          	sret
    sret
    80001010:	10200073          	sret
    sret
    80001014:	10200073          	sret
    sret
    80001018:	10200073          	sret
    sret
    8000101c:	10200073          	sret
    sret
    80001020:	10200073          	sret
    j console
    80001024:	2040006f          	j	80001228 <console>

0000000080001028 <ecall>:

ecall:
    addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000102c:	00113423          	sd	ra,8(sp)
    80001030:	00213823          	sd	sp,16(sp)
    80001034:	00313c23          	sd	gp,24(sp)
    80001038:	02413023          	sd	tp,32(sp)
    8000103c:	02513423          	sd	t0,40(sp)
    80001040:	02613823          	sd	t1,48(sp)
    80001044:	02713c23          	sd	t2,56(sp)
    80001048:	04813023          	sd	s0,64(sp)
    8000104c:	04913423          	sd	s1,72(sp)
    80001050:	04b13c23          	sd	a1,88(sp)
    80001054:	06c13023          	sd	a2,96(sp)
    80001058:	06d13423          	sd	a3,104(sp)
    8000105c:	06e13823          	sd	a4,112(sp)
    80001060:	06f13c23          	sd	a5,120(sp)
    80001064:	09013023          	sd	a6,128(sp)
    80001068:	09113423          	sd	a7,136(sp)
    8000106c:	09213823          	sd	s2,144(sp)
    80001070:	09313c23          	sd	s3,152(sp)
    80001074:	0b413023          	sd	s4,160(sp)
    80001078:	0b513423          	sd	s5,168(sp)
    8000107c:	0b613823          	sd	s6,176(sp)
    80001080:	0b713c23          	sd	s7,184(sp)
    80001084:	0d813023          	sd	s8,192(sp)
    80001088:	0d913423          	sd	s9,200(sp)
    8000108c:	0da13823          	sd	s10,208(sp)
    80001090:	0db13c23          	sd	s11,216(sp)
    80001094:	0fc13023          	sd	t3,224(sp)
    80001098:	0fd13423          	sd	t4,232(sp)
    8000109c:	0fe13823          	sd	t5,240(sp)
    800010a0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    800010a4:	619000ef          	jal	ra,80001ebc <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800010a8:	00813083          	ld	ra,8(sp)
    800010ac:	01013103          	ld	sp,16(sp)
    800010b0:	01813183          	ld	gp,24(sp)
    800010b4:	02013203          	ld	tp,32(sp)
    800010b8:	02813283          	ld	t0,40(sp)
    800010bc:	03013303          	ld	t1,48(sp)
    800010c0:	03813383          	ld	t2,56(sp)
    800010c4:	04013403          	ld	s0,64(sp)
    800010c8:	04813483          	ld	s1,72(sp)
    800010cc:	05813583          	ld	a1,88(sp)
    800010d0:	06013603          	ld	a2,96(sp)
    800010d4:	06813683          	ld	a3,104(sp)
    800010d8:	07013703          	ld	a4,112(sp)
    800010dc:	07813783          	ld	a5,120(sp)
    800010e0:	08013803          	ld	a6,128(sp)
    800010e4:	08813883          	ld	a7,136(sp)
    800010e8:	09013903          	ld	s2,144(sp)
    800010ec:	09813983          	ld	s3,152(sp)
    800010f0:	0a013a03          	ld	s4,160(sp)
    800010f4:	0a813a83          	ld	s5,168(sp)
    800010f8:	0b013b03          	ld	s6,176(sp)
    800010fc:	0b813b83          	ld	s7,184(sp)
    80001100:	0c013c03          	ld	s8,192(sp)
    80001104:	0c813c83          	ld	s9,200(sp)
    80001108:	0d013d03          	ld	s10,208(sp)
    8000110c:	0d813d83          	ld	s11,216(sp)
    80001110:	0e013e03          	ld	t3,224(sp)
    80001114:	0e813e83          	ld	t4,232(sp)
    80001118:	0f013f03          	ld	t5,240(sp)
    8000111c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001120:	10010113          	addi	sp,sp,256

    sret
    80001124:	10200073          	sret

0000000080001128 <timer>:

timer:
    addi sp, sp, -256
    80001128:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000112c:	00113423          	sd	ra,8(sp)
    80001130:	00213823          	sd	sp,16(sp)
    80001134:	00313c23          	sd	gp,24(sp)
    80001138:	02413023          	sd	tp,32(sp)
    8000113c:	02513423          	sd	t0,40(sp)
    80001140:	02613823          	sd	t1,48(sp)
    80001144:	02713c23          	sd	t2,56(sp)
    80001148:	04813023          	sd	s0,64(sp)
    8000114c:	04913423          	sd	s1,72(sp)
    80001150:	04b13c23          	sd	a1,88(sp)
    80001154:	06c13023          	sd	a2,96(sp)
    80001158:	06d13423          	sd	a3,104(sp)
    8000115c:	06e13823          	sd	a4,112(sp)
    80001160:	06f13c23          	sd	a5,120(sp)
    80001164:	09013023          	sd	a6,128(sp)
    80001168:	09113423          	sd	a7,136(sp)
    8000116c:	09213823          	sd	s2,144(sp)
    80001170:	09313c23          	sd	s3,152(sp)
    80001174:	0b413023          	sd	s4,160(sp)
    80001178:	0b513423          	sd	s5,168(sp)
    8000117c:	0b613823          	sd	s6,176(sp)
    80001180:	0b713c23          	sd	s7,184(sp)
    80001184:	0d813023          	sd	s8,192(sp)
    80001188:	0d913423          	sd	s9,200(sp)
    8000118c:	0da13823          	sd	s10,208(sp)
    80001190:	0db13c23          	sd	s11,216(sp)
    80001194:	0fc13023          	sd	t3,224(sp)
    80001198:	0fd13423          	sd	t4,232(sp)
    8000119c:	0fe13823          	sd	t5,240(sp)
    800011a0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv9timerTrapEv
    800011a4:	6f9000ef          	jal	ra,8000209c <_ZN5Riscv9timerTrapEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011a8:	00813083          	ld	ra,8(sp)
    800011ac:	01013103          	ld	sp,16(sp)
    800011b0:	01813183          	ld	gp,24(sp)
    800011b4:	02013203          	ld	tp,32(sp)
    800011b8:	02813283          	ld	t0,40(sp)
    800011bc:	03013303          	ld	t1,48(sp)
    800011c0:	03813383          	ld	t2,56(sp)
    800011c4:	04013403          	ld	s0,64(sp)
    800011c8:	04813483          	ld	s1,72(sp)
    800011cc:	05813583          	ld	a1,88(sp)
    800011d0:	06013603          	ld	a2,96(sp)
    800011d4:	06813683          	ld	a3,104(sp)
    800011d8:	07013703          	ld	a4,112(sp)
    800011dc:	07813783          	ld	a5,120(sp)
    800011e0:	08013803          	ld	a6,128(sp)
    800011e4:	08813883          	ld	a7,136(sp)
    800011e8:	09013903          	ld	s2,144(sp)
    800011ec:	09813983          	ld	s3,152(sp)
    800011f0:	0a013a03          	ld	s4,160(sp)
    800011f4:	0a813a83          	ld	s5,168(sp)
    800011f8:	0b013b03          	ld	s6,176(sp)
    800011fc:	0b813b83          	ld	s7,184(sp)
    80001200:	0c013c03          	ld	s8,192(sp)
    80001204:	0c813c83          	ld	s9,200(sp)
    80001208:	0d013d03          	ld	s10,208(sp)
    8000120c:	0d813d83          	ld	s11,216(sp)
    80001210:	0e013e03          	ld	t3,224(sp)
    80001214:	0e813e83          	ld	t4,232(sp)
    80001218:	0f013f03          	ld	t5,240(sp)
    8000121c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001220:	10010113          	addi	sp,sp,256

    sret
    80001224:	10200073          	sret

0000000080001228 <console>:

console:
    addi sp, sp, -256
    80001228:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000122c:	00113423          	sd	ra,8(sp)
    80001230:	00213823          	sd	sp,16(sp)
    80001234:	00313c23          	sd	gp,24(sp)
    80001238:	02413023          	sd	tp,32(sp)
    8000123c:	02513423          	sd	t0,40(sp)
    80001240:	02613823          	sd	t1,48(sp)
    80001244:	02713c23          	sd	t2,56(sp)
    80001248:	04813023          	sd	s0,64(sp)
    8000124c:	04913423          	sd	s1,72(sp)
    80001250:	04b13c23          	sd	a1,88(sp)
    80001254:	06c13023          	sd	a2,96(sp)
    80001258:	06d13423          	sd	a3,104(sp)
    8000125c:	06e13823          	sd	a4,112(sp)
    80001260:	06f13c23          	sd	a5,120(sp)
    80001264:	09013023          	sd	a6,128(sp)
    80001268:	09113423          	sd	a7,136(sp)
    8000126c:	09213823          	sd	s2,144(sp)
    80001270:	09313c23          	sd	s3,152(sp)
    80001274:	0b413023          	sd	s4,160(sp)
    80001278:	0b513423          	sd	s5,168(sp)
    8000127c:	0b613823          	sd	s6,176(sp)
    80001280:	0b713c23          	sd	s7,184(sp)
    80001284:	0d813023          	sd	s8,192(sp)
    80001288:	0d913423          	sd	s9,200(sp)
    8000128c:	0da13823          	sd	s10,208(sp)
    80001290:	0db13c23          	sd	s11,216(sp)
    80001294:	0fc13023          	sd	t3,224(sp)
    80001298:	0fd13423          	sd	t4,232(sp)
    8000129c:	0fe13823          	sd	t5,240(sp)
    800012a0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv11consoleTrapEv
    800012a4:	619000ef          	jal	ra,800020bc <_ZN5Riscv11consoleTrapEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800012a8:	00813083          	ld	ra,8(sp)
    800012ac:	01013103          	ld	sp,16(sp)
    800012b0:	01813183          	ld	gp,24(sp)
    800012b4:	02013203          	ld	tp,32(sp)
    800012b8:	02813283          	ld	t0,40(sp)
    800012bc:	03013303          	ld	t1,48(sp)
    800012c0:	03813383          	ld	t2,56(sp)
    800012c4:	04013403          	ld	s0,64(sp)
    800012c8:	04813483          	ld	s1,72(sp)
    800012cc:	05813583          	ld	a1,88(sp)
    800012d0:	06013603          	ld	a2,96(sp)
    800012d4:	06813683          	ld	a3,104(sp)
    800012d8:	07013703          	ld	a4,112(sp)
    800012dc:	07813783          	ld	a5,120(sp)
    800012e0:	08013803          	ld	a6,128(sp)
    800012e4:	08813883          	ld	a7,136(sp)
    800012e8:	09013903          	ld	s2,144(sp)
    800012ec:	09813983          	ld	s3,152(sp)
    800012f0:	0a013a03          	ld	s4,160(sp)
    800012f4:	0a813a83          	ld	s5,168(sp)
    800012f8:	0b013b03          	ld	s6,176(sp)
    800012fc:	0b813b83          	ld	s7,184(sp)
    80001300:	0c013c03          	ld	s8,192(sp)
    80001304:	0c813c83          	ld	s9,200(sp)
    80001308:	0d013d03          	ld	s10,208(sp)
    8000130c:	0d813d83          	ld	s11,216(sp)
    80001310:	0e013e03          	ld	t3,224(sp)
    80001314:	0e813e83          	ld	t4,232(sp)
    80001318:	0f013f03          	ld	t5,240(sp)
    8000131c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001320:	10010113          	addi	sp,sp,256

    80001324:	10200073          	sret

0000000080001328 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001328:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000132c:	00b29a63          	bne	t0,a1,80001340 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001330:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001334:	fe029ae3          	bnez	t0,80001328 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001338:	00000513          	li	a0,0
    jr ra                  # Return.
    8000133c:	00008067          	ret

0000000080001340 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001340:	00100513          	li	a0,1
    80001344:	00008067          	ret

0000000080001348 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"


void* mem_alloc(size_t size){
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00813423          	sd	s0,8(sp)
    80001350:	01010413          	addi	s0,sp,16
    uint64 ret;

    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    80001354:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x01");
    80001358:	00100513          	li	a0,1

    __asm__ volatile ("ecall");
    8000135c:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    80001360:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001364:	00813403          	ld	s0,8(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret

0000000080001370 <_Z8mem_freePv>:

int mem_free(void * adr) {
    80001370:	ff010113          	addi	sp,sp,-16
    80001374:	00813423          	sd	s0,8(sp)
    80001378:	01010413          	addi	s0,sp,16
    uint64 ret;

    __asm__ volatile ("mv a1,%[adr]"::[adr]"r"(adr));
    8000137c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x02");
    80001380:	00200513          	li	a0,2

    __asm__ volatile ("ecall");
    80001384:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    80001388:	00050513          	mv	a0,a0

    return ret;
}
    8000138c:	0005051b          	sext.w	a0,a0
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *h, void (*b)(void *), void *a) {
    8000139c:	fd010113          	addi	sp,sp,-48
    800013a0:	02113423          	sd	ra,40(sp)
    800013a4:	02813023          	sd	s0,32(sp)
    800013a8:	00913c23          	sd	s1,24(sp)
    800013ac:	01213823          	sd	s2,16(sp)
    800013b0:	01313423          	sd	s3,8(sp)
    800013b4:	03010413          	addi	s0,sp,48
    800013b8:	00050493          	mv	s1,a0
    800013bc:	00058913          	mv	s2,a1
    800013c0:	00060993          	mv	s3,a2
    //uint64* stack = (uint64*) __mem_alloc(DEFAULT_STACK_SIZE);
    char* stack = (char*) mem_alloc(DEFAULT_STACK_SIZE);
    800013c4:	00014537          	lui	a0,0x14
    800013c8:	00000097          	auipc	ra,0x0
    800013cc:	f80080e7          	jalr	-128(ra) # 80001348 <_Z9mem_allocm>
    uint64 ret;
    thread_t *handle = h;
    uint64* body = (uint64*) b;
    void* arg = a;

    if(stack == nullptr) return -1;
    800013d0:	04050663          	beqz	a0,8000141c <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    stack+=DEFAULT_STACK_SIZE - 1;
    800013d4:	000147b7          	lui	a5,0x14
    800013d8:	fff78793          	addi	a5,a5,-1 # 13fff <_entry-0x7ffec001>
    800013dc:	00f507b3          	add	a5,a0,a5

    __asm__ volatile("mv a7, %[stack]"::[stack]"r"(stack));
    800013e0:	00078893          	mv	a7,a5
    __asm__ volatile("mv a6, %[arg]"::[arg]"r"(arg));
    800013e4:	00098813          	mv	a6,s3
    __asm__ volatile("mv a2, %[body]"::[body]"r"(body));
    800013e8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    800013ec:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x11");
    800013f0:	01100513          	li	a0,17

    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    800013f8:	00050513          	mv	a0,a0
    return ret;
    800013fc:	0005051b          	sext.w	a0,a0
}
    80001400:	02813083          	ld	ra,40(sp)
    80001404:	02013403          	ld	s0,32(sp)
    80001408:	01813483          	ld	s1,24(sp)
    8000140c:	01013903          	ld	s2,16(sp)
    80001410:	00813983          	ld	s3,8(sp)
    80001414:	03010113          	addi	sp,sp,48
    80001418:	00008067          	ret
    if(stack == nullptr) return -1;
    8000141c:	fff00513          	li	a0,-1
    80001420:	fe1ff06f          	j	80001400 <_Z13thread_createPP3TCBPFvPvES2_+0x64>

0000000080001424 <_Z11thread_exitv>:

int thread_exit() {
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00813423          	sd	s0,8(sp)
    8000142c:	01010413          	addi	s0,sp,16
    uint64 ret;

    __asm__ volatile("li a0, 0x12");
    80001430:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001434:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    80001438:	00050513          	mv	a0,a0
    return ret;
}
    8000143c:	0005051b          	sext.w	a0,a0
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001458:	01300513          	li	a0,19

    __asm__ volatile("ecall");
    8000145c:	00000073          	ecall
}
    80001460:	00813403          	ld	s0,8(sp)
    80001464:	01010113          	addi	sp,sp,16
    80001468:	00008067          	ret

000000008000146c <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle){
    8000146c:	ff010113          	addi	sp,sp,-16
    80001470:	00813423          	sd	s0,8(sp)
    80001474:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    80001478:	00050593          	mv	a1,a0

    __asm__ volatile("li a0, 0x14");
    8000147c:	01400513          	li	a0,20

    __asm__ volatile("ecall");
    80001480:	00000073          	ecall
}
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_Z8sem_openPP7Semaforj>:

int sem_open(sem_t* handle, unsigned int init){
    80001490:	ff010113          	addi	sp,sp,-16
    80001494:	00813423          	sd	s0,8(sp)
    80001498:	01010413          	addi	s0,sp,16
    uint64 ret;

    __asm__ volatile("mv a7, %[init]"::[init]"r"(init));
    8000149c:	00058893          	mv	a7,a1
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    800014a0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800014a4:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    800014a8:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    800014ac:	00050513          	mv	a0,a0
    return ret;
}
    800014b0:	0005051b          	sext.w	a0,a0
    800014b4:	00813403          	ld	s0,8(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <_Z9sem_closeP7Semafor>:

int sem_close(sem_t handle){
    800014c0:	ff010113          	addi	sp,sp,-16
    800014c4:	00813423          	sd	s0,8(sp)
    800014c8:	01010413          	addi	s0,sp,16
    uint64 ret;

    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    800014cc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800014d0:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800014d4:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    800014d8:	00050513          	mv	a0,a0

    return ret;
}
    800014dc:	0005051b          	sext.w	a0,a0
    800014e0:	00813403          	ld	s0,8(sp)
    800014e4:	01010113          	addi	sp,sp,16
    800014e8:	00008067          	ret

00000000800014ec <_Z10sem_signalP7Semafor>:

int sem_signal(sem_t id){
    800014ec:	ff010113          	addi	sp,sp,-16
    800014f0:	00813423          	sd	s0,8(sp)
    800014f4:	01010413          	addi	s0,sp,16
    uint64 ret;

    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    800014f8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800014fc:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001500:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    80001504:	00050513          	mv	a0,a0
    return ret;
}
    80001508:	0005051b          	sext.w	a0,a0
    8000150c:	00813403          	ld	s0,8(sp)
    80001510:	01010113          	addi	sp,sp,16
    80001514:	00008067          	ret

0000000080001518 <_Z8sem_waitP7Semafor>:
int sem_wait(sem_t id){
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00813423          	sd	s0,8(sp)
    80001520:	01010413          	addi	s0,sp,16
    uint64 ret;

    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    80001524:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001528:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    8000152c:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    80001530:	00050513          	mv	a0,a0
    return ret;
}
    80001534:	0005051b          	sext.w	a0,a0
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_Z4getcv>:


char getc() {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00813423          	sd	s0,8(sp)
    8000154c:	01010413          	addi	s0,sp,16
    //return __getc();
    char ret;
    __asm__ volatile("li a0, 0x41");
    80001550:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001554:	00000073          	ecall

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    80001558:	00050513          	mv	a0,a0
    return ret;
}
    8000155c:	0ff57513          	andi	a0,a0,255
    80001560:	00813403          	ld	s0,8(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_Z4putcc>:

void putc(char c) {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00813423          	sd	s0,8(sp)
    80001574:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %[c]"::[c]"r"(c));
    80001578:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000157c:	04200513          	li	a0,66

    __asm__ volatile("ecall");
    80001580:	00000073          	ecall
    //__putc(c);
}
    80001584:	00813403          	ld	s0,8(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_ZN7SemaforC1Ei>:
        thread->done=0;
        Scheduler::put(thread);
    }
}

Semafor::Semafor(int val) {
    80001590:	ff010113          	addi	sp,sp,-16
    80001594:	00813423          	sd	s0,8(sp)
    80001598:	01010413          	addi	s0,sp,16
    this->head=nullptr;
    8000159c:	00053423          	sd	zero,8(a0) # 14008 <_entry-0x7ffebff8>
    this->tail=nullptr;
    800015a0:	00053823          	sd	zero,16(a0)
    this->value=val;
    800015a4:	00b52023          	sw	a1,0(a0)
}
    800015a8:	00813403          	ld	s0,8(sp)
    800015ac:	01010113          	addi	sp,sp,16
    800015b0:	00008067          	ret

00000000800015b4 <_ZN7SemafornwEm>:

void *Semafor::operator new(size_t size) {
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	02010413          	addi	s0,sp,32
    800015c8:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance().mem_alloc(size);
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	080080e7          	jalr	128(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    800015d4:	00048593          	mv	a1,s1
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	0b4080e7          	jalr	180(ra) # 8000268c <_ZN15MemoryAllocator9mem_allocEm>
}
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	00813483          	ld	s1,8(sp)
    800015ec:	02010113          	addi	sp,sp,32
    800015f0:	00008067          	ret

00000000800015f4 <_ZN7Semafor6createEi>:
Semafor *Semafor::create(int val) {
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	01213023          	sd	s2,0(sp)
    80001608:	02010413          	addi	s0,sp,32
    8000160c:	00050913          	mv	s2,a0
    Semafor* sem = new Semafor(val);
    80001610:	01800513          	li	a0,24
    80001614:	00000097          	auipc	ra,0x0
    80001618:	fa0080e7          	jalr	-96(ra) # 800015b4 <_ZN7SemafornwEm>
    8000161c:	00050493          	mv	s1,a0
    80001620:	00090593          	mv	a1,s2
    80001624:	00000097          	auipc	ra,0x0
    80001628:	f6c080e7          	jalr	-148(ra) # 80001590 <_ZN7SemaforC1Ei>
    sem->head=nullptr;
    8000162c:	0004b423          	sd	zero,8(s1)
    sem->tail=nullptr;
    80001630:	0004b823          	sd	zero,16(s1)
}
    80001634:	00048513          	mv	a0,s1
    80001638:	01813083          	ld	ra,24(sp)
    8000163c:	01013403          	ld	s0,16(sp)
    80001640:	00813483          	ld	s1,8(sp)
    80001644:	00013903          	ld	s2,0(sp)
    80001648:	02010113          	addi	sp,sp,32
    8000164c:	00008067          	ret

0000000080001650 <_ZN7SemafordlEPv>:

void Semafor::operator delete(void *ptr) {
    80001650:	fe010113          	addi	sp,sp,-32
    80001654:	00113c23          	sd	ra,24(sp)
    80001658:	00813823          	sd	s0,16(sp)
    8000165c:	00913423          	sd	s1,8(sp)
    80001660:	02010413          	addi	s0,sp,32
    80001664:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().mem_free(ptr);
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	fe4080e7          	jalr	-28(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    80001670:	00048593          	mv	a1,s1
    80001674:	00001097          	auipc	ra,0x1
    80001678:	168080e7          	jalr	360(ra) # 800027dc <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000167c:	01813083          	ld	ra,24(sp)
    80001680:	01013403          	ld	s0,16(sp)
    80001684:	00813483          	ld	s1,8(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_ZN5BlocknwEm>:

void *Block::operator new(size_t size) {
    80001690:	fe010113          	addi	sp,sp,-32
    80001694:	00113c23          	sd	ra,24(sp)
    80001698:	00813823          	sd	s0,16(sp)
    8000169c:	00913423          	sd	s1,8(sp)
    800016a0:	02010413          	addi	s0,sp,32
    800016a4:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance().mem_alloc(size);
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	fa4080e7          	jalr	-92(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    800016b0:	00048593          	mv	a1,s1
    800016b4:	00001097          	auipc	ra,0x1
    800016b8:	fd8080e7          	jalr	-40(ra) # 8000268c <_ZN15MemoryAllocator9mem_allocEm>
}
    800016bc:	01813083          	ld	ra,24(sp)
    800016c0:	01013403          	ld	s0,16(sp)
    800016c4:	00813483          	ld	s1,8(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_ZN7Semafor4waitEPS_>:
    if(--sem->value<0)
    800016d0:	00052783          	lw	a5,0(a0)
    800016d4:	fff7879b          	addiw	a5,a5,-1
    800016d8:	00f52023          	sw	a5,0(a0)
    800016dc:	02079713          	slli	a4,a5,0x20
    800016e0:	00074463          	bltz	a4,800016e8 <_ZN7Semafor4waitEPS_+0x18>
    800016e4:	00008067          	ret
void Semafor::wait(Semafor * sem) {
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	02010413          	addi	s0,sp,32
    800016fc:	00050493          	mv	s1,a0
        Block* temp = new Block(TCB::running, nullptr);
    80001700:	01000513          	li	a0,16
    80001704:	00000097          	auipc	ra,0x0
    80001708:	f8c080e7          	jalr	-116(ra) # 80001690 <_ZN5BlocknwEm>
    8000170c:	00005797          	auipc	a5,0x5
    80001710:	99c7b783          	ld	a5,-1636(a5) # 800060a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001714:	0007b783          	ld	a5,0(a5)
struct Block{
    TCB* thread;
    Block* next;

    Block(TCB* t, Block* n){
        thread = t;
    80001718:	00f53023          	sd	a5,0(a0)
        next = n;
    8000171c:	00053423          	sd	zero,8(a0)
        if(sem->head==nullptr) sem->head=temp;
    80001720:	0084b783          	ld	a5,8(s1)
    80001724:	04078063          	beqz	a5,80001764 <_ZN7Semafor4waitEPS_+0x94>
        else sem->tail->next=temp;
    80001728:	0104b783          	ld	a5,16(s1)
    8000172c:	00a7b423          	sd	a0,8(a5)
        sem->tail=temp;
    80001730:	00a4b823          	sd	a0,16(s1)
        TCB::running->setDone();
    80001734:	00005797          	auipc	a5,0x5
    80001738:	9747b783          	ld	a5,-1676(a5) # 800060a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000173c:	0007b783          	ld	a5,0(a5)

    static void idleThread(void* arg);

    static void threadWrapper();

    void setDone() { done=1;}
    80001740:	00100713          	li	a4,1
    80001744:	02e78c23          	sb	a4,56(a5)
        TCB::dispatch();
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	a90080e7          	jalr	-1392(ra) # 800021d8 <_ZN3TCB8dispatchEv>
}
    80001750:	01813083          	ld	ra,24(sp)
    80001754:	01013403          	ld	s0,16(sp)
    80001758:	00813483          	ld	s1,8(sp)
    8000175c:	02010113          	addi	sp,sp,32
    80001760:	00008067          	ret
        if(sem->head==nullptr) sem->head=temp;
    80001764:	00a4b423          	sd	a0,8(s1)
    80001768:	fc9ff06f          	j	80001730 <_ZN7Semafor4waitEPS_+0x60>

000000008000176c <_ZN5BlockdlEPv>:

void Block::operator delete(void *ptr) {
    8000176c:	fe010113          	addi	sp,sp,-32
    80001770:	00113c23          	sd	ra,24(sp)
    80001774:	00813823          	sd	s0,16(sp)
    80001778:	00913423          	sd	s1,8(sp)
    8000177c:	02010413          	addi	s0,sp,32
    80001780:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().mem_free(ptr);
    80001784:	00001097          	auipc	ra,0x1
    80001788:	ec8080e7          	jalr	-312(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    8000178c:	00048593          	mv	a1,s1
    80001790:	00001097          	auipc	ra,0x1
    80001794:	04c080e7          	jalr	76(ra) # 800027dc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001798:	01813083          	ld	ra,24(sp)
    8000179c:	01013403          	ld	s0,16(sp)
    800017a0:	00813483          	ld	s1,8(sp)
    800017a4:	02010113          	addi	sp,sp,32
    800017a8:	00008067          	ret

00000000800017ac <_ZN7Semafor6signalEPS_>:
    if(sem->value++<0){
    800017ac:	00052783          	lw	a5,0(a0)
    800017b0:	0017871b          	addiw	a4,a5,1
    800017b4:	00e52023          	sw	a4,0(a0)
    800017b8:	0007c463          	bltz	a5,800017c0 <_ZN7Semafor6signalEPS_+0x14>
    800017bc:	00008067          	ret
void Semafor::signal(Semafor *sem) {
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	01213023          	sd	s2,0(sp)
    800017d4:	02010413          	addi	s0,sp,32
    800017d8:	00050493          	mv	s1,a0
        if(sem->head==nullptr) return;
    800017dc:	00853503          	ld	a0,8(a0)
    800017e0:	02050863          	beqz	a0,80001810 <_ZN7Semafor6signalEPS_+0x64>
        TCB* thread=sem->head->thread;
    800017e4:	00053903          	ld	s2,0(a0)
        sem->head=sem->head->next;
    800017e8:	00853783          	ld	a5,8(a0)
    800017ec:	00f4b423          	sd	a5,8(s1)
        delete temp;
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	f7c080e7          	jalr	-132(ra) # 8000176c <_ZN5BlockdlEPv>
        if(!sem->head) sem->tail=sem->head;
    800017f8:	0084b783          	ld	a5,8(s1)
    800017fc:	02078663          	beqz	a5,80001828 <_ZN7Semafor6signalEPS_+0x7c>
        thread->done=0;
    80001800:	02090c23          	sb	zero,56(s2)
        Scheduler::put(thread);
    80001804:	00090513          	mv	a0,s2
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	cf8080e7          	jalr	-776(ra) # 80002500 <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	00013903          	ld	s2,0(sp)
    80001820:	02010113          	addi	sp,sp,32
    80001824:	00008067          	ret
        if(!sem->head) sem->tail=sem->head;
    80001828:	00f4b823          	sd	a5,16(s1)
    8000182c:	fd5ff06f          	j	80001800 <_ZN7Semafor6signalEPS_+0x54>

0000000080001830 <_ZN7WorkerA11workerBodyAEPiii>:
        workerBodyA(mat,n,m);
    }
};


int WorkerA::workerBodyA(int* arg, int n, int m) {
    80001830:	fe010113          	addi	sp,sp,-32
    80001834:	00113c23          	sd	ra,24(sp)
    80001838:	00813823          	sd	s0,16(sp)
    8000183c:	00913423          	sd	s1,8(sp)
    80001840:	02010413          	addi	s0,sp,32
    int sum=0;
    for(int i=0;i<m;i++)
    80001844:	00000793          	li	a5,0
    int sum=0;
    80001848:	00000493          	li	s1,0
    for(int i=0;i<m;i++)
    8000184c:	00d7de63          	bge	a5,a3,80001868 <_ZN7WorkerA11workerBodyAEPiii+0x38>
        sum+=arg[i];
    80001850:	00279713          	slli	a4,a5,0x2
    80001854:	00e58733          	add	a4,a1,a4
    80001858:	00072703          	lw	a4,0(a4)
    8000185c:	009704bb          	addw	s1,a4,s1
    for(int i=0;i<m;i++)
    80001860:	0017879b          	addiw	a5,a5,1
    80001864:	fe9ff06f          	j	8000184c <_ZN7WorkerA11workerBodyAEPiii+0x1c>
    printString("thread finished!\n");
    80001868:	00003517          	auipc	a0,0x3
    8000186c:	7b850513          	addi	a0,a0,1976 # 80005020 <CONSOLE_STATUS+0x10>
    80001870:	00001097          	auipc	ra,0x1
    80001874:	000080e7          	jalr	ra # 80002870 <_Z11printStringPKc>
    //printString("Sum: %d", sum);
    return sum;
}
    80001878:	00048513          	mv	a0,s1
    8000187c:	01813083          	ld	ra,24(sp)
    80001880:	01013403          	ld	s0,16(sp)
    80001884:	00813483          	ld	s1,8(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret

0000000080001890 <main>:

int main() {
    80001890:	f9010113          	addi	sp,sp,-112
    80001894:	06113423          	sd	ra,104(sp)
    80001898:	06813023          	sd	s0,96(sp)
    8000189c:	04913c23          	sd	s1,88(sp)
    800018a0:	05213823          	sd	s2,80(sp)
    800018a4:	05313423          	sd	s3,72(sp)
    800018a8:	05413023          	sd	s4,64(sp)
    800018ac:	07010413          	addi	s0,sp,112
    Riscv::w_stvec((uint64) SuperTrap | 1);
    800018b0:	00004797          	auipc	a5,0x4
    800018b4:	7e87b783          	ld	a5,2024(a5) # 80006098 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018b8:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800018bc:	10579073          	csrw	stvec,a5

    Thread *t=new Thread(nullptr, nullptr);
    800018c0:	02000513          	li	a0,32
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	510080e7          	jalr	1296(ra) # 80001dd4 <_Znwm>
    800018cc:	00050993          	mv	s3,a0
    800018d0:	00000613          	li	a2,0
    800018d4:	00000593          	li	a1,0
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	3c4080e7          	jalr	964(ra) # 80001c9c <_ZN6ThreadC1EPFvPvES0_>
    return 0;*/


    int m=3;
    int n=3;
    int matrix[3][3]={1,2,3,
    800018e0:	00003797          	auipc	a5,0x3
    800018e4:	77078793          	addi	a5,a5,1904 # 80005050 <CONSOLE_STATUS+0x40>
    800018e8:	0007b583          	ld	a1,0(a5)
    800018ec:	0087b603          	ld	a2,8(a5)
    800018f0:	0107b683          	ld	a3,16(a5)
    800018f4:	0187b703          	ld	a4,24(a5)
    800018f8:	fab43423          	sd	a1,-88(s0)
    800018fc:	fac43823          	sd	a2,-80(s0)
    80001900:	fad43c23          	sd	a3,-72(s0)
    80001904:	fce43023          	sd	a4,-64(s0)
    80001908:	0207a783          	lw	a5,32(a5)
    8000190c:	fcf42423          	sw	a5,-56(s0)
                      4,5,6,
                      7,8,9};

    Thread* threads[3];

    for(int i=0;i<n;i++){
    80001910:	00000913          	li	s2,0
    80001914:	0340006f          	j	80001948 <main+0xb8>
    WorkerA(int* mat, int n, int m):Thread() {
    80001918:	00004797          	auipc	a5,0x4
    8000191c:	6e878793          	addi	a5,a5,1768 # 80006000 <_ZTV7WorkerA+0x10>
    80001920:	00f4b023          	sd	a5,0(s1)
        this->mat=mat;
    80001924:	0344b023          	sd	s4,32(s1)
        this->n=n;
    80001928:	0324a423          	sw	s2,40(s1)
        this->m=m;
    8000192c:	00300793          	li	a5,3
    80001930:	02f4a623          	sw	a5,44(s1)
        threads[i] = new WorkerA(matrix[i], i, m);
    80001934:	00391793          	slli	a5,s2,0x3
    80001938:	fd040713          	addi	a4,s0,-48
    8000193c:	00f707b3          	add	a5,a4,a5
    80001940:	fc97b023          	sd	s1,-64(a5)
    for(int i=0;i<n;i++){
    80001944:	0019091b          	addiw	s2,s2,1
    80001948:	00200793          	li	a5,2
    8000194c:	0327ca63          	blt	a5,s2,80001980 <main+0xf0>
        threads[i] = new WorkerA(matrix[i], i, m);
    80001950:	03000513          	li	a0,48
    80001954:	00000097          	auipc	ra,0x0
    80001958:	480080e7          	jalr	1152(ra) # 80001dd4 <_Znwm>
    8000195c:	00050493          	mv	s1,a0
    80001960:	00191793          	slli	a5,s2,0x1
    80001964:	012787b3          	add	a5,a5,s2
    80001968:	00279793          	slli	a5,a5,0x2
    8000196c:	fa840a13          	addi	s4,s0,-88
    80001970:	00fa0a33          	add	s4,s4,a5
    WorkerA(int* mat, int n, int m):Thread() {
    80001974:	00000097          	auipc	ra,0x0
    80001978:	280080e7          	jalr	640(ra) # 80001bf4 <_ZN6ThreadC1Ev>
    8000197c:	f9dff06f          	j	80001918 <main+0x88>
    }
    for(int i=0;i<n;i++){
    80001980:	00000493          	li	s1,0
    80001984:	0200006f          	j	800019a4 <main+0x114>
        threads[i]->start();
    80001988:	00349793          	slli	a5,s1,0x3
    8000198c:	fd040713          	addi	a4,s0,-48
    80001990:	00f707b3          	add	a5,a4,a5
    80001994:	fc07b503          	ld	a0,-64(a5)
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	288080e7          	jalr	648(ra) # 80001c20 <_ZN6Thread5startEv>
    for(int i=0;i<n;i++){
    800019a0:	0014849b          	addiw	s1,s1,1
    800019a4:	00200793          	li	a5,2
    800019a8:	fe97d0e3          	bge	a5,s1,80001988 <main+0xf8>
    }
    for(int i=0;i<n;i++){
    800019ac:	00000493          	li	s1,0
    800019b0:	0200006f          	j	800019d0 <main+0x140>
        threads[i]->join();
    800019b4:	00349793          	slli	a5,s1,0x3
    800019b8:	fd040713          	addi	a4,s0,-48
    800019bc:	00f707b3          	add	a5,a4,a5
    800019c0:	fc07b503          	ld	a0,-64(a5)
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	304080e7          	jalr	772(ra) # 80001cc8 <_ZN6Thread4joinEv>
    for(int i=0;i<n;i++){
    800019cc:	0014849b          	addiw	s1,s1,1
    800019d0:	00200793          	li	a5,2
    800019d4:	fe97d0e3          	bge	a5,s1,800019b4 <main+0x124>
    }

    for(int i=0;i<n;i++){
    800019d8:	00000493          	li	s1,0
    800019dc:	0080006f          	j	800019e4 <main+0x154>
    800019e0:	0014849b          	addiw	s1,s1,1
    800019e4:	00200793          	li	a5,2
    800019e8:	0297c463          	blt	a5,s1,80001a10 <main+0x180>
        delete threads[i];
    800019ec:	00349793          	slli	a5,s1,0x3
    800019f0:	fd040713          	addi	a4,s0,-48
    800019f4:	00f707b3          	add	a5,a4,a5
    800019f8:	fc07b503          	ld	a0,-64(a5)
    800019fc:	fe0502e3          	beqz	a0,800019e0 <main+0x150>
    80001a00:	00053783          	ld	a5,0(a0)
    80001a04:	0087b783          	ld	a5,8(a5)
    80001a08:	000780e7          	jalr	a5
    80001a0c:	fd5ff06f          	j	800019e0 <main+0x150>
    }
    t->join();
    80001a10:	00098513          	mv	a0,s3
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	2b4080e7          	jalr	692(ra) # 80001cc8 <_ZN6Thread4joinEv>
    printString("\nMain finished!\n\n");
    80001a1c:	00003517          	auipc	a0,0x3
    80001a20:	61c50513          	addi	a0,a0,1564 # 80005038 <CONSOLE_STATUS+0x28>
    80001a24:	00001097          	auipc	ra,0x1
    80001a28:	e4c080e7          	jalr	-436(ra) # 80002870 <_Z11printStringPKc>

    delete t;
    80001a2c:	00098a63          	beqz	s3,80001a40 <main+0x1b0>
    80001a30:	0009b783          	ld	a5,0(s3)
    80001a34:	0087b783          	ld	a5,8(a5)
    80001a38:	00098513          	mv	a0,s3
    80001a3c:	000780e7          	jalr	a5
    return 0;
}
    80001a40:	00000513          	li	a0,0
    80001a44:	06813083          	ld	ra,104(sp)
    80001a48:	06013403          	ld	s0,96(sp)
    80001a4c:	05813483          	ld	s1,88(sp)
    80001a50:	05013903          	ld	s2,80(sp)
    80001a54:	04813983          	ld	s3,72(sp)
    80001a58:	04013a03          	ld	s4,64(sp)
    80001a5c:	07010113          	addi	sp,sp,112
    80001a60:	00008067          	ret
    80001a64:	00050493          	mv	s1,a0
    Thread *t=new Thread(nullptr, nullptr);
    80001a68:	00098513          	mv	a0,s3
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	390080e7          	jalr	912(ra) # 80001dfc <_ZdlPv>
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00005097          	auipc	ra,0x5
    80001a7c:	7a0080e7          	jalr	1952(ra) # 80007218 <_Unwind_Resume>
    80001a80:	00050913          	mv	s2,a0
        threads[i] = new WorkerA(matrix[i], i, m);
    80001a84:	00048513          	mv	a0,s1
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	374080e7          	jalr	884(ra) # 80001dfc <_ZdlPv>
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00005097          	auipc	ra,0x5
    80001a98:	784080e7          	jalr	1924(ra) # 80007218 <_Unwind_Resume>

0000000080001a9c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00113423          	sd	ra,8(sp)
    80001aa4:	00813023          	sd	s0,0(sp)
    80001aa8:	01010413          	addi	s0,sp,16
    80001aac:	00004797          	auipc	a5,0x4
    80001ab0:	55478793          	addi	a5,a5,1364 # 80006000 <_ZTV7WorkerA+0x10>
    80001ab4:	00f53023          	sd	a5,0(a0)
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	0c4080e7          	jalr	196(ra) # 80001b7c <_ZN6ThreadD1Ev>
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN7WorkerAD0Ev>:
    80001ad0:	fe010113          	addi	sp,sp,-32
    80001ad4:	00113c23          	sd	ra,24(sp)
    80001ad8:	00813823          	sd	s0,16(sp)
    80001adc:	00913423          	sd	s1,8(sp)
    80001ae0:	02010413          	addi	s0,sp,32
    80001ae4:	00050493          	mv	s1,a0
    80001ae8:	00004797          	auipc	a5,0x4
    80001aec:	51878793          	addi	a5,a5,1304 # 80006000 <_ZTV7WorkerA+0x10>
    80001af0:	00f53023          	sd	a5,0(a0)
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	088080e7          	jalr	136(ra) # 80001b7c <_ZN6ThreadD1Ev>
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	2fc080e7          	jalr	764(ra) # 80001dfc <_ZdlPv>
    80001b08:	01813083          	ld	ra,24(sp)
    80001b0c:	01013403          	ld	s0,16(sp)
    80001b10:	00813483          	ld	s1,8(sp)
    80001b14:	02010113          	addi	sp,sp,32
    80001b18:	00008067          	ret

0000000080001b1c <_ZN7WorkerA3runEv>:
    void run() override {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
        workerBodyA(mat,n,m);
    80001b2c:	02c52683          	lw	a3,44(a0)
    80001b30:	02852603          	lw	a2,40(a0)
    80001b34:	02053583          	ld	a1,32(a0)
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	cf8080e7          	jalr	-776(ra) # 80001830 <_ZN7WorkerA11workerBodyAEPiii>
    }
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN6Thread13ThreadWrapperEPv>:
Thread::Thread(void (*b)(void *), void *a) {
    body = b;
    arg = a;
}

void Thread::ThreadWrapper(void *thread) {
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80001b60:	00053783          	ld	a5,0(a0)
    80001b64:	0107b783          	ld	a5,16(a5)
    80001b68:	000780e7          	jalr	a5
}
    80001b6c:	00813083          	ld	ra,8(sp)
    80001b70:	00013403          	ld	s0,0(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret

0000000080001b7c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001b7c:	00004797          	auipc	a5,0x4
    80001b80:	4b478793          	addi	a5,a5,1204 # 80006030 <_ZTV6Thread+0x10>
    80001b84:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001b88:	00853503          	ld	a0,8(a0)
    80001b8c:	02050663          	beqz	a0,80001bb8 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00113423          	sd	ra,8(sp)
    80001b98:	00813023          	sd	s0,0(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	78c080e7          	jalr	1932(ra) # 8000232c <_ZN3TCBdlEPv>
}
    80001ba8:	00813083          	ld	ra,8(sp)
    80001bac:	00013403          	ld	s0,0(sp)
    80001bb0:	01010113          	addi	sp,sp,16
    80001bb4:	00008067          	ret
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore(){
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    80001bcc:	00004797          	auipc	a5,0x4
    80001bd0:	48c78793          	addi	a5,a5,1164 # 80006058 <_ZTV9Semaphore+0x10>
    80001bd4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001bd8:	00853503          	ld	a0,8(a0)
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	8e4080e7          	jalr	-1820(ra) # 800014c0 <_Z9sem_closeP7Semafor>
}
    80001be4:	00813083          	ld	ra,8(sp)
    80001be8:	00013403          	ld	s0,0(sp)
    80001bec:	01010113          	addi	sp,sp,16
    80001bf0:	00008067          	ret

0000000080001bf4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001bf4:	ff010113          	addi	sp,sp,-16
    80001bf8:	00813423          	sd	s0,8(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    80001c00:	00004797          	auipc	a5,0x4
    80001c04:	43078793          	addi	a5,a5,1072 # 80006030 <_ZTV6Thread+0x10>
    80001c08:	00f53023          	sd	a5,0(a0)
    body = nullptr;
    80001c0c:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80001c10:	00053c23          	sd	zero,24(a0)
}
    80001c14:	00813403          	ld	s0,8(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN6Thread5startEv>:
int Thread::start(){
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    if(body) return thread_create(&myHandle, body, arg);
    80001c30:	01053583          	ld	a1,16(a0)
    80001c34:	02058263          	beqz	a1,80001c58 <_ZN6Thread5startEv+0x38>
    80001c38:	01853603          	ld	a2,24(a0)
    80001c3c:	00850513          	addi	a0,a0,8
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	75c080e7          	jalr	1884(ra) # 8000139c <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret
    else return thread_create(&myHandle, Thread::ThreadWrapper,this);
    80001c58:	00050613          	mv	a2,a0
    80001c5c:	00000597          	auipc	a1,0x0
    80001c60:	ef458593          	addi	a1,a1,-268 # 80001b50 <_ZN6Thread13ThreadWrapperEPv>
    80001c64:	00850513          	addi	a0,a0,8
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	734080e7          	jalr	1844(ra) # 8000139c <_Z13thread_createPP3TCBPFvPvES2_>
    80001c70:	fd9ff06f          	j	80001c48 <_ZN6Thread5startEv+0x28>

0000000080001c74 <_ZN6Thread8dispatchEv>:
void Thread::dispatch(){
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	7c8080e7          	jalr	1992(ra) # 8000144c <_Z15thread_dispatchv>
}
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*b)(void *), void *a) {
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00813423          	sd	s0,8(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    80001ca8:	00004797          	auipc	a5,0x4
    80001cac:	38878793          	addi	a5,a5,904 # 80006030 <_ZTV6Thread+0x10>
    80001cb0:	00f53023          	sd	a5,0(a0)
    body = b;
    80001cb4:	00b53823          	sd	a1,16(a0)
    arg = a;
    80001cb8:	00c53c23          	sd	a2,24(a0)
}
    80001cbc:	00813403          	ld	s0,8(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00113423          	sd	ra,8(sp)
    80001cd0:	00813023          	sd	s0,0(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001cd8:	00853503          	ld	a0,8(a0)
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	790080e7          	jalr	1936(ra) # 8000146c <_Z11thread_joinP3TCB>
}
    80001ce4:	00813083          	ld	ra,8(sp)
    80001ce8:	00013403          	ld	s0,0(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00113423          	sd	ra,8(sp)
    80001cfc:	00813023          	sd	s0,0(sp)
    80001d00:	01010413          	addi	s0,sp,16
    80001d04:	00004797          	auipc	a5,0x4
    80001d08:	35478793          	addi	a5,a5,852 # 80006058 <_ZTV9Semaphore+0x10>
    80001d0c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001d10:	00850513          	addi	a0,a0,8
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	77c080e7          	jalr	1916(ra) # 80001490 <_Z8sem_openPP7Semaforj>
}
    80001d1c:	00813083          	ld	ra,8(sp)
    80001d20:	00013403          	ld	s0,0(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_ZN9Semaphore4waitEv>:

int Semaphore::wait(){
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00113423          	sd	ra,8(sp)
    80001d34:	00813023          	sd	s0,0(sp)
    80001d38:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001d3c:	00853503          	ld	a0,8(a0)
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	7d8080e7          	jalr	2008(ra) # 80001518 <_Z8sem_waitP7Semafor>
}
    80001d48:	00813083          	ld	ra,8(sp)
    80001d4c:	00013403          	ld	s0,0(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret

0000000080001d58 <_ZN9Semaphore6signalEv>:

int Semaphore::signal(){
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00113423          	sd	ra,8(sp)
    80001d60:	00813023          	sd	s0,0(sp)
    80001d64:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001d68:	00853503          	ld	a0,8(a0)
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	780080e7          	jalr	1920(ra) # 800014ec <_Z10sem_signalP7Semafor>
}
    80001d74:	00813083          	ld	ra,8(sp)
    80001d78:	00013403          	ld	s0,0(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret

0000000080001d84 <_ZN7Console4getcEv>:


char Console::getc() {
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00113423          	sd	ra,8(sp)
    80001d8c:	00813023          	sd	s0,0(sp)
    80001d90:	01010413          	addi	s0,sp,16
    return ::getc();
    80001d94:	fffff097          	auipc	ra,0xfffff
    80001d98:	7b0080e7          	jalr	1968(ra) # 80001544 <_Z4getcv>
}
    80001d9c:	00813083          	ld	ra,8(sp)
    80001da0:	00013403          	ld	s0,0(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001dbc:	fffff097          	auipc	ra,0xfffff
    80001dc0:	7b0080e7          	jalr	1968(ra) # 8000156c <_Z4putcc>
}
    80001dc4:	00813083          	ld	ra,8(sp)
    80001dc8:	00013403          	ld	s0,0(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_Znwm>:


void *operator new(size_t size) {
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001de4:	fffff097          	auipc	ra,0xfffff
    80001de8:	564080e7          	jalr	1380(ra) # 80001348 <_Z9mem_allocm>
}
    80001dec:	00813083          	ld	ra,8(sp)
    80001df0:	00013403          	ld	s0,0(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_ZdlPv>:

void operator delete(void *adr) {
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	00813023          	sd	s0,0(sp)
    80001e08:	01010413          	addi	s0,sp,16
    mem_free(adr);
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	564080e7          	jalr	1380(ra) # 80001370 <_Z8mem_freePv>
    80001e14:	00813083          	ld	ra,8(sp)
    80001e18:	00013403          	ld	s0,0(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret

0000000080001e24 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001e24:	fe010113          	addi	sp,sp,-32
    80001e28:	00113c23          	sd	ra,24(sp)
    80001e2c:	00813823          	sd	s0,16(sp)
    80001e30:	00913423          	sd	s1,8(sp)
    80001e34:	02010413          	addi	s0,sp,32
    80001e38:	00050493          	mv	s1,a0
}
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	d40080e7          	jalr	-704(ra) # 80001b7c <_ZN6ThreadD1Ev>
    80001e44:	00048513          	mv	a0,s1
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	fb4080e7          	jalr	-76(ra) # 80001dfc <_ZdlPv>
    80001e50:	01813083          	ld	ra,24(sp)
    80001e54:	01013403          	ld	s0,16(sp)
    80001e58:	00813483          	ld	s1,8(sp)
    80001e5c:	02010113          	addi	sp,sp,32
    80001e60:	00008067          	ret

0000000080001e64 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore(){
    80001e64:	fe010113          	addi	sp,sp,-32
    80001e68:	00113c23          	sd	ra,24(sp)
    80001e6c:	00813823          	sd	s0,16(sp)
    80001e70:	00913423          	sd	s1,8(sp)
    80001e74:	02010413          	addi	s0,sp,32
    80001e78:	00050493          	mv	s1,a0
}
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	d40080e7          	jalr	-704(ra) # 80001bbc <_ZN9SemaphoreD1Ev>
    80001e84:	00048513          	mv	a0,s1
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	f74080e7          	jalr	-140(ra) # 80001dfc <_ZdlPv>
    80001e90:	01813083          	ld	ra,24(sp)
    80001e94:	01013403          	ld	s0,16(sp)
    80001e98:	00813483          	ld	s1,8(sp)
    80001e9c:	02010113          	addi	sp,sp,32
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN6Thread3runEv>:
    static int sleep (time_t);

protected:
    static void ThreadWrapper(void*);
    Thread ();
    virtual void run () {}
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00813423          	sd	s0,8(sp)
    80001eac:	01010413          	addi	s0,sp,16
    80001eb0:	00813403          	ld	s0,8(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN5Riscv20handleSupervisorTrapEv>:
#include "../lib/console.h"
#include "../h/riscv.hpp"

void Riscv::handleSupervisorTrap() {
    80001ebc:	fc010113          	addi	sp,sp,-64
    80001ec0:	02113c23          	sd	ra,56(sp)
    80001ec4:	02813823          	sd	s0,48(sp)
    80001ec8:	02913423          	sd	s1,40(sp)
    80001ecc:	03213023          	sd	s2,32(sp)
    80001ed0:	01313c23          	sd	s3,24(sp)
    80001ed4:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ed8:	141027f3          	csrr	a5,sepc
    80001edc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001ee0:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ee4:	100027f3          	csrr	a5,sstatus
    80001ee8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001eec:	fc043903          	ld	s2,-64(s0)
    uint64 sepc = Riscv::r_sepc() + 4;
    uint64 sstatus = Riscv::r_sstatus();
    uint64 scauseVar, a2, code;
    __asm__ volatile("csrr %[temp],scause":[temp]"=r"(scauseVar));
    80001ef0:	14202773          	csrr	a4,scause

    __asm__ volatile("mv %[temp1], a0":[temp1]"=r"(code));
    80001ef4:	00050793          	mv	a5,a0

    __asm__ volatile("mv %[a2], a2":[a2]"=r"(a2));
    80001ef8:	00060513          	mv	a0,a2

    if (scauseVar == (0x09) || scauseVar == 0x08)
    80001efc:	ff870713          	addi	a4,a4,-8
    80001f00:	00100693          	li	a3,1
    80001f04:	02e6f063          	bgeu	a3,a4,80001f24 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
        }

        Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);
    }
}
    80001f08:	03813083          	ld	ra,56(sp)
    80001f0c:	03013403          	ld	s0,48(sp)
    80001f10:	02813483          	ld	s1,40(sp)
    80001f14:	02013903          	ld	s2,32(sp)
    80001f18:	01813983          	ld	s3,24(sp)
    80001f1c:	04010113          	addi	sp,sp,64
    80001f20:	00008067          	ret
    80001f24:	00448493          	addi	s1,s1,4
        switch (code) {
    80001f28:	04200713          	li	a4,66
    80001f2c:	02f76e63          	bltu	a4,a5,80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
    80001f30:	00279793          	slli	a5,a5,0x2
    80001f34:	00003717          	auipc	a4,0x3
    80001f38:	14070713          	addi	a4,a4,320 # 80005074 <CONSOLE_STATUS+0x64>
    80001f3c:	00e787b3          	add	a5,a5,a4
    80001f40:	0007a783          	lw	a5,0(a5)
    80001f44:	00e787b3          	add	a5,a5,a4
    80001f48:	00078067          	jr	a5
                __asm__ volatile("mv %[parameter], a1":[parameter]"=r"(parameter));
    80001f4c:	00058993          	mv	s3,a1
                void *ret = MemoryAllocator::getInstance().mem_alloc(parameter);
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	6fc080e7          	jalr	1788(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    80001f58:	00098593          	mv	a1,s3
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	730080e7          	jalr	1840(ra) # 8000268c <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
    80001f64:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f68:	14149073          	csrw	sepc,s1
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001f6c:	10091073          	csrw	sstatus,s2
}
    80001f70:	f99ff06f          	j	80001f08 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
                __asm__ volatile("mv %[parameter], a1":[parameter]"=r"(parameter));
    80001f74:	00058993          	mv	s3,a1
                uint64 ret = MemoryAllocator::getInstance().mem_free(argT);
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	6d4080e7          	jalr	1748(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    80001f80:	00098593          	mv	a1,s3
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	858080e7          	jalr	-1960(ra) # 800027dc <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
    80001f8c:	00050513          	mv	a0,a0
                break;
    80001f90:	fd9ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                __asm__ volatile("mv %[t], a1":[t] "=r"(t));
    80001f94:	00058993          	mv	s3,a1
                __asm__ volatile("mv %[s], a7":[s] "=r"(s));
    80001f98:	00088593          	mv	a1,a7
                __asm__ volatile("mv %[arg], a6":[arg] "=r"(arg));
    80001f9c:	00080613          	mv	a2,a6
                temp=TCB::create(b, s, arg);
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	3cc080e7          	jalr	972(ra) # 8000236c <_ZN3TCB6createEPFvPvEPcS0_>
                *t=temp;
    80001fa8:	00a9b023          	sd	a0,0(s3)
                if(temp==nullptr) ret=-1;
    80001fac:	00050c63          	beqz	a0,80001fc4 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                else Scheduler::put(*t);
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	550080e7          	jalr	1360(ra) # 80002500 <_ZN9Scheduler3putEP3TCB>
                int ret=0;
    80001fb8:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
    80001fbc:	00078513          	mv	a0,a5
                break;
    80001fc0:	fa9ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                if(temp==nullptr) ret=-1;
    80001fc4:	fff00793          	li	a5,-1
    80001fc8:	ff5ff06f          	j	80001fbc <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                TCB::exit();
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	274080e7          	jalr	628(ra) # 80002240 <_ZN3TCB4exitEv>
                break;
    80001fd4:	f95ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                TCB::dispatch();
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	200080e7          	jalr	512(ra) # 800021d8 <_ZN3TCB8dispatchEv>
                break;
    80001fe0:	f89ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                __asm__ volatile("mv %[t], a1":[t] "=r"(t));
    80001fe4:	00058513          	mv	a0,a1
                TCB::join(t);
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	2ac080e7          	jalr	684(ra) # 80002294 <_ZN3TCB4joinEPS_>
                break;
    80001ff0:	f79ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                __asm__ volatile("mv %[h], a1" : [h] "=r"(h));
    80001ff4:	00058993          	mv	s3,a1
                __asm__ volatile("mv %[val], a7" : [val] "=r"(val));
    80001ff8:	00088513          	mv	a0,a7
                *h = Semafor::create(val);
    80001ffc:	0005051b          	sext.w	a0,a0
    80002000:	fffff097          	auipc	ra,0xfffff
    80002004:	5f4080e7          	jalr	1524(ra) # 800015f4 <_ZN7Semafor6createEi>
    80002008:	00a9b023          	sd	a0,0(s3)
                if (*h == nullptr) ret=-1;
    8000200c:	00050863          	beqz	a0,8000201c <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                int ret=0;
    80002010:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
    80002014:	00078513          	mv	a0,a5
                break;
    80002018:	f51ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                if (*h == nullptr) ret=-1;
    8000201c:	fff00793          	li	a5,-1
    80002020:	ff5ff06f          	j	80002014 <_ZN5Riscv20handleSupervisorTrapEv+0x158>
                __asm__ volatile("mv %[h], a1":[h] "=r"(h));
    80002024:	00058793          	mv	a5,a1
                if (h == nullptr) ret=-1;
    80002028:	00078863          	beqz	a5,80002038 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                int ret=0;
    8000202c:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
    80002030:	00078513          	mv	a0,a5
                break;
    80002034:	f35ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                if (h == nullptr) ret=-1;
    80002038:	fff00793          	li	a5,-1
    8000203c:	ff5ff06f          	j	80002030 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                __asm__ volatile("mv %[s], a1" : [s] "=r"(s));
    80002040:	00058513          	mv	a0,a1
                Semafor::wait(s);
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	68c080e7          	jalr	1676(ra) # 800016d0 <_ZN7Semafor4waitEPS_>
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
    8000204c:	00000793          	li	a5,0
    80002050:	00078513          	mv	a0,a5
                break;
    80002054:	f15ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                __asm__ volatile("mv %[s], a1" : [s] "=r"(s));
    80002058:	00058513          	mv	a0,a1
                if (s == nullptr) ret=-1;
    8000205c:	00050c63          	beqz	a0,80002074 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                else Semafor::signal(s);
    80002060:	fffff097          	auipc	ra,0xfffff
    80002064:	74c080e7          	jalr	1868(ra) # 800017ac <_ZN7Semafor6signalEPS_>
                int ret=0;
    80002068:	00000793          	li	a5,0
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
    8000206c:	00078513          	mv	a0,a5
                break;
    80002070:	ef9ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                if (s == nullptr) ret=-1;
    80002074:	fff00793          	li	a5,-1
    80002078:	ff5ff06f          	j	8000206c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __getc();
    8000207c:	00003097          	auipc	ra,0x3
    80002080:	bbc080e7          	jalr	-1092(ra) # 80004c38 <__getc>
                break;
    80002084:	ee5ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                __asm__ volatile("mv %[c], a1" : [c] "=r"(c));
    80002088:	00058513          	mv	a0,a1
                __putc(c);
    8000208c:	0ff57513          	andi	a0,a0,255
    80002090:	00003097          	auipc	ra,0x3
    80002094:	b6c080e7          	jalr	-1172(ra) # 80004bfc <__putc>
                break;
    80002098:	ed1ff06f          	j	80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0xac>

000000008000209c <_ZN5Riscv9timerTrapEv>:
void Riscv::timerTrap() {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800020a8:	00200793          	li	a5,2
    800020ac:	1447b073          	csrc	sip,a5
    mc_sip(SIP_SSIP);
}
    800020b0:	00813403          	ld	s0,8(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret

00000000800020bc <_ZN5Riscv11consoleTrapEv>:

void Riscv::consoleTrap(){
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00113423          	sd	ra,8(sp)
    800020c4:	00813023          	sd	s0,0(sp)
    800020c8:	01010413          	addi	s0,sp,16
    //int p = plic_claim();
    console_handler();
    800020cc:	00003097          	auipc	ra,0x3
    800020d0:	ba4080e7          	jalr	-1116(ra) # 80004c70 <console_handler>
    //plic_complete(p);
}
    800020d4:	00813083          	ld	ra,8(sp)
    800020d8:	00013403          	ld	s0,0(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret

00000000800020e4 <_ZN5Riscv10popSppSpieEv>:
void Riscv::popSppSpie() {
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00813423          	sd	s0,8(sp)
    800020ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800020f0:	14109073          	csrw	sepc,ra
    __asm__ volatile("li t0, 256");
    800020f4:	10000293          	li	t0,256
    __asm__ volatile("csrc sstatus, t0");
    800020f8:	1002b073          	csrc	sstatus,t0
    __asm__ volatile("sret");
    800020fc:	10200073          	sret
    80002100:	00813403          	ld	s0,8(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <_ZN3TCB13threadWrapperEv>:
        thread_dispatch();
    }
}

void TCB::threadWrapper()
{
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	fc8080e7          	jalr	-56(ra) # 800020e4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002124:	00004797          	auipc	a5,0x4
    80002128:	fdc7b783          	ld	a5,-36(a5) # 80006100 <_ZN3TCB7runningE>
    8000212c:	0307b703          	ld	a4,48(a5)
    80002130:	0287b503          	ld	a0,40(a5)
    80002134:	000700e7          	jalr	a4
    thread_exit();
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	2ec080e7          	jalr	748(ra) # 80001424 <_Z11thread_exitv>
}
    80002140:	00813083          	ld	ra,8(sp)
    80002144:	00013403          	ld	s0,0(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_ZN3TCB5yieldEPNS_7ContextES1_>:
void TCB::yield(TCB::Context *old_context, TCB::Context *running_context) {
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00813423          	sd	s0,8(sp)
    80002158:	01010413          	addi	s0,sp,16
    __asm__ volatile("sd ra, 0*8(a0)");
    8000215c:	00153023          	sd	ra,0(a0)
    __asm__ volatile("sd sp, 1*8(a0)");
    80002160:	00253423          	sd	sp,8(a0)
    __asm__ volatile("ld ra, 0*8(a1)");
    80002164:	0005b083          	ld	ra,0(a1)
    __asm__ volatile("ld sp, 1*8(a1)");
    80002168:	0085b103          	ld	sp,8(a1)
}
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret

0000000080002178 <_ZN3TCBC1EPFvPvEPcS0_m>:
TCB::TCB(Body b, char *s, void *a, uint64 ts) {
    80002178:	fe010113          	addi	sp,sp,-32
    8000217c:	00113c23          	sd	ra,24(sp)
    80002180:	00813823          	sd	s0,16(sp)
    80002184:	00913423          	sd	s1,8(sp)
    80002188:	02010413          	addi	s0,sp,32
    8000218c:	00050493          	mv	s1,a0
    this->body=b;
    80002190:	02b53823          	sd	a1,48(a0)
    this->stack=s;
    80002194:	02c53023          	sd	a2,32(a0)
    this->arg=a;
    80002198:	02d53423          	sd	a3,40(a0)
    this->time_slice=ts;
    8000219c:	00e53823          	sd	a4,16(a0)
    this->context.ra = (uint64)threadWrapper;
    800021a0:	00000797          	auipc	a5,0x0
    800021a4:	f6c78793          	addi	a5,a5,-148 # 8000210c <_ZN3TCB13threadWrapperEv>
    800021a8:	00f53023          	sd	a5,0(a0)
    this->context.sp = (uint64)s;
    800021ac:	00c53423          	sd	a2,8(a0)
    this->done = false;
    800021b0:	02050c23          	sb	zero,56(a0)
    this->semaphore=Semafor::create(0);
    800021b4:	00000513          	li	a0,0
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	43c080e7          	jalr	1084(ra) # 800015f4 <_ZN7Semafor6createEi>
    800021c0:	00a4bc23          	sd	a0,24(s1)
}
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	02010113          	addi	sp,sp,32
    800021d4:	00008067          	ret

00000000800021d8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800021d8:	fe010113          	addi	sp,sp,-32
    800021dc:	00113c23          	sd	ra,24(sp)
    800021e0:	00813823          	sd	s0,16(sp)
    800021e4:	00913423          	sd	s1,8(sp)
    800021e8:	02010413          	addi	s0,sp,32
    TCB* old=running;
    800021ec:	00004497          	auipc	s1,0x4
    800021f0:	f144b483          	ld	s1,-236(s1) # 80006100 <_ZN3TCB7runningE>
    if(!running->done){
    800021f4:	0384c783          	lbu	a5,56(s1)
    800021f8:	02078c63          	beqz	a5,80002230 <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	3cc080e7          	jalr	972(ra) # 800025c8 <_ZN9Scheduler3getEv>
    80002204:	00050593          	mv	a1,a0
    80002208:	00004797          	auipc	a5,0x4
    8000220c:	eea7bc23          	sd	a0,-264(a5) # 80006100 <_ZN3TCB7runningE>
    yield(&old->context, &running->context);
    80002210:	00048513          	mv	a0,s1
    80002214:	00000097          	auipc	ra,0x0
    80002218:	f3c080e7          	jalr	-196(ra) # 80002150 <_ZN3TCB5yieldEPNS_7ContextES1_>
}
    8000221c:	01813083          	ld	ra,24(sp)
    80002220:	01013403          	ld	s0,16(sp)
    80002224:	00813483          	ld	s1,8(sp)
    80002228:	02010113          	addi	sp,sp,32
    8000222c:	00008067          	ret
        Scheduler::put(running);
    80002230:	00048513          	mv	a0,s1
    80002234:	00000097          	auipc	ra,0x0
    80002238:	2cc080e7          	jalr	716(ra) # 80002500 <_ZN9Scheduler3putEP3TCB>
    8000223c:	fc1ff06f          	j	800021fc <_ZN3TCB8dispatchEv+0x24>

0000000080002240 <_ZN3TCB4exitEv>:
    if(running==nullptr) return -1;
    80002240:	00004797          	auipc	a5,0x4
    80002244:	ec07b783          	ld	a5,-320(a5) # 80006100 <_ZN3TCB7runningE>
    80002248:	04078263          	beqz	a5,8000228c <_ZN3TCB4exitEv+0x4c>
int TCB::exit() {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00113423          	sd	ra,8(sp)
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	01010413          	addi	s0,sp,16
    running->done = true;
    8000225c:	00100713          	li	a4,1
    80002260:	02e78c23          	sb	a4,56(a5)
    Semafor::signal(running->semaphore);
    80002264:	0187b503          	ld	a0,24(a5)
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	544080e7          	jalr	1348(ra) # 800017ac <_ZN7Semafor6signalEPS_>
    dispatch();
    80002270:	00000097          	auipc	ra,0x0
    80002274:	f68080e7          	jalr	-152(ra) # 800021d8 <_ZN3TCB8dispatchEv>
    return 0;
    80002278:	00000513          	li	a0,0
}
    8000227c:	00813083          	ld	ra,8(sp)
    80002280:	00013403          	ld	s0,0(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret
    if(running==nullptr) return -1;
    8000228c:	fff00513          	li	a0,-1
}
    80002290:	00008067          	ret

0000000080002294 <_ZN3TCB4joinEPS_>:
    if (!thread || thread->done) return;
    80002294:	00050663          	beqz	a0,800022a0 <_ZN3TCB4joinEPS_+0xc>
    80002298:	03854783          	lbu	a5,56(a0)
    8000229c:	00078463          	beqz	a5,800022a4 <_ZN3TCB4joinEPS_+0x10>
    800022a0:	00008067          	ret
void TCB::join(TCB *thread) {
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00113423          	sd	ra,8(sp)
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	01010413          	addi	s0,sp,16
    Semafor::wait(thread->semaphore);
    800022b4:	01853503          	ld	a0,24(a0)
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	418080e7          	jalr	1048(ra) # 800016d0 <_ZN7Semafor4waitEPS_>
}
    800022c0:	00813083          	ld	ra,8(sp)
    800022c4:	00013403          	ld	s0,0(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN3TCB10idleThreadEPv>:
void TCB::idleThread(void* arg) {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00113423          	sd	ra,8(sp)
    800022d8:	00813023          	sd	s0,0(sp)
    800022dc:	01010413          	addi	s0,sp,16
        thread_dispatch();
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	16c080e7          	jalr	364(ra) # 8000144c <_Z15thread_dispatchv>
    while (true) {
    800022e8:	ff9ff06f          	j	800022e0 <_ZN3TCB10idleThreadEPv+0x10>

00000000800022ec <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance().mem_alloc(size);
    80002304:	00000097          	auipc	ra,0x0
    80002308:	348080e7          	jalr	840(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    8000230c:	00048593          	mv	a1,s1
    80002310:	00000097          	auipc	ra,0x0
    80002314:	37c080e7          	jalr	892(ra) # 8000268c <_ZN15MemoryAllocator9mem_allocEm>
}
    80002318:	01813083          	ld	ra,24(sp)
    8000231c:	01013403          	ld	s0,16(sp)
    80002320:	00813483          	ld	s1,8(sp)
    80002324:	02010113          	addi	sp,sp,32
    80002328:	00008067          	ret

000000008000232c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *address) {
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	02010413          	addi	s0,sp,32
    80002340:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().mem_free(address);
    80002344:	00000097          	auipc	ra,0x0
    80002348:	308080e7          	jalr	776(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    8000234c:	00048593          	mv	a1,s1
    80002350:	00000097          	auipc	ra,0x0
    80002354:	48c080e7          	jalr	1164(ra) # 800027dc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret

000000008000236c <_ZN3TCB6createEPFvPvEPcS0_>:
TCB* TCB::create(Body b,char* s, void* a) {
    8000236c:	fd010113          	addi	sp,sp,-48
    80002370:	02113423          	sd	ra,40(sp)
    80002374:	02813023          	sd	s0,32(sp)
    80002378:	00913c23          	sd	s1,24(sp)
    8000237c:	01213823          	sd	s2,16(sp)
    80002380:	01313423          	sd	s3,8(sp)
    80002384:	01413023          	sd	s4,0(sp)
    80002388:	03010413          	addi	s0,sp,48
    8000238c:	00050913          	mv	s2,a0
    80002390:	00058993          	mv	s3,a1
    80002394:	00060a13          	mv	s4,a2
    if(running==nullptr) {
    80002398:	00004797          	auipc	a5,0x4
    8000239c:	d687b783          	ld	a5,-664(a5) # 80006100 <_ZN3TCB7runningE>
    800023a0:	02078863          	beqz	a5,800023d0 <_ZN3TCB6createEPFvPvEPcS0_+0x64>
    return new TCB(b, s, a, DEFAULT_TIME_SLICE);
    800023a4:	04000513          	li	a0,64
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	f44080e7          	jalr	-188(ra) # 800022ec <_ZN3TCBnwEm>
    800023b0:	00050493          	mv	s1,a0
    800023b4:	00200713          	li	a4,2
    800023b8:	000a0693          	mv	a3,s4
    800023bc:	00098613          	mv	a2,s3
    800023c0:	00090593          	mv	a1,s2
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	db4080e7          	jalr	-588(ra) # 80002178 <_ZN3TCBC1EPFvPvEPcS0_m>
    800023cc:	0700006f          	j	8000243c <_ZN3TCB6createEPFvPvEPcS0_+0xd0>
        running=new TCB(nullptr, nullptr, nullptr, DEFAULT_TIME_SLICE);
    800023d0:	04000513          	li	a0,64
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	f18080e7          	jalr	-232(ra) # 800022ec <_ZN3TCBnwEm>
    800023dc:	00050493          	mv	s1,a0
    800023e0:	00200713          	li	a4,2
    800023e4:	00000693          	li	a3,0
    800023e8:	00000613          	li	a2,0
    800023ec:	00000593          	li	a1,0
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	d88080e7          	jalr	-632(ra) # 80002178 <_ZN3TCBC1EPFvPvEPcS0_m>
    800023f8:	00004797          	auipc	a5,0x4
    800023fc:	d097b423          	sd	s1,-760(a5) # 80006100 <_ZN3TCB7runningE>
    80002400:	fa5ff06f          	j	800023a4 <_ZN3TCB6createEPFvPvEPcS0_+0x38>
    80002404:	00050913          	mv	s2,a0
    80002408:	00048513          	mv	a0,s1
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	f20080e7          	jalr	-224(ra) # 8000232c <_ZN3TCBdlEPv>
    80002414:	00090513          	mv	a0,s2
    80002418:	00005097          	auipc	ra,0x5
    8000241c:	e00080e7          	jalr	-512(ra) # 80007218 <_Unwind_Resume>
    80002420:	00050913          	mv	s2,a0
    return new TCB(b, s, a, DEFAULT_TIME_SLICE);
    80002424:	00048513          	mv	a0,s1
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	f04080e7          	jalr	-252(ra) # 8000232c <_ZN3TCBdlEPv>
    80002430:	00090513          	mv	a0,s2
    80002434:	00005097          	auipc	ra,0x5
    80002438:	de4080e7          	jalr	-540(ra) # 80007218 <_Unwind_Resume>
}
    8000243c:	00048513          	mv	a0,s1
    80002440:	02813083          	ld	ra,40(sp)
    80002444:	02013403          	ld	s0,32(sp)
    80002448:	01813483          	ld	s1,24(sp)
    8000244c:	01013903          	ld	s2,16(sp)
    80002450:	00813983          	ld	s3,8(sp)
    80002454:	00013a03          	ld	s4,0(sp)
    80002458:	03010113          	addi	sp,sp,48
    8000245c:	00008067          	ret

0000000080002460 <_ZN9Scheduler10initializeEv>:
    tail = temp;
}

void Scheduler::initialize() {
    static bool initialized = false;
    if (!initialized) {
    80002460:	00004797          	auipc	a5,0x4
    80002464:	ca87c783          	lbu	a5,-856(a5) # 80006108 <_ZZN9Scheduler10initializeEvE11initialized>
    80002468:	00078463          	beqz	a5,80002470 <_ZN9Scheduler10initializeEv+0x10>
    8000246c:	00008067          	ret
void Scheduler::initialize() {
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00113423          	sd	ra,8(sp)
    80002478:	00813023          	sd	s0,0(sp)
    8000247c:	01010413          	addi	s0,sp,16
        TCB::Body fun = TCB::idleThread;
        idleThread = TCB::create(fun, 0, nullptr);
    80002480:	00000613          	li	a2,0
    80002484:	00000593          	li	a1,0
    80002488:	00004517          	auipc	a0,0x4
    8000248c:	c1853503          	ld	a0,-1000(a0) # 800060a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002490:	00000097          	auipc	ra,0x0
    80002494:	edc080e7          	jalr	-292(ra) # 8000236c <_ZN3TCB6createEPFvPvEPcS0_>
    80002498:	00004797          	auipc	a5,0x4
    8000249c:	c7078793          	addi	a5,a5,-912 # 80006108 <_ZZN9Scheduler10initializeEvE11initialized>
    800024a0:	00a7b423          	sd	a0,8(a5)
        idleThread->done=1;
    800024a4:	00100713          	li	a4,1
    800024a8:	02e50c23          	sb	a4,56(a0)
        initialized = true;
    800024ac:	00e78023          	sb	a4,0(a5)
    }
}
    800024b0:	00813083          	ld	ra,8(sp)
    800024b4:	00013403          	ld	s0,0(sp)
    800024b8:	01010113          	addi	sp,sp,16
    800024bc:	00008067          	ret

00000000800024c0 <_ZN9Scheduler4NodenwEm>:

void *Scheduler::Node::operator new(size_t size) {
    800024c0:	fe010113          	addi	sp,sp,-32
    800024c4:	00113c23          	sd	ra,24(sp)
    800024c8:	00813823          	sd	s0,16(sp)
    800024cc:	00913423          	sd	s1,8(sp)
    800024d0:	02010413          	addi	s0,sp,32
    800024d4:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance().mem_alloc(size);
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	174080e7          	jalr	372(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    800024e0:	00048593          	mv	a1,s1
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	1a8080e7          	jalr	424(ra) # 8000268c <_ZN15MemoryAllocator9mem_allocEm>
}
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00813483          	ld	s1,8(sp)
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00008067          	ret

0000000080002500 <_ZN9Scheduler3putEP3TCB>:
void  Scheduler::put(TCB* thread){
    80002500:	fe010113          	addi	sp,sp,-32
    80002504:	00113c23          	sd	ra,24(sp)
    80002508:	00813823          	sd	s0,16(sp)
    8000250c:	00913423          	sd	s1,8(sp)
    80002510:	02010413          	addi	s0,sp,32
    80002514:	00050493          	mv	s1,a0
    if(idleThread==nullptr) initialize();
    80002518:	00004797          	auipc	a5,0x4
    8000251c:	bf87b783          	ld	a5,-1032(a5) # 80006110 <_ZN9Scheduler10idleThreadE>
    80002520:	04078863          	beqz	a5,80002570 <_ZN9Scheduler3putEP3TCB+0x70>
    if(thread==nullptr) return;
    80002524:	02048c63          	beqz	s1,8000255c <_ZN9Scheduler3putEP3TCB+0x5c>
    Node* temp = new Node(thread, nullptr);
    80002528:	01000513          	li	a0,16
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	f94080e7          	jalr	-108(ra) # 800024c0 <_ZN9Scheduler4NodenwEm>
    struct Node{
        TCB* thread;
        Node* next;

        Node(TCB* t, Node* n){
            thread = t;
    80002534:	00953023          	sd	s1,0(a0)
            next = n;
    80002538:	00053423          	sd	zero,8(a0)
    (head == nullptr ? head : tail->next) = temp;
    8000253c:	00004797          	auipc	a5,0x4
    80002540:	bdc7b783          	ld	a5,-1060(a5) # 80006118 <_ZN9Scheduler4headE>
    80002544:	02078c63          	beqz	a5,8000257c <_ZN9Scheduler3putEP3TCB+0x7c>
    80002548:	00004797          	auipc	a5,0x4
    8000254c:	bd87b783          	ld	a5,-1064(a5) # 80006120 <_ZN9Scheduler4tailE>
    80002550:	00a7b423          	sd	a0,8(a5)
    tail = temp;
    80002554:	00004797          	auipc	a5,0x4
    80002558:	bca7b623          	sd	a0,-1076(a5) # 80006120 <_ZN9Scheduler4tailE>
}
    8000255c:	01813083          	ld	ra,24(sp)
    80002560:	01013403          	ld	s0,16(sp)
    80002564:	00813483          	ld	s1,8(sp)
    80002568:	02010113          	addi	sp,sp,32
    8000256c:	00008067          	ret
    if(idleThread==nullptr) initialize();
    80002570:	00000097          	auipc	ra,0x0
    80002574:	ef0080e7          	jalr	-272(ra) # 80002460 <_ZN9Scheduler10initializeEv>
    80002578:	fadff06f          	j	80002524 <_ZN9Scheduler3putEP3TCB+0x24>
    (head == nullptr ? head : tail->next) = temp;
    8000257c:	00004797          	auipc	a5,0x4
    80002580:	b8a7be23          	sd	a0,-1124(a5) # 80006118 <_ZN9Scheduler4headE>
    80002584:	fd1ff06f          	j	80002554 <_ZN9Scheduler3putEP3TCB+0x54>

0000000080002588 <_ZN9Scheduler4NodedlEPv>:

void Scheduler::Node::operator delete(void *ptr) {
    80002588:	fe010113          	addi	sp,sp,-32
    8000258c:	00113c23          	sd	ra,24(sp)
    80002590:	00813823          	sd	s0,16(sp)
    80002594:	00913423          	sd	s1,8(sp)
    80002598:	02010413          	addi	s0,sp,32
    8000259c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().mem_free(ptr);
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	0ac080e7          	jalr	172(ra) # 8000264c <_ZN15MemoryAllocator11getInstanceEv>
    800025a8:	00048593          	mv	a1,s1
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	230080e7          	jalr	560(ra) # 800027dc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	01013403          	ld	s0,16(sp)
    800025bc:	00813483          	ld	s1,8(sp)
    800025c0:	02010113          	addi	sp,sp,32
    800025c4:	00008067          	ret

00000000800025c8 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get(){
    800025c8:	fe010113          	addi	sp,sp,-32
    800025cc:	00113c23          	sd	ra,24(sp)
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	02010413          	addi	s0,sp,32
    if(idleThread==nullptr) initialize();
    800025dc:	00004797          	auipc	a5,0x4
    800025e0:	b347b783          	ld	a5,-1228(a5) # 80006110 <_ZN9Scheduler10idleThreadE>
    800025e4:	04078263          	beqz	a5,80002628 <_ZN9Scheduler3getEv+0x60>
    if(head==nullptr) return idleThread;
    800025e8:	00004517          	auipc	a0,0x4
    800025ec:	b3053503          	ld	a0,-1232(a0) # 80006118 <_ZN9Scheduler4headE>
    800025f0:	04050263          	beqz	a0,80002634 <_ZN9Scheduler3getEv+0x6c>
    TCB* thread=temp->thread;
    800025f4:	00053483          	ld	s1,0(a0)
    head=head->next;
    800025f8:	00853783          	ld	a5,8(a0)
    800025fc:	00004717          	auipc	a4,0x4
    80002600:	b0f73e23          	sd	a5,-1252(a4) # 80006118 <_ZN9Scheduler4headE>
    if(head==nullptr) tail=nullptr;
    80002604:	02078e63          	beqz	a5,80002640 <_ZN9Scheduler3getEv+0x78>
    delete temp;
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	f80080e7          	jalr	-128(ra) # 80002588 <_ZN9Scheduler4NodedlEPv>
}
    80002610:	00048513          	mv	a0,s1
    80002614:	01813083          	ld	ra,24(sp)
    80002618:	01013403          	ld	s0,16(sp)
    8000261c:	00813483          	ld	s1,8(sp)
    80002620:	02010113          	addi	sp,sp,32
    80002624:	00008067          	ret
    if(idleThread==nullptr) initialize();
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	e38080e7          	jalr	-456(ra) # 80002460 <_ZN9Scheduler10initializeEv>
    80002630:	fb9ff06f          	j	800025e8 <_ZN9Scheduler3getEv+0x20>
    if(head==nullptr) return idleThread;
    80002634:	00004497          	auipc	s1,0x4
    80002638:	adc4b483          	ld	s1,-1316(s1) # 80006110 <_ZN9Scheduler10idleThreadE>
    8000263c:	fd5ff06f          	j	80002610 <_ZN9Scheduler3getEv+0x48>
    if(head==nullptr) tail=nullptr;
    80002640:	00004797          	auipc	a5,0x4
    80002644:	ae07b023          	sd	zero,-1312(a5) # 80006120 <_ZN9Scheduler4tailE>
    80002648:	fc1ff06f          	j	80002608 <_ZN9Scheduler3getEv+0x40>

000000008000264c <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/MemoryAllocator.h"

MemoryAllocator& MemoryAllocator::getInstance() {
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    static MemoryAllocator singleton;
    80002658:	00004797          	auipc	a5,0x4
    8000265c:	ad07c783          	lbu	a5,-1328(a5) # 80006128 <_ZGVZN15MemoryAllocator11getInstanceEvE9singleton>
    80002660:	00079c63          	bnez	a5,80002678 <_ZN15MemoryAllocator11getInstanceEv+0x2c>
    void join();
    MemChunk *first_addr;
    bool first=true;
public:

    MemoryAllocator() {};
    80002664:	00004797          	auipc	a5,0x4
    80002668:	ac478793          	addi	a5,a5,-1340 # 80006128 <_ZGVZN15MemoryAllocator11getInstanceEvE9singleton>
    8000266c:	00100713          	li	a4,1
    80002670:	00e78823          	sb	a4,16(a5)
    80002674:	00e78023          	sb	a4,0(a5)
    return singleton;
}
    80002678:	00004517          	auipc	a0,0x4
    8000267c:	ab850513          	addi	a0,a0,-1352 # 80006130 <_ZZN15MemoryAllocator11getInstanceEvE9singleton>
    80002680:	00813403          	ld	s0,8(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size){
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00813423          	sd	s0,8(sp)
    80002694:	01010413          	addi	s0,sp,16
    if(first==true){
    80002698:	00854783          	lbu	a5,8(a0)
    8000269c:	02078e63          	beqz	a5,800026d8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
        first_addr=(MemChunk*)HEAP_START_ADDR;
    800026a0:	00004797          	auipc	a5,0x4
    800026a4:	9e87b783          	ld	a5,-1560(a5) # 80006088 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026a8:	0007b783          	ld	a5,0(a5)
    800026ac:	00f53023          	sd	a5,0(a0)
        first_addr->size=((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR);
    800026b0:	00004717          	auipc	a4,0x4
    800026b4:	a0073703          	ld	a4,-1536(a4) # 800060b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026b8:	00073703          	ld	a4,0(a4)
    800026bc:	40f70733          	sub	a4,a4,a5
    800026c0:	00e7b023          	sd	a4,0(a5)
        first_addr->next=nullptr;
    800026c4:	00053783          	ld	a5,0(a0)
    800026c8:	0007b423          	sd	zero,8(a5)
        first_addr->used=false;
    800026cc:	00053783          	ld	a5,0(a0)
    800026d0:	00078823          	sb	zero,16(a5)
        first=false;
    800026d4:	00050423          	sb	zero,8(a0)
    }
    if(first_addr==nullptr) return nullptr;
    800026d8:	00053503          	ld	a0,0(a0)
    800026dc:	06050c63          	beqz	a0,80002754 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    size+=sizeof(MemChunk);
    800026e0:	01858793          	addi	a5,a1,24
    if(size%MEM_BLOCK_SIZE==0) size/=MEM_BLOCK_SIZE;
    800026e4:	03f7f713          	andi	a4,a5,63
    800026e8:	00071863          	bnez	a4,800026f8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
    800026ec:	0067d793          	srli	a5,a5,0x6
    else size=size/MEM_BLOCK_SIZE+1;
    size*=MEM_BLOCK_SIZE;
    800026f0:	00679793          	slli	a5,a5,0x6

    MemChunk* temp=first_addr;
    800026f4:	0140006f          	j	80002708 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    else size=size/MEM_BLOCK_SIZE+1;
    800026f8:	0067d793          	srli	a5,a5,0x6
    800026fc:	00178793          	addi	a5,a5,1
    80002700:	ff1ff06f          	j	800026f0 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    for(;temp!=nullptr && (temp->size<size || temp->used==true);temp=temp->next);
    80002704:	00853503          	ld	a0,8(a0)
    80002708:	00050a63          	beqz	a0,8000271c <_ZN15MemoryAllocator9mem_allocEm+0x90>
    8000270c:	00053703          	ld	a4,0(a0)
    80002710:	fef76ae3          	bltu	a4,a5,80002704 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80002714:	01054703          	lbu	a4,16(a0)
    80002718:	fe0716e3          	bnez	a4,80002704 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    if(temp==nullptr) return nullptr;
    8000271c:	02050c63          	beqz	a0,80002754 <_ZN15MemoryAllocator9mem_allocEm+0xc8>

    if(temp->size==size)
    80002720:	00053703          	ld	a4,0(a0)
    80002724:	02f70e63          	beq	a4,a5,80002760 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    {
        temp->used=true;
    }
    else{
        MemChunk* new_chunk=(MemChunk*)((uint64)temp+size);
    80002728:	00f506b3          	add	a3,a0,a5
        new_chunk->size=temp->size-size;
    8000272c:	40f70733          	sub	a4,a4,a5
    80002730:	00e6b023          	sd	a4,0(a3)
        new_chunk->used=false;
    80002734:	00068823          	sb	zero,16(a3)
        new_chunk->next=temp->next;
    80002738:	00853703          	ld	a4,8(a0)
    8000273c:	00e6b423          	sd	a4,8(a3)
        temp->next=new_chunk;
    80002740:	00d53423          	sd	a3,8(a0)
        temp->used=true;
    80002744:	00100713          	li	a4,1
    80002748:	00e50823          	sb	a4,16(a0)
        temp->size=size;
    8000274c:	00f53023          	sd	a5,0(a0)
    }

    return (void*)((uint64)temp+sizeof(MemChunk));
    80002750:	01850513          	addi	a0,a0,24
}
    80002754:	00813403          	ld	s0,8(sp)
    80002758:	01010113          	addi	sp,sp,16
    8000275c:	00008067          	ret
        temp->used=true;
    80002760:	00100793          	li	a5,1
    80002764:	00f50823          	sb	a5,16(a0)
    80002768:	fe9ff06f          	j	80002750 <_ZN15MemoryAllocator9mem_allocEm+0xc4>

000000008000276c <_ZN15MemoryAllocator4joinEv>:
    join();

    return 0;
}

void MemoryAllocator::join(){
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00813423          	sd	s0,8(sp)
    80002774:	01010413          	addi	s0,sp,16

    MemChunk* temp=first_addr;
    80002778:	00053783          	ld	a5,0(a0)
    MemChunk* prev=nullptr;
    8000277c:	00000713          	li	a4,0
    80002780:	0140006f          	j	80002794 <_ZN15MemoryAllocator4joinEv+0x28>

    for(;temp!=nullptr;temp=temp->next)
    {
        if(prev==nullptr || (temp->used==true || prev->used==true)){
            prev=temp;
    80002784:	00078713          	mv	a4,a5
    80002788:	0080006f          	j	80002790 <_ZN15MemoryAllocator4joinEv+0x24>
    8000278c:	00078713          	mv	a4,a5
    for(;temp!=nullptr;temp=temp->next)
    80002790:	0087b783          	ld	a5,8(a5)
    80002794:	02078e63          	beqz	a5,800027d0 <_ZN15MemoryAllocator4joinEv+0x64>
        if(prev==nullptr || (temp->used==true || prev->used==true)){
    80002798:	fe0706e3          	beqz	a4,80002784 <_ZN15MemoryAllocator4joinEv+0x18>
    8000279c:	0107c683          	lbu	a3,16(a5)
    800027a0:	fe0696e3          	bnez	a3,8000278c <_ZN15MemoryAllocator4joinEv+0x20>
    800027a4:	01074683          	lbu	a3,16(a4)
    800027a8:	02069063          	bnez	a3,800027c8 <_ZN15MemoryAllocator4joinEv+0x5c>
        }
        else{
            prev->next=temp->next;
    800027ac:	0087b683          	ld	a3,8(a5)
    800027b0:	00d73423          	sd	a3,8(a4)
            prev->size+=temp->size;
    800027b4:	0007b603          	ld	a2,0(a5)
    800027b8:	00073683          	ld	a3,0(a4)
    800027bc:	00c686b3          	add	a3,a3,a2
    800027c0:	00d73023          	sd	a3,0(a4)
    800027c4:	fcdff06f          	j	80002790 <_ZN15MemoryAllocator4joinEv+0x24>
            prev=temp;
    800027c8:	00078713          	mv	a4,a5
    800027cc:	fc5ff06f          	j	80002790 <_ZN15MemoryAllocator4joinEv+0x24>
        }
    }
}
    800027d0:	00813403          	ld	s0,8(sp)
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00008067          	ret

00000000800027dc <_ZN15MemoryAllocator8mem_freeEPv>:
    address=(void*)((uint64)address-sizeof(MemChunk));
    800027dc:	fe858593          	addi	a1,a1,-24
    if((uint64)address<(uint64)HEAP_START_ADDR || (uint64)address>(uint64)HEAP_END_ADDR) return -1;
    800027e0:	00004797          	auipc	a5,0x4
    800027e4:	8a87b783          	ld	a5,-1880(a5) # 80006088 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027e8:	0007b783          	ld	a5,0(a5)
    800027ec:	04f5ee63          	bltu	a1,a5,80002848 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    800027f0:	00004797          	auipc	a5,0x4
    800027f4:	8c07b783          	ld	a5,-1856(a5) # 800060b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800027f8:	0007b783          	ld	a5,0(a5)
    800027fc:	04b7ea63          	bltu	a5,a1,80002850 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    if(first==true) return -1;
    80002800:	00854783          	lbu	a5,8(a0)
    80002804:	04079a63          	bnez	a5,80002858 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    if(first_addr==nullptr) return -1;
    80002808:	00053783          	ld	a5,0(a0)
    8000280c:	04078a63          	beqz	a5,80002860 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    if(temp->used==false) return -1;
    80002810:	0105c783          	lbu	a5,16(a1)
    80002814:	04078a63          	beqz	a5,80002868 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
int MemoryAllocator::mem_free(void* address){
    80002818:	ff010113          	addi	sp,sp,-16
    8000281c:	00113423          	sd	ra,8(sp)
    80002820:	00813023          	sd	s0,0(sp)
    80002824:	01010413          	addi	s0,sp,16
    temp->used=false;
    80002828:	00058823          	sb	zero,16(a1)
    join();
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	f40080e7          	jalr	-192(ra) # 8000276c <_ZN15MemoryAllocator4joinEv>
    return 0;
    80002834:	00000513          	li	a0,0
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret
    if((uint64)address<(uint64)HEAP_START_ADDR || (uint64)address>(uint64)HEAP_END_ADDR) return -1;
    80002848:	fff00513          	li	a0,-1
    8000284c:	00008067          	ret
    80002850:	fff00513          	li	a0,-1
    80002854:	00008067          	ret
    if(first==true) return -1;
    80002858:	fff00513          	li	a0,-1
    8000285c:	00008067          	ret
    if(first_addr==nullptr) return -1;
    80002860:	fff00513          	li	a0,-1
    80002864:	00008067          	ret
    if(temp->used==false) return -1;
    80002868:	fff00513          	li	a0,-1
}
    8000286c:	00008067          	ret

0000000080002870 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002870:	fe010113          	addi	sp,sp,-32
    80002874:	00113c23          	sd	ra,24(sp)
    80002878:	00813823          	sd	s0,16(sp)
    8000287c:	00913423          	sd	s1,8(sp)
    80002880:	02010413          	addi	s0,sp,32
    80002884:	00050493          	mv	s1,a0
    LOCK();
    80002888:	00100613          	li	a2,1
    8000288c:	00000593          	li	a1,0
    80002890:	00004517          	auipc	a0,0x4
    80002894:	8b050513          	addi	a0,a0,-1872 # 80006140 <lockPrint>
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	a90080e7          	jalr	-1392(ra) # 80001328 <copy_and_swap>
    800028a0:	00050863          	beqz	a0,800028b0 <_Z11printStringPKc+0x40>
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	ba8080e7          	jalr	-1112(ra) # 8000144c <_Z15thread_dispatchv>
    800028ac:	fddff06f          	j	80002888 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800028b0:	0004c503          	lbu	a0,0(s1)
    800028b4:	00050a63          	beqz	a0,800028c8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	cb4080e7          	jalr	-844(ra) # 8000156c <_Z4putcc>
        string++;
    800028c0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800028c4:	fedff06f          	j	800028b0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800028c8:	00000613          	li	a2,0
    800028cc:	00100593          	li	a1,1
    800028d0:	00004517          	auipc	a0,0x4
    800028d4:	87050513          	addi	a0,a0,-1936 # 80006140 <lockPrint>
    800028d8:	fffff097          	auipc	ra,0xfffff
    800028dc:	a50080e7          	jalr	-1456(ra) # 80001328 <copy_and_swap>
    800028e0:	fe0514e3          	bnez	a0,800028c8 <_Z11printStringPKc+0x58>
}
    800028e4:	01813083          	ld	ra,24(sp)
    800028e8:	01013403          	ld	s0,16(sp)
    800028ec:	00813483          	ld	s1,8(sp)
    800028f0:	02010113          	addi	sp,sp,32
    800028f4:	00008067          	ret

00000000800028f8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800028f8:	fd010113          	addi	sp,sp,-48
    800028fc:	02113423          	sd	ra,40(sp)
    80002900:	02813023          	sd	s0,32(sp)
    80002904:	00913c23          	sd	s1,24(sp)
    80002908:	01213823          	sd	s2,16(sp)
    8000290c:	01313423          	sd	s3,8(sp)
    80002910:	01413023          	sd	s4,0(sp)
    80002914:	03010413          	addi	s0,sp,48
    80002918:	00050993          	mv	s3,a0
    8000291c:	00058a13          	mv	s4,a1
    LOCK();
    80002920:	00100613          	li	a2,1
    80002924:	00000593          	li	a1,0
    80002928:	00004517          	auipc	a0,0x4
    8000292c:	81850513          	addi	a0,a0,-2024 # 80006140 <lockPrint>
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	9f8080e7          	jalr	-1544(ra) # 80001328 <copy_and_swap>
    80002938:	00050863          	beqz	a0,80002948 <_Z9getStringPci+0x50>
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	b10080e7          	jalr	-1264(ra) # 8000144c <_Z15thread_dispatchv>
    80002944:	fddff06f          	j	80002920 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002948:	00000913          	li	s2,0
    8000294c:	00090493          	mv	s1,s2
    80002950:	0019091b          	addiw	s2,s2,1
    80002954:	03495a63          	bge	s2,s4,80002988 <_Z9getStringPci+0x90>
        cc = getc();
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	bec080e7          	jalr	-1044(ra) # 80001544 <_Z4getcv>
        if(cc < 1)
    80002960:	02050463          	beqz	a0,80002988 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002964:	009984b3          	add	s1,s3,s1
    80002968:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000296c:	00a00793          	li	a5,10
    80002970:	00f50a63          	beq	a0,a5,80002984 <_Z9getStringPci+0x8c>
    80002974:	00d00793          	li	a5,13
    80002978:	fcf51ae3          	bne	a0,a5,8000294c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000297c:	00090493          	mv	s1,s2
    80002980:	0080006f          	j	80002988 <_Z9getStringPci+0x90>
    80002984:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002988:	009984b3          	add	s1,s3,s1
    8000298c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002990:	00000613          	li	a2,0
    80002994:	00100593          	li	a1,1
    80002998:	00003517          	auipc	a0,0x3
    8000299c:	7a850513          	addi	a0,a0,1960 # 80006140 <lockPrint>
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	988080e7          	jalr	-1656(ra) # 80001328 <copy_and_swap>
    800029a8:	fe0514e3          	bnez	a0,80002990 <_Z9getStringPci+0x98>
    return buf;
}
    800029ac:	00098513          	mv	a0,s3
    800029b0:	02813083          	ld	ra,40(sp)
    800029b4:	02013403          	ld	s0,32(sp)
    800029b8:	01813483          	ld	s1,24(sp)
    800029bc:	01013903          	ld	s2,16(sp)
    800029c0:	00813983          	ld	s3,8(sp)
    800029c4:	00013a03          	ld	s4,0(sp)
    800029c8:	03010113          	addi	sp,sp,48
    800029cc:	00008067          	ret

00000000800029d0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00813423          	sd	s0,8(sp)
    800029d8:	01010413          	addi	s0,sp,16
    800029dc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800029e0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800029e4:	0006c603          	lbu	a2,0(a3)
    800029e8:	fd06071b          	addiw	a4,a2,-48
    800029ec:	0ff77713          	andi	a4,a4,255
    800029f0:	00900793          	li	a5,9
    800029f4:	02e7e063          	bltu	a5,a4,80002a14 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800029f8:	0025179b          	slliw	a5,a0,0x2
    800029fc:	00a787bb          	addw	a5,a5,a0
    80002a00:	0017979b          	slliw	a5,a5,0x1
    80002a04:	00168693          	addi	a3,a3,1
    80002a08:	00c787bb          	addw	a5,a5,a2
    80002a0c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002a10:	fd5ff06f          	j	800029e4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002a14:	00813403          	ld	s0,8(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002a20:	fc010113          	addi	sp,sp,-64
    80002a24:	02113c23          	sd	ra,56(sp)
    80002a28:	02813823          	sd	s0,48(sp)
    80002a2c:	02913423          	sd	s1,40(sp)
    80002a30:	03213023          	sd	s2,32(sp)
    80002a34:	01313c23          	sd	s3,24(sp)
    80002a38:	04010413          	addi	s0,sp,64
    80002a3c:	00050493          	mv	s1,a0
    80002a40:	00058913          	mv	s2,a1
    80002a44:	00060993          	mv	s3,a2
    LOCK();
    80002a48:	00100613          	li	a2,1
    80002a4c:	00000593          	li	a1,0
    80002a50:	00003517          	auipc	a0,0x3
    80002a54:	6f050513          	addi	a0,a0,1776 # 80006140 <lockPrint>
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	8d0080e7          	jalr	-1840(ra) # 80001328 <copy_and_swap>
    80002a60:	00050863          	beqz	a0,80002a70 <_Z8printIntiii+0x50>
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	9e8080e7          	jalr	-1560(ra) # 8000144c <_Z15thread_dispatchv>
    80002a6c:	fddff06f          	j	80002a48 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002a70:	00098463          	beqz	s3,80002a78 <_Z8printIntiii+0x58>
    80002a74:	0804c463          	bltz	s1,80002afc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002a78:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002a7c:	00000593          	li	a1,0
    }

    i = 0;
    80002a80:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002a84:	0009079b          	sext.w	a5,s2
    80002a88:	0325773b          	remuw	a4,a0,s2
    80002a8c:	00048613          	mv	a2,s1
    80002a90:	0014849b          	addiw	s1,s1,1
    80002a94:	02071693          	slli	a3,a4,0x20
    80002a98:	0206d693          	srli	a3,a3,0x20
    80002a9c:	00003717          	auipc	a4,0x3
    80002aa0:	5cc70713          	addi	a4,a4,1484 # 80006068 <digits>
    80002aa4:	00d70733          	add	a4,a4,a3
    80002aa8:	00074683          	lbu	a3,0(a4)
    80002aac:	fd040713          	addi	a4,s0,-48
    80002ab0:	00c70733          	add	a4,a4,a2
    80002ab4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002ab8:	0005071b          	sext.w	a4,a0
    80002abc:	0325553b          	divuw	a0,a0,s2
    80002ac0:	fcf772e3          	bgeu	a4,a5,80002a84 <_Z8printIntiii+0x64>
    if(neg)
    80002ac4:	00058c63          	beqz	a1,80002adc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80002ac8:	fd040793          	addi	a5,s0,-48
    80002acc:	009784b3          	add	s1,a5,s1
    80002ad0:	02d00793          	li	a5,45
    80002ad4:	fef48823          	sb	a5,-16(s1)
    80002ad8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002adc:	fff4849b          	addiw	s1,s1,-1
    80002ae0:	0204c463          	bltz	s1,80002b08 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80002ae4:	fd040793          	addi	a5,s0,-48
    80002ae8:	009787b3          	add	a5,a5,s1
    80002aec:	ff07c503          	lbu	a0,-16(a5)
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	a7c080e7          	jalr	-1412(ra) # 8000156c <_Z4putcc>
    80002af8:	fe5ff06f          	j	80002adc <_Z8printIntiii+0xbc>
        x = -xx;
    80002afc:	4090053b          	negw	a0,s1
        neg = 1;
    80002b00:	00100593          	li	a1,1
        x = -xx;
    80002b04:	f7dff06f          	j	80002a80 <_Z8printIntiii+0x60>

    UNLOCK();
    80002b08:	00000613          	li	a2,0
    80002b0c:	00100593          	li	a1,1
    80002b10:	00003517          	auipc	a0,0x3
    80002b14:	63050513          	addi	a0,a0,1584 # 80006140 <lockPrint>
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	810080e7          	jalr	-2032(ra) # 80001328 <copy_and_swap>
    80002b20:	fe0514e3          	bnez	a0,80002b08 <_Z8printIntiii+0xe8>
    80002b24:	03813083          	ld	ra,56(sp)
    80002b28:	03013403          	ld	s0,48(sp)
    80002b2c:	02813483          	ld	s1,40(sp)
    80002b30:	02013903          	ld	s2,32(sp)
    80002b34:	01813983          	ld	s3,24(sp)
    80002b38:	04010113          	addi	sp,sp,64
    80002b3c:	00008067          	ret

0000000080002b40 <start>:
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00813423          	sd	s0,8(sp)
    80002b48:	01010413          	addi	s0,sp,16
    80002b4c:	300027f3          	csrr	a5,mstatus
    80002b50:	ffffe737          	lui	a4,0xffffe
    80002b54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff744f>
    80002b58:	00e7f7b3          	and	a5,a5,a4
    80002b5c:	00001737          	lui	a4,0x1
    80002b60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002b64:	00e7e7b3          	or	a5,a5,a4
    80002b68:	30079073          	csrw	mstatus,a5
    80002b6c:	00000797          	auipc	a5,0x0
    80002b70:	16078793          	addi	a5,a5,352 # 80002ccc <system_main>
    80002b74:	34179073          	csrw	mepc,a5
    80002b78:	00000793          	li	a5,0
    80002b7c:	18079073          	csrw	satp,a5
    80002b80:	000107b7          	lui	a5,0x10
    80002b84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b88:	30279073          	csrw	medeleg,a5
    80002b8c:	30379073          	csrw	mideleg,a5
    80002b90:	104027f3          	csrr	a5,sie
    80002b94:	2227e793          	ori	a5,a5,546
    80002b98:	10479073          	csrw	sie,a5
    80002b9c:	fff00793          	li	a5,-1
    80002ba0:	00a7d793          	srli	a5,a5,0xa
    80002ba4:	3b079073          	csrw	pmpaddr0,a5
    80002ba8:	00f00793          	li	a5,15
    80002bac:	3a079073          	csrw	pmpcfg0,a5
    80002bb0:	f14027f3          	csrr	a5,mhartid
    80002bb4:	0200c737          	lui	a4,0x200c
    80002bb8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002bbc:	0007869b          	sext.w	a3,a5
    80002bc0:	00269713          	slli	a4,a3,0x2
    80002bc4:	000f4637          	lui	a2,0xf4
    80002bc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002bcc:	00d70733          	add	a4,a4,a3
    80002bd0:	0037979b          	slliw	a5,a5,0x3
    80002bd4:	020046b7          	lui	a3,0x2004
    80002bd8:	00d787b3          	add	a5,a5,a3
    80002bdc:	00c585b3          	add	a1,a1,a2
    80002be0:	00371693          	slli	a3,a4,0x3
    80002be4:	00003717          	auipc	a4,0x3
    80002be8:	56c70713          	addi	a4,a4,1388 # 80006150 <timer_scratch>
    80002bec:	00b7b023          	sd	a1,0(a5)
    80002bf0:	00d70733          	add	a4,a4,a3
    80002bf4:	00f73c23          	sd	a5,24(a4)
    80002bf8:	02c73023          	sd	a2,32(a4)
    80002bfc:	34071073          	csrw	mscratch,a4
    80002c00:	00000797          	auipc	a5,0x0
    80002c04:	6e078793          	addi	a5,a5,1760 # 800032e0 <timervec>
    80002c08:	30579073          	csrw	mtvec,a5
    80002c0c:	300027f3          	csrr	a5,mstatus
    80002c10:	0087e793          	ori	a5,a5,8
    80002c14:	30079073          	csrw	mstatus,a5
    80002c18:	304027f3          	csrr	a5,mie
    80002c1c:	0807e793          	ori	a5,a5,128
    80002c20:	30479073          	csrw	mie,a5
    80002c24:	f14027f3          	csrr	a5,mhartid
    80002c28:	0007879b          	sext.w	a5,a5
    80002c2c:	00078213          	mv	tp,a5
    80002c30:	30200073          	mret
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <timerinit>:
    80002c40:	ff010113          	addi	sp,sp,-16
    80002c44:	00813423          	sd	s0,8(sp)
    80002c48:	01010413          	addi	s0,sp,16
    80002c4c:	f14027f3          	csrr	a5,mhartid
    80002c50:	0200c737          	lui	a4,0x200c
    80002c54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c58:	0007869b          	sext.w	a3,a5
    80002c5c:	00269713          	slli	a4,a3,0x2
    80002c60:	000f4637          	lui	a2,0xf4
    80002c64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c68:	00d70733          	add	a4,a4,a3
    80002c6c:	0037979b          	slliw	a5,a5,0x3
    80002c70:	020046b7          	lui	a3,0x2004
    80002c74:	00d787b3          	add	a5,a5,a3
    80002c78:	00c585b3          	add	a1,a1,a2
    80002c7c:	00371693          	slli	a3,a4,0x3
    80002c80:	00003717          	auipc	a4,0x3
    80002c84:	4d070713          	addi	a4,a4,1232 # 80006150 <timer_scratch>
    80002c88:	00b7b023          	sd	a1,0(a5)
    80002c8c:	00d70733          	add	a4,a4,a3
    80002c90:	00f73c23          	sd	a5,24(a4)
    80002c94:	02c73023          	sd	a2,32(a4)
    80002c98:	34071073          	csrw	mscratch,a4
    80002c9c:	00000797          	auipc	a5,0x0
    80002ca0:	64478793          	addi	a5,a5,1604 # 800032e0 <timervec>
    80002ca4:	30579073          	csrw	mtvec,a5
    80002ca8:	300027f3          	csrr	a5,mstatus
    80002cac:	0087e793          	ori	a5,a5,8
    80002cb0:	30079073          	csrw	mstatus,a5
    80002cb4:	304027f3          	csrr	a5,mie
    80002cb8:	0807e793          	ori	a5,a5,128
    80002cbc:	30479073          	csrw	mie,a5
    80002cc0:	00813403          	ld	s0,8(sp)
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00008067          	ret

0000000080002ccc <system_main>:
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	00113c23          	sd	ra,24(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	0c4080e7          	jalr	196(ra) # 80002da4 <cpuid>
    80002ce8:	00003497          	auipc	s1,0x3
    80002cec:	3e848493          	addi	s1,s1,1000 # 800060d0 <started>
    80002cf0:	02050263          	beqz	a0,80002d14 <system_main+0x48>
    80002cf4:	0004a783          	lw	a5,0(s1)
    80002cf8:	0007879b          	sext.w	a5,a5
    80002cfc:	fe078ce3          	beqz	a5,80002cf4 <system_main+0x28>
    80002d00:	0ff0000f          	fence
    80002d04:	00002517          	auipc	a0,0x2
    80002d08:	4ac50513          	addi	a0,a0,1196 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80002d0c:	00001097          	auipc	ra,0x1
    80002d10:	a70080e7          	jalr	-1424(ra) # 8000377c <panic>
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	9c4080e7          	jalr	-1596(ra) # 800036d8 <consoleinit>
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	150080e7          	jalr	336(ra) # 80003e6c <printfinit>
    80002d24:	00002517          	auipc	a0,0x2
    80002d28:	32450513          	addi	a0,a0,804 # 80005048 <CONSOLE_STATUS+0x38>
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	aac080e7          	jalr	-1364(ra) # 800037d8 <__printf>
    80002d34:	00002517          	auipc	a0,0x2
    80002d38:	44c50513          	addi	a0,a0,1100 # 80005180 <CONSOLE_STATUS+0x170>
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	a9c080e7          	jalr	-1380(ra) # 800037d8 <__printf>
    80002d44:	00002517          	auipc	a0,0x2
    80002d48:	30450513          	addi	a0,a0,772 # 80005048 <CONSOLE_STATUS+0x38>
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	a8c080e7          	jalr	-1396(ra) # 800037d8 <__printf>
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	4a4080e7          	jalr	1188(ra) # 800041f8 <kinit>
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	148080e7          	jalr	328(ra) # 80002ea4 <trapinit>
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	16c080e7          	jalr	364(ra) # 80002ed0 <trapinithart>
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	5b4080e7          	jalr	1460(ra) # 80003320 <plicinit>
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	5d4080e7          	jalr	1492(ra) # 80003348 <plicinithart>
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	078080e7          	jalr	120(ra) # 80002df4 <userinit>
    80002d84:	0ff0000f          	fence
    80002d88:	00100793          	li	a5,1
    80002d8c:	00002517          	auipc	a0,0x2
    80002d90:	40c50513          	addi	a0,a0,1036 # 80005198 <CONSOLE_STATUS+0x188>
    80002d94:	00f4a023          	sw	a5,0(s1)
    80002d98:	00001097          	auipc	ra,0x1
    80002d9c:	a40080e7          	jalr	-1472(ra) # 800037d8 <__printf>
    80002da0:	0000006f          	j	80002da0 <system_main+0xd4>

0000000080002da4 <cpuid>:
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00813423          	sd	s0,8(sp)
    80002dac:	01010413          	addi	s0,sp,16
    80002db0:	00020513          	mv	a0,tp
    80002db4:	00813403          	ld	s0,8(sp)
    80002db8:	0005051b          	sext.w	a0,a0
    80002dbc:	01010113          	addi	sp,sp,16
    80002dc0:	00008067          	ret

0000000080002dc4 <mycpu>:
    80002dc4:	ff010113          	addi	sp,sp,-16
    80002dc8:	00813423          	sd	s0,8(sp)
    80002dcc:	01010413          	addi	s0,sp,16
    80002dd0:	00020793          	mv	a5,tp
    80002dd4:	00813403          	ld	s0,8(sp)
    80002dd8:	0007879b          	sext.w	a5,a5
    80002ddc:	00779793          	slli	a5,a5,0x7
    80002de0:	00004517          	auipc	a0,0x4
    80002de4:	3a050513          	addi	a0,a0,928 # 80007180 <cpus>
    80002de8:	00f50533          	add	a0,a0,a5
    80002dec:	01010113          	addi	sp,sp,16
    80002df0:	00008067          	ret

0000000080002df4 <userinit>:
    80002df4:	ff010113          	addi	sp,sp,-16
    80002df8:	00813423          	sd	s0,8(sp)
    80002dfc:	01010413          	addi	s0,sp,16
    80002e00:	00813403          	ld	s0,8(sp)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	fffff317          	auipc	t1,0xfffff
    80002e0c:	a8830067          	jr	-1400(t1) # 80001890 <main>

0000000080002e10 <either_copyout>:
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00813023          	sd	s0,0(sp)
    80002e18:	00113423          	sd	ra,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	02051663          	bnez	a0,80002e4c <either_copyout+0x3c>
    80002e24:	00058513          	mv	a0,a1
    80002e28:	00060593          	mv	a1,a2
    80002e2c:	0006861b          	sext.w	a2,a3
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	c54080e7          	jalr	-940(ra) # 80004a84 <__memmove>
    80002e38:	00813083          	ld	ra,8(sp)
    80002e3c:	00013403          	ld	s0,0(sp)
    80002e40:	00000513          	li	a0,0
    80002e44:	01010113          	addi	sp,sp,16
    80002e48:	00008067          	ret
    80002e4c:	00002517          	auipc	a0,0x2
    80002e50:	38c50513          	addi	a0,a0,908 # 800051d8 <CONSOLE_STATUS+0x1c8>
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	928080e7          	jalr	-1752(ra) # 8000377c <panic>

0000000080002e5c <either_copyin>:
    80002e5c:	ff010113          	addi	sp,sp,-16
    80002e60:	00813023          	sd	s0,0(sp)
    80002e64:	00113423          	sd	ra,8(sp)
    80002e68:	01010413          	addi	s0,sp,16
    80002e6c:	02059463          	bnez	a1,80002e94 <either_copyin+0x38>
    80002e70:	00060593          	mv	a1,a2
    80002e74:	0006861b          	sext.w	a2,a3
    80002e78:	00002097          	auipc	ra,0x2
    80002e7c:	c0c080e7          	jalr	-1012(ra) # 80004a84 <__memmove>
    80002e80:	00813083          	ld	ra,8(sp)
    80002e84:	00013403          	ld	s0,0(sp)
    80002e88:	00000513          	li	a0,0
    80002e8c:	01010113          	addi	sp,sp,16
    80002e90:	00008067          	ret
    80002e94:	00002517          	auipc	a0,0x2
    80002e98:	36c50513          	addi	a0,a0,876 # 80005200 <CONSOLE_STATUS+0x1f0>
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	8e0080e7          	jalr	-1824(ra) # 8000377c <panic>

0000000080002ea4 <trapinit>:
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813423          	sd	s0,8(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	00813403          	ld	s0,8(sp)
    80002eb4:	00002597          	auipc	a1,0x2
    80002eb8:	37458593          	addi	a1,a1,884 # 80005228 <CONSOLE_STATUS+0x218>
    80002ebc:	00004517          	auipc	a0,0x4
    80002ec0:	34450513          	addi	a0,a0,836 # 80007200 <tickslock>
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00001317          	auipc	t1,0x1
    80002ecc:	5c030067          	jr	1472(t1) # 80004488 <initlock>

0000000080002ed0 <trapinithart>:
    80002ed0:	ff010113          	addi	sp,sp,-16
    80002ed4:	00813423          	sd	s0,8(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    80002edc:	00000797          	auipc	a5,0x0
    80002ee0:	2f478793          	addi	a5,a5,756 # 800031d0 <kernelvec>
    80002ee4:	10579073          	csrw	stvec,a5
    80002ee8:	00813403          	ld	s0,8(sp)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret

0000000080002ef4 <usertrap>:
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00813423          	sd	s0,8(sp)
    80002efc:	01010413          	addi	s0,sp,16
    80002f00:	00813403          	ld	s0,8(sp)
    80002f04:	01010113          	addi	sp,sp,16
    80002f08:	00008067          	ret

0000000080002f0c <usertrapret>:
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00813423          	sd	s0,8(sp)
    80002f14:	01010413          	addi	s0,sp,16
    80002f18:	00813403          	ld	s0,8(sp)
    80002f1c:	01010113          	addi	sp,sp,16
    80002f20:	00008067          	ret

0000000080002f24 <kerneltrap>:
    80002f24:	fe010113          	addi	sp,sp,-32
    80002f28:	00813823          	sd	s0,16(sp)
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00913423          	sd	s1,8(sp)
    80002f34:	02010413          	addi	s0,sp,32
    80002f38:	142025f3          	csrr	a1,scause
    80002f3c:	100027f3          	csrr	a5,sstatus
    80002f40:	0027f793          	andi	a5,a5,2
    80002f44:	10079c63          	bnez	a5,8000305c <kerneltrap+0x138>
    80002f48:	142027f3          	csrr	a5,scause
    80002f4c:	0207ce63          	bltz	a5,80002f88 <kerneltrap+0x64>
    80002f50:	00002517          	auipc	a0,0x2
    80002f54:	32050513          	addi	a0,a0,800 # 80005270 <CONSOLE_STATUS+0x260>
    80002f58:	00001097          	auipc	ra,0x1
    80002f5c:	880080e7          	jalr	-1920(ra) # 800037d8 <__printf>
    80002f60:	141025f3          	csrr	a1,sepc
    80002f64:	14302673          	csrr	a2,stval
    80002f68:	00002517          	auipc	a0,0x2
    80002f6c:	31850513          	addi	a0,a0,792 # 80005280 <CONSOLE_STATUS+0x270>
    80002f70:	00001097          	auipc	ra,0x1
    80002f74:	868080e7          	jalr	-1944(ra) # 800037d8 <__printf>
    80002f78:	00002517          	auipc	a0,0x2
    80002f7c:	32050513          	addi	a0,a0,800 # 80005298 <CONSOLE_STATUS+0x288>
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	7fc080e7          	jalr	2044(ra) # 8000377c <panic>
    80002f88:	0ff7f713          	andi	a4,a5,255
    80002f8c:	00900693          	li	a3,9
    80002f90:	04d70063          	beq	a4,a3,80002fd0 <kerneltrap+0xac>
    80002f94:	fff00713          	li	a4,-1
    80002f98:	03f71713          	slli	a4,a4,0x3f
    80002f9c:	00170713          	addi	a4,a4,1
    80002fa0:	fae798e3          	bne	a5,a4,80002f50 <kerneltrap+0x2c>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	e00080e7          	jalr	-512(ra) # 80002da4 <cpuid>
    80002fac:	06050663          	beqz	a0,80003018 <kerneltrap+0xf4>
    80002fb0:	144027f3          	csrr	a5,sip
    80002fb4:	ffd7f793          	andi	a5,a5,-3
    80002fb8:	14479073          	csrw	sip,a5
    80002fbc:	01813083          	ld	ra,24(sp)
    80002fc0:	01013403          	ld	s0,16(sp)
    80002fc4:	00813483          	ld	s1,8(sp)
    80002fc8:	02010113          	addi	sp,sp,32
    80002fcc:	00008067          	ret
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	3c4080e7          	jalr	964(ra) # 80003394 <plic_claim>
    80002fd8:	00a00793          	li	a5,10
    80002fdc:	00050493          	mv	s1,a0
    80002fe0:	06f50863          	beq	a0,a5,80003050 <kerneltrap+0x12c>
    80002fe4:	fc050ce3          	beqz	a0,80002fbc <kerneltrap+0x98>
    80002fe8:	00050593          	mv	a1,a0
    80002fec:	00002517          	auipc	a0,0x2
    80002ff0:	26450513          	addi	a0,a0,612 # 80005250 <CONSOLE_STATUS+0x240>
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	7e4080e7          	jalr	2020(ra) # 800037d8 <__printf>
    80002ffc:	01013403          	ld	s0,16(sp)
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	00048513          	mv	a0,s1
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	02010113          	addi	sp,sp,32
    80003010:	00000317          	auipc	t1,0x0
    80003014:	3bc30067          	jr	956(t1) # 800033cc <plic_complete>
    80003018:	00004517          	auipc	a0,0x4
    8000301c:	1e850513          	addi	a0,a0,488 # 80007200 <tickslock>
    80003020:	00001097          	auipc	ra,0x1
    80003024:	48c080e7          	jalr	1164(ra) # 800044ac <acquire>
    80003028:	00003717          	auipc	a4,0x3
    8000302c:	0ac70713          	addi	a4,a4,172 # 800060d4 <ticks>
    80003030:	00072783          	lw	a5,0(a4)
    80003034:	00004517          	auipc	a0,0x4
    80003038:	1cc50513          	addi	a0,a0,460 # 80007200 <tickslock>
    8000303c:	0017879b          	addiw	a5,a5,1
    80003040:	00f72023          	sw	a5,0(a4)
    80003044:	00001097          	auipc	ra,0x1
    80003048:	534080e7          	jalr	1332(ra) # 80004578 <release>
    8000304c:	f65ff06f          	j	80002fb0 <kerneltrap+0x8c>
    80003050:	00001097          	auipc	ra,0x1
    80003054:	090080e7          	jalr	144(ra) # 800040e0 <uartintr>
    80003058:	fa5ff06f          	j	80002ffc <kerneltrap+0xd8>
    8000305c:	00002517          	auipc	a0,0x2
    80003060:	1d450513          	addi	a0,a0,468 # 80005230 <CONSOLE_STATUS+0x220>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	718080e7          	jalr	1816(ra) # 8000377c <panic>

000000008000306c <clockintr>:
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00004497          	auipc	s1,0x4
    80003084:	18048493          	addi	s1,s1,384 # 80007200 <tickslock>
    80003088:	00048513          	mv	a0,s1
    8000308c:	00001097          	auipc	ra,0x1
    80003090:	420080e7          	jalr	1056(ra) # 800044ac <acquire>
    80003094:	00003717          	auipc	a4,0x3
    80003098:	04070713          	addi	a4,a4,64 # 800060d4 <ticks>
    8000309c:	00072783          	lw	a5,0(a4)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	01813083          	ld	ra,24(sp)
    800030a8:	00048513          	mv	a0,s1
    800030ac:	0017879b          	addiw	a5,a5,1
    800030b0:	00813483          	ld	s1,8(sp)
    800030b4:	00f72023          	sw	a5,0(a4)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00001317          	auipc	t1,0x1
    800030c0:	4bc30067          	jr	1212(t1) # 80004578 <release>

00000000800030c4 <devintr>:
    800030c4:	142027f3          	csrr	a5,scause
    800030c8:	00000513          	li	a0,0
    800030cc:	0007c463          	bltz	a5,800030d4 <devintr+0x10>
    800030d0:	00008067          	ret
    800030d4:	fe010113          	addi	sp,sp,-32
    800030d8:	00813823          	sd	s0,16(sp)
    800030dc:	00113c23          	sd	ra,24(sp)
    800030e0:	00913423          	sd	s1,8(sp)
    800030e4:	02010413          	addi	s0,sp,32
    800030e8:	0ff7f713          	andi	a4,a5,255
    800030ec:	00900693          	li	a3,9
    800030f0:	04d70c63          	beq	a4,a3,80003148 <devintr+0x84>
    800030f4:	fff00713          	li	a4,-1
    800030f8:	03f71713          	slli	a4,a4,0x3f
    800030fc:	00170713          	addi	a4,a4,1
    80003100:	00e78c63          	beq	a5,a4,80003118 <devintr+0x54>
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	c8c080e7          	jalr	-884(ra) # 80002da4 <cpuid>
    80003120:	06050663          	beqz	a0,8000318c <devintr+0xc8>
    80003124:	144027f3          	csrr	a5,sip
    80003128:	ffd7f793          	andi	a5,a5,-3
    8000312c:	14479073          	csrw	sip,a5
    80003130:	01813083          	ld	ra,24(sp)
    80003134:	01013403          	ld	s0,16(sp)
    80003138:	00813483          	ld	s1,8(sp)
    8000313c:	00200513          	li	a0,2
    80003140:	02010113          	addi	sp,sp,32
    80003144:	00008067          	ret
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	24c080e7          	jalr	588(ra) # 80003394 <plic_claim>
    80003150:	00a00793          	li	a5,10
    80003154:	00050493          	mv	s1,a0
    80003158:	06f50663          	beq	a0,a5,800031c4 <devintr+0x100>
    8000315c:	00100513          	li	a0,1
    80003160:	fa0482e3          	beqz	s1,80003104 <devintr+0x40>
    80003164:	00048593          	mv	a1,s1
    80003168:	00002517          	auipc	a0,0x2
    8000316c:	0e850513          	addi	a0,a0,232 # 80005250 <CONSOLE_STATUS+0x240>
    80003170:	00000097          	auipc	ra,0x0
    80003174:	668080e7          	jalr	1640(ra) # 800037d8 <__printf>
    80003178:	00048513          	mv	a0,s1
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	250080e7          	jalr	592(ra) # 800033cc <plic_complete>
    80003184:	00100513          	li	a0,1
    80003188:	f7dff06f          	j	80003104 <devintr+0x40>
    8000318c:	00004517          	auipc	a0,0x4
    80003190:	07450513          	addi	a0,a0,116 # 80007200 <tickslock>
    80003194:	00001097          	auipc	ra,0x1
    80003198:	318080e7          	jalr	792(ra) # 800044ac <acquire>
    8000319c:	00003717          	auipc	a4,0x3
    800031a0:	f3870713          	addi	a4,a4,-200 # 800060d4 <ticks>
    800031a4:	00072783          	lw	a5,0(a4)
    800031a8:	00004517          	auipc	a0,0x4
    800031ac:	05850513          	addi	a0,a0,88 # 80007200 <tickslock>
    800031b0:	0017879b          	addiw	a5,a5,1
    800031b4:	00f72023          	sw	a5,0(a4)
    800031b8:	00001097          	auipc	ra,0x1
    800031bc:	3c0080e7          	jalr	960(ra) # 80004578 <release>
    800031c0:	f65ff06f          	j	80003124 <devintr+0x60>
    800031c4:	00001097          	auipc	ra,0x1
    800031c8:	f1c080e7          	jalr	-228(ra) # 800040e0 <uartintr>
    800031cc:	fadff06f          	j	80003178 <devintr+0xb4>

00000000800031d0 <kernelvec>:
    800031d0:	f0010113          	addi	sp,sp,-256
    800031d4:	00113023          	sd	ra,0(sp)
    800031d8:	00213423          	sd	sp,8(sp)
    800031dc:	00313823          	sd	gp,16(sp)
    800031e0:	00413c23          	sd	tp,24(sp)
    800031e4:	02513023          	sd	t0,32(sp)
    800031e8:	02613423          	sd	t1,40(sp)
    800031ec:	02713823          	sd	t2,48(sp)
    800031f0:	02813c23          	sd	s0,56(sp)
    800031f4:	04913023          	sd	s1,64(sp)
    800031f8:	04a13423          	sd	a0,72(sp)
    800031fc:	04b13823          	sd	a1,80(sp)
    80003200:	04c13c23          	sd	a2,88(sp)
    80003204:	06d13023          	sd	a3,96(sp)
    80003208:	06e13423          	sd	a4,104(sp)
    8000320c:	06f13823          	sd	a5,112(sp)
    80003210:	07013c23          	sd	a6,120(sp)
    80003214:	09113023          	sd	a7,128(sp)
    80003218:	09213423          	sd	s2,136(sp)
    8000321c:	09313823          	sd	s3,144(sp)
    80003220:	09413c23          	sd	s4,152(sp)
    80003224:	0b513023          	sd	s5,160(sp)
    80003228:	0b613423          	sd	s6,168(sp)
    8000322c:	0b713823          	sd	s7,176(sp)
    80003230:	0b813c23          	sd	s8,184(sp)
    80003234:	0d913023          	sd	s9,192(sp)
    80003238:	0da13423          	sd	s10,200(sp)
    8000323c:	0db13823          	sd	s11,208(sp)
    80003240:	0dc13c23          	sd	t3,216(sp)
    80003244:	0fd13023          	sd	t4,224(sp)
    80003248:	0fe13423          	sd	t5,232(sp)
    8000324c:	0ff13823          	sd	t6,240(sp)
    80003250:	cd5ff0ef          	jal	ra,80002f24 <kerneltrap>
    80003254:	00013083          	ld	ra,0(sp)
    80003258:	00813103          	ld	sp,8(sp)
    8000325c:	01013183          	ld	gp,16(sp)
    80003260:	02013283          	ld	t0,32(sp)
    80003264:	02813303          	ld	t1,40(sp)
    80003268:	03013383          	ld	t2,48(sp)
    8000326c:	03813403          	ld	s0,56(sp)
    80003270:	04013483          	ld	s1,64(sp)
    80003274:	04813503          	ld	a0,72(sp)
    80003278:	05013583          	ld	a1,80(sp)
    8000327c:	05813603          	ld	a2,88(sp)
    80003280:	06013683          	ld	a3,96(sp)
    80003284:	06813703          	ld	a4,104(sp)
    80003288:	07013783          	ld	a5,112(sp)
    8000328c:	07813803          	ld	a6,120(sp)
    80003290:	08013883          	ld	a7,128(sp)
    80003294:	08813903          	ld	s2,136(sp)
    80003298:	09013983          	ld	s3,144(sp)
    8000329c:	09813a03          	ld	s4,152(sp)
    800032a0:	0a013a83          	ld	s5,160(sp)
    800032a4:	0a813b03          	ld	s6,168(sp)
    800032a8:	0b013b83          	ld	s7,176(sp)
    800032ac:	0b813c03          	ld	s8,184(sp)
    800032b0:	0c013c83          	ld	s9,192(sp)
    800032b4:	0c813d03          	ld	s10,200(sp)
    800032b8:	0d013d83          	ld	s11,208(sp)
    800032bc:	0d813e03          	ld	t3,216(sp)
    800032c0:	0e013e83          	ld	t4,224(sp)
    800032c4:	0e813f03          	ld	t5,232(sp)
    800032c8:	0f013f83          	ld	t6,240(sp)
    800032cc:	10010113          	addi	sp,sp,256
    800032d0:	10200073          	sret
    800032d4:	00000013          	nop
    800032d8:	00000013          	nop
    800032dc:	00000013          	nop

00000000800032e0 <timervec>:
    800032e0:	34051573          	csrrw	a0,mscratch,a0
    800032e4:	00b53023          	sd	a1,0(a0)
    800032e8:	00c53423          	sd	a2,8(a0)
    800032ec:	00d53823          	sd	a3,16(a0)
    800032f0:	01853583          	ld	a1,24(a0)
    800032f4:	02053603          	ld	a2,32(a0)
    800032f8:	0005b683          	ld	a3,0(a1)
    800032fc:	00c686b3          	add	a3,a3,a2
    80003300:	00d5b023          	sd	a3,0(a1)
    80003304:	00200593          	li	a1,2
    80003308:	14459073          	csrw	sip,a1
    8000330c:	01053683          	ld	a3,16(a0)
    80003310:	00853603          	ld	a2,8(a0)
    80003314:	00053583          	ld	a1,0(a0)
    80003318:	34051573          	csrrw	a0,mscratch,a0
    8000331c:	30200073          	mret

0000000080003320 <plicinit>:
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00813423          	sd	s0,8(sp)
    80003328:	01010413          	addi	s0,sp,16
    8000332c:	00813403          	ld	s0,8(sp)
    80003330:	0c0007b7          	lui	a5,0xc000
    80003334:	00100713          	li	a4,1
    80003338:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000333c:	00e7a223          	sw	a4,4(a5)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <plicinithart>:
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00813023          	sd	s0,0(sp)
    80003350:	00113423          	sd	ra,8(sp)
    80003354:	01010413          	addi	s0,sp,16
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	a4c080e7          	jalr	-1460(ra) # 80002da4 <cpuid>
    80003360:	0085171b          	slliw	a4,a0,0x8
    80003364:	0c0027b7          	lui	a5,0xc002
    80003368:	00e787b3          	add	a5,a5,a4
    8000336c:	40200713          	li	a4,1026
    80003370:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003374:	00813083          	ld	ra,8(sp)
    80003378:	00013403          	ld	s0,0(sp)
    8000337c:	00d5151b          	slliw	a0,a0,0xd
    80003380:	0c2017b7          	lui	a5,0xc201
    80003384:	00a78533          	add	a0,a5,a0
    80003388:	00052023          	sw	zero,0(a0)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <plic_claim>:
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00813023          	sd	s0,0(sp)
    8000339c:	00113423          	sd	ra,8(sp)
    800033a0:	01010413          	addi	s0,sp,16
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	a00080e7          	jalr	-1536(ra) # 80002da4 <cpuid>
    800033ac:	00813083          	ld	ra,8(sp)
    800033b0:	00013403          	ld	s0,0(sp)
    800033b4:	00d5151b          	slliw	a0,a0,0xd
    800033b8:	0c2017b7          	lui	a5,0xc201
    800033bc:	00a78533          	add	a0,a5,a0
    800033c0:	00452503          	lw	a0,4(a0)
    800033c4:	01010113          	addi	sp,sp,16
    800033c8:	00008067          	ret

00000000800033cc <plic_complete>:
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00813823          	sd	s0,16(sp)
    800033d4:	00913423          	sd	s1,8(sp)
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	02010413          	addi	s0,sp,32
    800033e0:	00050493          	mv	s1,a0
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	9c0080e7          	jalr	-1600(ra) # 80002da4 <cpuid>
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00d5179b          	slliw	a5,a0,0xd
    800033f8:	0c201737          	lui	a4,0xc201
    800033fc:	00f707b3          	add	a5,a4,a5
    80003400:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret

0000000080003410 <consolewrite>:
    80003410:	fb010113          	addi	sp,sp,-80
    80003414:	04813023          	sd	s0,64(sp)
    80003418:	04113423          	sd	ra,72(sp)
    8000341c:	02913c23          	sd	s1,56(sp)
    80003420:	03213823          	sd	s2,48(sp)
    80003424:	03313423          	sd	s3,40(sp)
    80003428:	03413023          	sd	s4,32(sp)
    8000342c:	01513c23          	sd	s5,24(sp)
    80003430:	05010413          	addi	s0,sp,80
    80003434:	06c05c63          	blez	a2,800034ac <consolewrite+0x9c>
    80003438:	00060993          	mv	s3,a2
    8000343c:	00050a13          	mv	s4,a0
    80003440:	00058493          	mv	s1,a1
    80003444:	00000913          	li	s2,0
    80003448:	fff00a93          	li	s5,-1
    8000344c:	01c0006f          	j	80003468 <consolewrite+0x58>
    80003450:	fbf44503          	lbu	a0,-65(s0)
    80003454:	0019091b          	addiw	s2,s2,1
    80003458:	00148493          	addi	s1,s1,1
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	a9c080e7          	jalr	-1380(ra) # 80003ef8 <uartputc>
    80003464:	03298063          	beq	s3,s2,80003484 <consolewrite+0x74>
    80003468:	00048613          	mv	a2,s1
    8000346c:	00100693          	li	a3,1
    80003470:	000a0593          	mv	a1,s4
    80003474:	fbf40513          	addi	a0,s0,-65
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	9e4080e7          	jalr	-1564(ra) # 80002e5c <either_copyin>
    80003480:	fd5518e3          	bne	a0,s5,80003450 <consolewrite+0x40>
    80003484:	04813083          	ld	ra,72(sp)
    80003488:	04013403          	ld	s0,64(sp)
    8000348c:	03813483          	ld	s1,56(sp)
    80003490:	02813983          	ld	s3,40(sp)
    80003494:	02013a03          	ld	s4,32(sp)
    80003498:	01813a83          	ld	s5,24(sp)
    8000349c:	00090513          	mv	a0,s2
    800034a0:	03013903          	ld	s2,48(sp)
    800034a4:	05010113          	addi	sp,sp,80
    800034a8:	00008067          	ret
    800034ac:	00000913          	li	s2,0
    800034b0:	fd5ff06f          	j	80003484 <consolewrite+0x74>

00000000800034b4 <consoleread>:
    800034b4:	f9010113          	addi	sp,sp,-112
    800034b8:	06813023          	sd	s0,96(sp)
    800034bc:	04913c23          	sd	s1,88(sp)
    800034c0:	05213823          	sd	s2,80(sp)
    800034c4:	05313423          	sd	s3,72(sp)
    800034c8:	05413023          	sd	s4,64(sp)
    800034cc:	03513c23          	sd	s5,56(sp)
    800034d0:	03613823          	sd	s6,48(sp)
    800034d4:	03713423          	sd	s7,40(sp)
    800034d8:	03813023          	sd	s8,32(sp)
    800034dc:	06113423          	sd	ra,104(sp)
    800034e0:	01913c23          	sd	s9,24(sp)
    800034e4:	07010413          	addi	s0,sp,112
    800034e8:	00060b93          	mv	s7,a2
    800034ec:	00050913          	mv	s2,a0
    800034f0:	00058c13          	mv	s8,a1
    800034f4:	00060b1b          	sext.w	s6,a2
    800034f8:	00004497          	auipc	s1,0x4
    800034fc:	d3048493          	addi	s1,s1,-720 # 80007228 <cons>
    80003500:	00400993          	li	s3,4
    80003504:	fff00a13          	li	s4,-1
    80003508:	00a00a93          	li	s5,10
    8000350c:	05705e63          	blez	s7,80003568 <consoleread+0xb4>
    80003510:	09c4a703          	lw	a4,156(s1)
    80003514:	0984a783          	lw	a5,152(s1)
    80003518:	0007071b          	sext.w	a4,a4
    8000351c:	08e78463          	beq	a5,a4,800035a4 <consoleread+0xf0>
    80003520:	07f7f713          	andi	a4,a5,127
    80003524:	00e48733          	add	a4,s1,a4
    80003528:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000352c:	0017869b          	addiw	a3,a5,1
    80003530:	08d4ac23          	sw	a3,152(s1)
    80003534:	00070c9b          	sext.w	s9,a4
    80003538:	0b370663          	beq	a4,s3,800035e4 <consoleread+0x130>
    8000353c:	00100693          	li	a3,1
    80003540:	f9f40613          	addi	a2,s0,-97
    80003544:	000c0593          	mv	a1,s8
    80003548:	00090513          	mv	a0,s2
    8000354c:	f8e40fa3          	sb	a4,-97(s0)
    80003550:	00000097          	auipc	ra,0x0
    80003554:	8c0080e7          	jalr	-1856(ra) # 80002e10 <either_copyout>
    80003558:	01450863          	beq	a0,s4,80003568 <consoleread+0xb4>
    8000355c:	001c0c13          	addi	s8,s8,1
    80003560:	fffb8b9b          	addiw	s7,s7,-1
    80003564:	fb5c94e3          	bne	s9,s5,8000350c <consoleread+0x58>
    80003568:	000b851b          	sext.w	a0,s7
    8000356c:	06813083          	ld	ra,104(sp)
    80003570:	06013403          	ld	s0,96(sp)
    80003574:	05813483          	ld	s1,88(sp)
    80003578:	05013903          	ld	s2,80(sp)
    8000357c:	04813983          	ld	s3,72(sp)
    80003580:	04013a03          	ld	s4,64(sp)
    80003584:	03813a83          	ld	s5,56(sp)
    80003588:	02813b83          	ld	s7,40(sp)
    8000358c:	02013c03          	ld	s8,32(sp)
    80003590:	01813c83          	ld	s9,24(sp)
    80003594:	40ab053b          	subw	a0,s6,a0
    80003598:	03013b03          	ld	s6,48(sp)
    8000359c:	07010113          	addi	sp,sp,112
    800035a0:	00008067          	ret
    800035a4:	00001097          	auipc	ra,0x1
    800035a8:	1d8080e7          	jalr	472(ra) # 8000477c <push_on>
    800035ac:	0984a703          	lw	a4,152(s1)
    800035b0:	09c4a783          	lw	a5,156(s1)
    800035b4:	0007879b          	sext.w	a5,a5
    800035b8:	fef70ce3          	beq	a4,a5,800035b0 <consoleread+0xfc>
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	234080e7          	jalr	564(ra) # 800047f0 <pop_on>
    800035c4:	0984a783          	lw	a5,152(s1)
    800035c8:	07f7f713          	andi	a4,a5,127
    800035cc:	00e48733          	add	a4,s1,a4
    800035d0:	01874703          	lbu	a4,24(a4)
    800035d4:	0017869b          	addiw	a3,a5,1
    800035d8:	08d4ac23          	sw	a3,152(s1)
    800035dc:	00070c9b          	sext.w	s9,a4
    800035e0:	f5371ee3          	bne	a4,s3,8000353c <consoleread+0x88>
    800035e4:	000b851b          	sext.w	a0,s7
    800035e8:	f96bf2e3          	bgeu	s7,s6,8000356c <consoleread+0xb8>
    800035ec:	08f4ac23          	sw	a5,152(s1)
    800035f0:	f7dff06f          	j	8000356c <consoleread+0xb8>

00000000800035f4 <consputc>:
    800035f4:	10000793          	li	a5,256
    800035f8:	00f50663          	beq	a0,a5,80003604 <consputc+0x10>
    800035fc:	00001317          	auipc	t1,0x1
    80003600:	9f430067          	jr	-1548(t1) # 80003ff0 <uartputc_sync>
    80003604:	ff010113          	addi	sp,sp,-16
    80003608:	00113423          	sd	ra,8(sp)
    8000360c:	00813023          	sd	s0,0(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00800513          	li	a0,8
    80003618:	00001097          	auipc	ra,0x1
    8000361c:	9d8080e7          	jalr	-1576(ra) # 80003ff0 <uartputc_sync>
    80003620:	02000513          	li	a0,32
    80003624:	00001097          	auipc	ra,0x1
    80003628:	9cc080e7          	jalr	-1588(ra) # 80003ff0 <uartputc_sync>
    8000362c:	00013403          	ld	s0,0(sp)
    80003630:	00813083          	ld	ra,8(sp)
    80003634:	00800513          	li	a0,8
    80003638:	01010113          	addi	sp,sp,16
    8000363c:	00001317          	auipc	t1,0x1
    80003640:	9b430067          	jr	-1612(t1) # 80003ff0 <uartputc_sync>

0000000080003644 <consoleintr>:
    80003644:	fe010113          	addi	sp,sp,-32
    80003648:	00813823          	sd	s0,16(sp)
    8000364c:	00913423          	sd	s1,8(sp)
    80003650:	01213023          	sd	s2,0(sp)
    80003654:	00113c23          	sd	ra,24(sp)
    80003658:	02010413          	addi	s0,sp,32
    8000365c:	00004917          	auipc	s2,0x4
    80003660:	bcc90913          	addi	s2,s2,-1076 # 80007228 <cons>
    80003664:	00050493          	mv	s1,a0
    80003668:	00090513          	mv	a0,s2
    8000366c:	00001097          	auipc	ra,0x1
    80003670:	e40080e7          	jalr	-448(ra) # 800044ac <acquire>
    80003674:	02048c63          	beqz	s1,800036ac <consoleintr+0x68>
    80003678:	0a092783          	lw	a5,160(s2)
    8000367c:	09892703          	lw	a4,152(s2)
    80003680:	07f00693          	li	a3,127
    80003684:	40e7873b          	subw	a4,a5,a4
    80003688:	02e6e263          	bltu	a3,a4,800036ac <consoleintr+0x68>
    8000368c:	00d00713          	li	a4,13
    80003690:	04e48063          	beq	s1,a4,800036d0 <consoleintr+0x8c>
    80003694:	07f7f713          	andi	a4,a5,127
    80003698:	00e90733          	add	a4,s2,a4
    8000369c:	0017879b          	addiw	a5,a5,1
    800036a0:	0af92023          	sw	a5,160(s2)
    800036a4:	00970c23          	sb	s1,24(a4)
    800036a8:	08f92e23          	sw	a5,156(s2)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	01813083          	ld	ra,24(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	00013903          	ld	s2,0(sp)
    800036bc:	00004517          	auipc	a0,0x4
    800036c0:	b6c50513          	addi	a0,a0,-1172 # 80007228 <cons>
    800036c4:	02010113          	addi	sp,sp,32
    800036c8:	00001317          	auipc	t1,0x1
    800036cc:	eb030067          	jr	-336(t1) # 80004578 <release>
    800036d0:	00a00493          	li	s1,10
    800036d4:	fc1ff06f          	j	80003694 <consoleintr+0x50>

00000000800036d8 <consoleinit>:
    800036d8:	fe010113          	addi	sp,sp,-32
    800036dc:	00113c23          	sd	ra,24(sp)
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00913423          	sd	s1,8(sp)
    800036e8:	02010413          	addi	s0,sp,32
    800036ec:	00004497          	auipc	s1,0x4
    800036f0:	b3c48493          	addi	s1,s1,-1220 # 80007228 <cons>
    800036f4:	00048513          	mv	a0,s1
    800036f8:	00002597          	auipc	a1,0x2
    800036fc:	bb058593          	addi	a1,a1,-1104 # 800052a8 <CONSOLE_STATUS+0x298>
    80003700:	00001097          	auipc	ra,0x1
    80003704:	d88080e7          	jalr	-632(ra) # 80004488 <initlock>
    80003708:	00000097          	auipc	ra,0x0
    8000370c:	7ac080e7          	jalr	1964(ra) # 80003eb4 <uartinit>
    80003710:	01813083          	ld	ra,24(sp)
    80003714:	01013403          	ld	s0,16(sp)
    80003718:	00000797          	auipc	a5,0x0
    8000371c:	d9c78793          	addi	a5,a5,-612 # 800034b4 <consoleread>
    80003720:	0af4bc23          	sd	a5,184(s1)
    80003724:	00000797          	auipc	a5,0x0
    80003728:	cec78793          	addi	a5,a5,-788 # 80003410 <consolewrite>
    8000372c:	0cf4b023          	sd	a5,192(s1)
    80003730:	00813483          	ld	s1,8(sp)
    80003734:	02010113          	addi	sp,sp,32
    80003738:	00008067          	ret

000000008000373c <console_read>:
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00813423          	sd	s0,8(sp)
    80003744:	01010413          	addi	s0,sp,16
    80003748:	00813403          	ld	s0,8(sp)
    8000374c:	00004317          	auipc	t1,0x4
    80003750:	b9433303          	ld	t1,-1132(t1) # 800072e0 <devsw+0x10>
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00030067          	jr	t1

000000008000375c <console_write>:
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00813423          	sd	s0,8(sp)
    80003764:	01010413          	addi	s0,sp,16
    80003768:	00813403          	ld	s0,8(sp)
    8000376c:	00004317          	auipc	t1,0x4
    80003770:	b7c33303          	ld	t1,-1156(t1) # 800072e8 <devsw+0x18>
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00030067          	jr	t1

000000008000377c <panic>:
    8000377c:	fe010113          	addi	sp,sp,-32
    80003780:	00113c23          	sd	ra,24(sp)
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	02010413          	addi	s0,sp,32
    80003790:	00050493          	mv	s1,a0
    80003794:	00002517          	auipc	a0,0x2
    80003798:	b1c50513          	addi	a0,a0,-1252 # 800052b0 <CONSOLE_STATUS+0x2a0>
    8000379c:	00004797          	auipc	a5,0x4
    800037a0:	be07a623          	sw	zero,-1044(a5) # 80007388 <pr+0x18>
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	034080e7          	jalr	52(ra) # 800037d8 <__printf>
    800037ac:	00048513          	mv	a0,s1
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	028080e7          	jalr	40(ra) # 800037d8 <__printf>
    800037b8:	00002517          	auipc	a0,0x2
    800037bc:	89050513          	addi	a0,a0,-1904 # 80005048 <CONSOLE_STATUS+0x38>
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	018080e7          	jalr	24(ra) # 800037d8 <__printf>
    800037c8:	00100793          	li	a5,1
    800037cc:	00003717          	auipc	a4,0x3
    800037d0:	90f72623          	sw	a5,-1780(a4) # 800060d8 <panicked>
    800037d4:	0000006f          	j	800037d4 <panic+0x58>

00000000800037d8 <__printf>:
    800037d8:	f3010113          	addi	sp,sp,-208
    800037dc:	08813023          	sd	s0,128(sp)
    800037e0:	07313423          	sd	s3,104(sp)
    800037e4:	09010413          	addi	s0,sp,144
    800037e8:	05813023          	sd	s8,64(sp)
    800037ec:	08113423          	sd	ra,136(sp)
    800037f0:	06913c23          	sd	s1,120(sp)
    800037f4:	07213823          	sd	s2,112(sp)
    800037f8:	07413023          	sd	s4,96(sp)
    800037fc:	05513c23          	sd	s5,88(sp)
    80003800:	05613823          	sd	s6,80(sp)
    80003804:	05713423          	sd	s7,72(sp)
    80003808:	03913c23          	sd	s9,56(sp)
    8000380c:	03a13823          	sd	s10,48(sp)
    80003810:	03b13423          	sd	s11,40(sp)
    80003814:	00004317          	auipc	t1,0x4
    80003818:	b5c30313          	addi	t1,t1,-1188 # 80007370 <pr>
    8000381c:	01832c03          	lw	s8,24(t1)
    80003820:	00b43423          	sd	a1,8(s0)
    80003824:	00c43823          	sd	a2,16(s0)
    80003828:	00d43c23          	sd	a3,24(s0)
    8000382c:	02e43023          	sd	a4,32(s0)
    80003830:	02f43423          	sd	a5,40(s0)
    80003834:	03043823          	sd	a6,48(s0)
    80003838:	03143c23          	sd	a7,56(s0)
    8000383c:	00050993          	mv	s3,a0
    80003840:	4a0c1663          	bnez	s8,80003cec <__printf+0x514>
    80003844:	60098c63          	beqz	s3,80003e5c <__printf+0x684>
    80003848:	0009c503          	lbu	a0,0(s3)
    8000384c:	00840793          	addi	a5,s0,8
    80003850:	f6f43c23          	sd	a5,-136(s0)
    80003854:	00000493          	li	s1,0
    80003858:	22050063          	beqz	a0,80003a78 <__printf+0x2a0>
    8000385c:	00002a37          	lui	s4,0x2
    80003860:	00018ab7          	lui	s5,0x18
    80003864:	000f4b37          	lui	s6,0xf4
    80003868:	00989bb7          	lui	s7,0x989
    8000386c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003870:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003874:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003878:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000387c:	00148c9b          	addiw	s9,s1,1
    80003880:	02500793          	li	a5,37
    80003884:	01998933          	add	s2,s3,s9
    80003888:	38f51263          	bne	a0,a5,80003c0c <__printf+0x434>
    8000388c:	00094783          	lbu	a5,0(s2)
    80003890:	00078c9b          	sext.w	s9,a5
    80003894:	1e078263          	beqz	a5,80003a78 <__printf+0x2a0>
    80003898:	0024849b          	addiw	s1,s1,2
    8000389c:	07000713          	li	a4,112
    800038a0:	00998933          	add	s2,s3,s1
    800038a4:	38e78a63          	beq	a5,a4,80003c38 <__printf+0x460>
    800038a8:	20f76863          	bltu	a4,a5,80003ab8 <__printf+0x2e0>
    800038ac:	42a78863          	beq	a5,a0,80003cdc <__printf+0x504>
    800038b0:	06400713          	li	a4,100
    800038b4:	40e79663          	bne	a5,a4,80003cc0 <__printf+0x4e8>
    800038b8:	f7843783          	ld	a5,-136(s0)
    800038bc:	0007a603          	lw	a2,0(a5)
    800038c0:	00878793          	addi	a5,a5,8
    800038c4:	f6f43c23          	sd	a5,-136(s0)
    800038c8:	42064a63          	bltz	a2,80003cfc <__printf+0x524>
    800038cc:	00a00713          	li	a4,10
    800038d0:	02e677bb          	remuw	a5,a2,a4
    800038d4:	00002d97          	auipc	s11,0x2
    800038d8:	a04d8d93          	addi	s11,s11,-1532 # 800052d8 <digits>
    800038dc:	00900593          	li	a1,9
    800038e0:	0006051b          	sext.w	a0,a2
    800038e4:	00000c93          	li	s9,0
    800038e8:	02079793          	slli	a5,a5,0x20
    800038ec:	0207d793          	srli	a5,a5,0x20
    800038f0:	00fd87b3          	add	a5,s11,a5
    800038f4:	0007c783          	lbu	a5,0(a5)
    800038f8:	02e656bb          	divuw	a3,a2,a4
    800038fc:	f8f40023          	sb	a5,-128(s0)
    80003900:	14c5d863          	bge	a1,a2,80003a50 <__printf+0x278>
    80003904:	06300593          	li	a1,99
    80003908:	00100c93          	li	s9,1
    8000390c:	02e6f7bb          	remuw	a5,a3,a4
    80003910:	02079793          	slli	a5,a5,0x20
    80003914:	0207d793          	srli	a5,a5,0x20
    80003918:	00fd87b3          	add	a5,s11,a5
    8000391c:	0007c783          	lbu	a5,0(a5)
    80003920:	02e6d73b          	divuw	a4,a3,a4
    80003924:	f8f400a3          	sb	a5,-127(s0)
    80003928:	12a5f463          	bgeu	a1,a0,80003a50 <__printf+0x278>
    8000392c:	00a00693          	li	a3,10
    80003930:	00900593          	li	a1,9
    80003934:	02d777bb          	remuw	a5,a4,a3
    80003938:	02079793          	slli	a5,a5,0x20
    8000393c:	0207d793          	srli	a5,a5,0x20
    80003940:	00fd87b3          	add	a5,s11,a5
    80003944:	0007c503          	lbu	a0,0(a5)
    80003948:	02d757bb          	divuw	a5,a4,a3
    8000394c:	f8a40123          	sb	a0,-126(s0)
    80003950:	48e5f263          	bgeu	a1,a4,80003dd4 <__printf+0x5fc>
    80003954:	06300513          	li	a0,99
    80003958:	02d7f5bb          	remuw	a1,a5,a3
    8000395c:	02059593          	slli	a1,a1,0x20
    80003960:	0205d593          	srli	a1,a1,0x20
    80003964:	00bd85b3          	add	a1,s11,a1
    80003968:	0005c583          	lbu	a1,0(a1)
    8000396c:	02d7d7bb          	divuw	a5,a5,a3
    80003970:	f8b401a3          	sb	a1,-125(s0)
    80003974:	48e57263          	bgeu	a0,a4,80003df8 <__printf+0x620>
    80003978:	3e700513          	li	a0,999
    8000397c:	02d7f5bb          	remuw	a1,a5,a3
    80003980:	02059593          	slli	a1,a1,0x20
    80003984:	0205d593          	srli	a1,a1,0x20
    80003988:	00bd85b3          	add	a1,s11,a1
    8000398c:	0005c583          	lbu	a1,0(a1)
    80003990:	02d7d7bb          	divuw	a5,a5,a3
    80003994:	f8b40223          	sb	a1,-124(s0)
    80003998:	46e57663          	bgeu	a0,a4,80003e04 <__printf+0x62c>
    8000399c:	02d7f5bb          	remuw	a1,a5,a3
    800039a0:	02059593          	slli	a1,a1,0x20
    800039a4:	0205d593          	srli	a1,a1,0x20
    800039a8:	00bd85b3          	add	a1,s11,a1
    800039ac:	0005c583          	lbu	a1,0(a1)
    800039b0:	02d7d7bb          	divuw	a5,a5,a3
    800039b4:	f8b402a3          	sb	a1,-123(s0)
    800039b8:	46ea7863          	bgeu	s4,a4,80003e28 <__printf+0x650>
    800039bc:	02d7f5bb          	remuw	a1,a5,a3
    800039c0:	02059593          	slli	a1,a1,0x20
    800039c4:	0205d593          	srli	a1,a1,0x20
    800039c8:	00bd85b3          	add	a1,s11,a1
    800039cc:	0005c583          	lbu	a1,0(a1)
    800039d0:	02d7d7bb          	divuw	a5,a5,a3
    800039d4:	f8b40323          	sb	a1,-122(s0)
    800039d8:	3eeaf863          	bgeu	s5,a4,80003dc8 <__printf+0x5f0>
    800039dc:	02d7f5bb          	remuw	a1,a5,a3
    800039e0:	02059593          	slli	a1,a1,0x20
    800039e4:	0205d593          	srli	a1,a1,0x20
    800039e8:	00bd85b3          	add	a1,s11,a1
    800039ec:	0005c583          	lbu	a1,0(a1)
    800039f0:	02d7d7bb          	divuw	a5,a5,a3
    800039f4:	f8b403a3          	sb	a1,-121(s0)
    800039f8:	42eb7e63          	bgeu	s6,a4,80003e34 <__printf+0x65c>
    800039fc:	02d7f5bb          	remuw	a1,a5,a3
    80003a00:	02059593          	slli	a1,a1,0x20
    80003a04:	0205d593          	srli	a1,a1,0x20
    80003a08:	00bd85b3          	add	a1,s11,a1
    80003a0c:	0005c583          	lbu	a1,0(a1)
    80003a10:	02d7d7bb          	divuw	a5,a5,a3
    80003a14:	f8b40423          	sb	a1,-120(s0)
    80003a18:	42ebfc63          	bgeu	s7,a4,80003e50 <__printf+0x678>
    80003a1c:	02079793          	slli	a5,a5,0x20
    80003a20:	0207d793          	srli	a5,a5,0x20
    80003a24:	00fd8db3          	add	s11,s11,a5
    80003a28:	000dc703          	lbu	a4,0(s11)
    80003a2c:	00a00793          	li	a5,10
    80003a30:	00900c93          	li	s9,9
    80003a34:	f8e404a3          	sb	a4,-119(s0)
    80003a38:	00065c63          	bgez	a2,80003a50 <__printf+0x278>
    80003a3c:	f9040713          	addi	a4,s0,-112
    80003a40:	00f70733          	add	a4,a4,a5
    80003a44:	02d00693          	li	a3,45
    80003a48:	fed70823          	sb	a3,-16(a4)
    80003a4c:	00078c93          	mv	s9,a5
    80003a50:	f8040793          	addi	a5,s0,-128
    80003a54:	01978cb3          	add	s9,a5,s9
    80003a58:	f7f40d13          	addi	s10,s0,-129
    80003a5c:	000cc503          	lbu	a0,0(s9)
    80003a60:	fffc8c93          	addi	s9,s9,-1
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	b90080e7          	jalr	-1136(ra) # 800035f4 <consputc>
    80003a6c:	ffac98e3          	bne	s9,s10,80003a5c <__printf+0x284>
    80003a70:	00094503          	lbu	a0,0(s2)
    80003a74:	e00514e3          	bnez	a0,8000387c <__printf+0xa4>
    80003a78:	1a0c1663          	bnez	s8,80003c24 <__printf+0x44c>
    80003a7c:	08813083          	ld	ra,136(sp)
    80003a80:	08013403          	ld	s0,128(sp)
    80003a84:	07813483          	ld	s1,120(sp)
    80003a88:	07013903          	ld	s2,112(sp)
    80003a8c:	06813983          	ld	s3,104(sp)
    80003a90:	06013a03          	ld	s4,96(sp)
    80003a94:	05813a83          	ld	s5,88(sp)
    80003a98:	05013b03          	ld	s6,80(sp)
    80003a9c:	04813b83          	ld	s7,72(sp)
    80003aa0:	04013c03          	ld	s8,64(sp)
    80003aa4:	03813c83          	ld	s9,56(sp)
    80003aa8:	03013d03          	ld	s10,48(sp)
    80003aac:	02813d83          	ld	s11,40(sp)
    80003ab0:	0d010113          	addi	sp,sp,208
    80003ab4:	00008067          	ret
    80003ab8:	07300713          	li	a4,115
    80003abc:	1ce78a63          	beq	a5,a4,80003c90 <__printf+0x4b8>
    80003ac0:	07800713          	li	a4,120
    80003ac4:	1ee79e63          	bne	a5,a4,80003cc0 <__printf+0x4e8>
    80003ac8:	f7843783          	ld	a5,-136(s0)
    80003acc:	0007a703          	lw	a4,0(a5)
    80003ad0:	00878793          	addi	a5,a5,8
    80003ad4:	f6f43c23          	sd	a5,-136(s0)
    80003ad8:	28074263          	bltz	a4,80003d5c <__printf+0x584>
    80003adc:	00001d97          	auipc	s11,0x1
    80003ae0:	7fcd8d93          	addi	s11,s11,2044 # 800052d8 <digits>
    80003ae4:	00f77793          	andi	a5,a4,15
    80003ae8:	00fd87b3          	add	a5,s11,a5
    80003aec:	0007c683          	lbu	a3,0(a5)
    80003af0:	00f00613          	li	a2,15
    80003af4:	0007079b          	sext.w	a5,a4
    80003af8:	f8d40023          	sb	a3,-128(s0)
    80003afc:	0047559b          	srliw	a1,a4,0x4
    80003b00:	0047569b          	srliw	a3,a4,0x4
    80003b04:	00000c93          	li	s9,0
    80003b08:	0ee65063          	bge	a2,a4,80003be8 <__printf+0x410>
    80003b0c:	00f6f693          	andi	a3,a3,15
    80003b10:	00dd86b3          	add	a3,s11,a3
    80003b14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003b18:	0087d79b          	srliw	a5,a5,0x8
    80003b1c:	00100c93          	li	s9,1
    80003b20:	f8d400a3          	sb	a3,-127(s0)
    80003b24:	0cb67263          	bgeu	a2,a1,80003be8 <__printf+0x410>
    80003b28:	00f7f693          	andi	a3,a5,15
    80003b2c:	00dd86b3          	add	a3,s11,a3
    80003b30:	0006c583          	lbu	a1,0(a3)
    80003b34:	00f00613          	li	a2,15
    80003b38:	0047d69b          	srliw	a3,a5,0x4
    80003b3c:	f8b40123          	sb	a1,-126(s0)
    80003b40:	0047d593          	srli	a1,a5,0x4
    80003b44:	28f67e63          	bgeu	a2,a5,80003de0 <__printf+0x608>
    80003b48:	00f6f693          	andi	a3,a3,15
    80003b4c:	00dd86b3          	add	a3,s11,a3
    80003b50:	0006c503          	lbu	a0,0(a3)
    80003b54:	0087d813          	srli	a6,a5,0x8
    80003b58:	0087d69b          	srliw	a3,a5,0x8
    80003b5c:	f8a401a3          	sb	a0,-125(s0)
    80003b60:	28b67663          	bgeu	a2,a1,80003dec <__printf+0x614>
    80003b64:	00f6f693          	andi	a3,a3,15
    80003b68:	00dd86b3          	add	a3,s11,a3
    80003b6c:	0006c583          	lbu	a1,0(a3)
    80003b70:	00c7d513          	srli	a0,a5,0xc
    80003b74:	00c7d69b          	srliw	a3,a5,0xc
    80003b78:	f8b40223          	sb	a1,-124(s0)
    80003b7c:	29067a63          	bgeu	a2,a6,80003e10 <__printf+0x638>
    80003b80:	00f6f693          	andi	a3,a3,15
    80003b84:	00dd86b3          	add	a3,s11,a3
    80003b88:	0006c583          	lbu	a1,0(a3)
    80003b8c:	0107d813          	srli	a6,a5,0x10
    80003b90:	0107d69b          	srliw	a3,a5,0x10
    80003b94:	f8b402a3          	sb	a1,-123(s0)
    80003b98:	28a67263          	bgeu	a2,a0,80003e1c <__printf+0x644>
    80003b9c:	00f6f693          	andi	a3,a3,15
    80003ba0:	00dd86b3          	add	a3,s11,a3
    80003ba4:	0006c683          	lbu	a3,0(a3)
    80003ba8:	0147d79b          	srliw	a5,a5,0x14
    80003bac:	f8d40323          	sb	a3,-122(s0)
    80003bb0:	21067663          	bgeu	a2,a6,80003dbc <__printf+0x5e4>
    80003bb4:	02079793          	slli	a5,a5,0x20
    80003bb8:	0207d793          	srli	a5,a5,0x20
    80003bbc:	00fd8db3          	add	s11,s11,a5
    80003bc0:	000dc683          	lbu	a3,0(s11)
    80003bc4:	00800793          	li	a5,8
    80003bc8:	00700c93          	li	s9,7
    80003bcc:	f8d403a3          	sb	a3,-121(s0)
    80003bd0:	00075c63          	bgez	a4,80003be8 <__printf+0x410>
    80003bd4:	f9040713          	addi	a4,s0,-112
    80003bd8:	00f70733          	add	a4,a4,a5
    80003bdc:	02d00693          	li	a3,45
    80003be0:	fed70823          	sb	a3,-16(a4)
    80003be4:	00078c93          	mv	s9,a5
    80003be8:	f8040793          	addi	a5,s0,-128
    80003bec:	01978cb3          	add	s9,a5,s9
    80003bf0:	f7f40d13          	addi	s10,s0,-129
    80003bf4:	000cc503          	lbu	a0,0(s9)
    80003bf8:	fffc8c93          	addi	s9,s9,-1
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	9f8080e7          	jalr	-1544(ra) # 800035f4 <consputc>
    80003c04:	ff9d18e3          	bne	s10,s9,80003bf4 <__printf+0x41c>
    80003c08:	0100006f          	j	80003c18 <__printf+0x440>
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	9e8080e7          	jalr	-1560(ra) # 800035f4 <consputc>
    80003c14:	000c8493          	mv	s1,s9
    80003c18:	00094503          	lbu	a0,0(s2)
    80003c1c:	c60510e3          	bnez	a0,8000387c <__printf+0xa4>
    80003c20:	e40c0ee3          	beqz	s8,80003a7c <__printf+0x2a4>
    80003c24:	00003517          	auipc	a0,0x3
    80003c28:	74c50513          	addi	a0,a0,1868 # 80007370 <pr>
    80003c2c:	00001097          	auipc	ra,0x1
    80003c30:	94c080e7          	jalr	-1716(ra) # 80004578 <release>
    80003c34:	e49ff06f          	j	80003a7c <__printf+0x2a4>
    80003c38:	f7843783          	ld	a5,-136(s0)
    80003c3c:	03000513          	li	a0,48
    80003c40:	01000d13          	li	s10,16
    80003c44:	00878713          	addi	a4,a5,8
    80003c48:	0007bc83          	ld	s9,0(a5)
    80003c4c:	f6e43c23          	sd	a4,-136(s0)
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	9a4080e7          	jalr	-1628(ra) # 800035f4 <consputc>
    80003c58:	07800513          	li	a0,120
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	998080e7          	jalr	-1640(ra) # 800035f4 <consputc>
    80003c64:	00001d97          	auipc	s11,0x1
    80003c68:	674d8d93          	addi	s11,s11,1652 # 800052d8 <digits>
    80003c6c:	03ccd793          	srli	a5,s9,0x3c
    80003c70:	00fd87b3          	add	a5,s11,a5
    80003c74:	0007c503          	lbu	a0,0(a5)
    80003c78:	fffd0d1b          	addiw	s10,s10,-1
    80003c7c:	004c9c93          	slli	s9,s9,0x4
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	974080e7          	jalr	-1676(ra) # 800035f4 <consputc>
    80003c88:	fe0d12e3          	bnez	s10,80003c6c <__printf+0x494>
    80003c8c:	f8dff06f          	j	80003c18 <__printf+0x440>
    80003c90:	f7843783          	ld	a5,-136(s0)
    80003c94:	0007bc83          	ld	s9,0(a5)
    80003c98:	00878793          	addi	a5,a5,8
    80003c9c:	f6f43c23          	sd	a5,-136(s0)
    80003ca0:	000c9a63          	bnez	s9,80003cb4 <__printf+0x4dc>
    80003ca4:	1080006f          	j	80003dac <__printf+0x5d4>
    80003ca8:	001c8c93          	addi	s9,s9,1
    80003cac:	00000097          	auipc	ra,0x0
    80003cb0:	948080e7          	jalr	-1720(ra) # 800035f4 <consputc>
    80003cb4:	000cc503          	lbu	a0,0(s9)
    80003cb8:	fe0518e3          	bnez	a0,80003ca8 <__printf+0x4d0>
    80003cbc:	f5dff06f          	j	80003c18 <__printf+0x440>
    80003cc0:	02500513          	li	a0,37
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	930080e7          	jalr	-1744(ra) # 800035f4 <consputc>
    80003ccc:	000c8513          	mv	a0,s9
    80003cd0:	00000097          	auipc	ra,0x0
    80003cd4:	924080e7          	jalr	-1756(ra) # 800035f4 <consputc>
    80003cd8:	f41ff06f          	j	80003c18 <__printf+0x440>
    80003cdc:	02500513          	li	a0,37
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	914080e7          	jalr	-1772(ra) # 800035f4 <consputc>
    80003ce8:	f31ff06f          	j	80003c18 <__printf+0x440>
    80003cec:	00030513          	mv	a0,t1
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	7bc080e7          	jalr	1980(ra) # 800044ac <acquire>
    80003cf8:	b4dff06f          	j	80003844 <__printf+0x6c>
    80003cfc:	40c0053b          	negw	a0,a2
    80003d00:	00a00713          	li	a4,10
    80003d04:	02e576bb          	remuw	a3,a0,a4
    80003d08:	00001d97          	auipc	s11,0x1
    80003d0c:	5d0d8d93          	addi	s11,s11,1488 # 800052d8 <digits>
    80003d10:	ff700593          	li	a1,-9
    80003d14:	02069693          	slli	a3,a3,0x20
    80003d18:	0206d693          	srli	a3,a3,0x20
    80003d1c:	00dd86b3          	add	a3,s11,a3
    80003d20:	0006c683          	lbu	a3,0(a3)
    80003d24:	02e557bb          	divuw	a5,a0,a4
    80003d28:	f8d40023          	sb	a3,-128(s0)
    80003d2c:	10b65e63          	bge	a2,a1,80003e48 <__printf+0x670>
    80003d30:	06300593          	li	a1,99
    80003d34:	02e7f6bb          	remuw	a3,a5,a4
    80003d38:	02069693          	slli	a3,a3,0x20
    80003d3c:	0206d693          	srli	a3,a3,0x20
    80003d40:	00dd86b3          	add	a3,s11,a3
    80003d44:	0006c683          	lbu	a3,0(a3)
    80003d48:	02e7d73b          	divuw	a4,a5,a4
    80003d4c:	00200793          	li	a5,2
    80003d50:	f8d400a3          	sb	a3,-127(s0)
    80003d54:	bca5ece3          	bltu	a1,a0,8000392c <__printf+0x154>
    80003d58:	ce5ff06f          	j	80003a3c <__printf+0x264>
    80003d5c:	40e007bb          	negw	a5,a4
    80003d60:	00001d97          	auipc	s11,0x1
    80003d64:	578d8d93          	addi	s11,s11,1400 # 800052d8 <digits>
    80003d68:	00f7f693          	andi	a3,a5,15
    80003d6c:	00dd86b3          	add	a3,s11,a3
    80003d70:	0006c583          	lbu	a1,0(a3)
    80003d74:	ff100613          	li	a2,-15
    80003d78:	0047d69b          	srliw	a3,a5,0x4
    80003d7c:	f8b40023          	sb	a1,-128(s0)
    80003d80:	0047d59b          	srliw	a1,a5,0x4
    80003d84:	0ac75e63          	bge	a4,a2,80003e40 <__printf+0x668>
    80003d88:	00f6f693          	andi	a3,a3,15
    80003d8c:	00dd86b3          	add	a3,s11,a3
    80003d90:	0006c603          	lbu	a2,0(a3)
    80003d94:	00f00693          	li	a3,15
    80003d98:	0087d79b          	srliw	a5,a5,0x8
    80003d9c:	f8c400a3          	sb	a2,-127(s0)
    80003da0:	d8b6e4e3          	bltu	a3,a1,80003b28 <__printf+0x350>
    80003da4:	00200793          	li	a5,2
    80003da8:	e2dff06f          	j	80003bd4 <__printf+0x3fc>
    80003dac:	00001c97          	auipc	s9,0x1
    80003db0:	50cc8c93          	addi	s9,s9,1292 # 800052b8 <CONSOLE_STATUS+0x2a8>
    80003db4:	02800513          	li	a0,40
    80003db8:	ef1ff06f          	j	80003ca8 <__printf+0x4d0>
    80003dbc:	00700793          	li	a5,7
    80003dc0:	00600c93          	li	s9,6
    80003dc4:	e0dff06f          	j	80003bd0 <__printf+0x3f8>
    80003dc8:	00700793          	li	a5,7
    80003dcc:	00600c93          	li	s9,6
    80003dd0:	c69ff06f          	j	80003a38 <__printf+0x260>
    80003dd4:	00300793          	li	a5,3
    80003dd8:	00200c93          	li	s9,2
    80003ddc:	c5dff06f          	j	80003a38 <__printf+0x260>
    80003de0:	00300793          	li	a5,3
    80003de4:	00200c93          	li	s9,2
    80003de8:	de9ff06f          	j	80003bd0 <__printf+0x3f8>
    80003dec:	00400793          	li	a5,4
    80003df0:	00300c93          	li	s9,3
    80003df4:	dddff06f          	j	80003bd0 <__printf+0x3f8>
    80003df8:	00400793          	li	a5,4
    80003dfc:	00300c93          	li	s9,3
    80003e00:	c39ff06f          	j	80003a38 <__printf+0x260>
    80003e04:	00500793          	li	a5,5
    80003e08:	00400c93          	li	s9,4
    80003e0c:	c2dff06f          	j	80003a38 <__printf+0x260>
    80003e10:	00500793          	li	a5,5
    80003e14:	00400c93          	li	s9,4
    80003e18:	db9ff06f          	j	80003bd0 <__printf+0x3f8>
    80003e1c:	00600793          	li	a5,6
    80003e20:	00500c93          	li	s9,5
    80003e24:	dadff06f          	j	80003bd0 <__printf+0x3f8>
    80003e28:	00600793          	li	a5,6
    80003e2c:	00500c93          	li	s9,5
    80003e30:	c09ff06f          	j	80003a38 <__printf+0x260>
    80003e34:	00800793          	li	a5,8
    80003e38:	00700c93          	li	s9,7
    80003e3c:	bfdff06f          	j	80003a38 <__printf+0x260>
    80003e40:	00100793          	li	a5,1
    80003e44:	d91ff06f          	j	80003bd4 <__printf+0x3fc>
    80003e48:	00100793          	li	a5,1
    80003e4c:	bf1ff06f          	j	80003a3c <__printf+0x264>
    80003e50:	00900793          	li	a5,9
    80003e54:	00800c93          	li	s9,8
    80003e58:	be1ff06f          	j	80003a38 <__printf+0x260>
    80003e5c:	00001517          	auipc	a0,0x1
    80003e60:	46450513          	addi	a0,a0,1124 # 800052c0 <CONSOLE_STATUS+0x2b0>
    80003e64:	00000097          	auipc	ra,0x0
    80003e68:	918080e7          	jalr	-1768(ra) # 8000377c <panic>

0000000080003e6c <printfinit>:
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00913423          	sd	s1,8(sp)
    80003e78:	00113c23          	sd	ra,24(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	00003497          	auipc	s1,0x3
    80003e84:	4f048493          	addi	s1,s1,1264 # 80007370 <pr>
    80003e88:	00048513          	mv	a0,s1
    80003e8c:	00001597          	auipc	a1,0x1
    80003e90:	44458593          	addi	a1,a1,1092 # 800052d0 <CONSOLE_STATUS+0x2c0>
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	5f4080e7          	jalr	1524(ra) # 80004488 <initlock>
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	0004ac23          	sw	zero,24(s1)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	02010113          	addi	sp,sp,32
    80003eb0:	00008067          	ret

0000000080003eb4 <uartinit>:
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00813423          	sd	s0,8(sp)
    80003ebc:	01010413          	addi	s0,sp,16
    80003ec0:	100007b7          	lui	a5,0x10000
    80003ec4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003ec8:	f8000713          	li	a4,-128
    80003ecc:	00e781a3          	sb	a4,3(a5)
    80003ed0:	00300713          	li	a4,3
    80003ed4:	00e78023          	sb	a4,0(a5)
    80003ed8:	000780a3          	sb	zero,1(a5)
    80003edc:	00e781a3          	sb	a4,3(a5)
    80003ee0:	00700693          	li	a3,7
    80003ee4:	00d78123          	sb	a3,2(a5)
    80003ee8:	00e780a3          	sb	a4,1(a5)
    80003eec:	00813403          	ld	s0,8(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret

0000000080003ef8 <uartputc>:
    80003ef8:	00002797          	auipc	a5,0x2
    80003efc:	1e07a783          	lw	a5,480(a5) # 800060d8 <panicked>
    80003f00:	00078463          	beqz	a5,80003f08 <uartputc+0x10>
    80003f04:	0000006f          	j	80003f04 <uartputc+0xc>
    80003f08:	fd010113          	addi	sp,sp,-48
    80003f0c:	02813023          	sd	s0,32(sp)
    80003f10:	00913c23          	sd	s1,24(sp)
    80003f14:	01213823          	sd	s2,16(sp)
    80003f18:	01313423          	sd	s3,8(sp)
    80003f1c:	02113423          	sd	ra,40(sp)
    80003f20:	03010413          	addi	s0,sp,48
    80003f24:	00002917          	auipc	s2,0x2
    80003f28:	1bc90913          	addi	s2,s2,444 # 800060e0 <uart_tx_r>
    80003f2c:	00093783          	ld	a5,0(s2)
    80003f30:	00002497          	auipc	s1,0x2
    80003f34:	1b848493          	addi	s1,s1,440 # 800060e8 <uart_tx_w>
    80003f38:	0004b703          	ld	a4,0(s1)
    80003f3c:	02078693          	addi	a3,a5,32
    80003f40:	00050993          	mv	s3,a0
    80003f44:	02e69c63          	bne	a3,a4,80003f7c <uartputc+0x84>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	834080e7          	jalr	-1996(ra) # 8000477c <push_on>
    80003f50:	00093783          	ld	a5,0(s2)
    80003f54:	0004b703          	ld	a4,0(s1)
    80003f58:	02078793          	addi	a5,a5,32
    80003f5c:	00e79463          	bne	a5,a4,80003f64 <uartputc+0x6c>
    80003f60:	0000006f          	j	80003f60 <uartputc+0x68>
    80003f64:	00001097          	auipc	ra,0x1
    80003f68:	88c080e7          	jalr	-1908(ra) # 800047f0 <pop_on>
    80003f6c:	00093783          	ld	a5,0(s2)
    80003f70:	0004b703          	ld	a4,0(s1)
    80003f74:	02078693          	addi	a3,a5,32
    80003f78:	fce688e3          	beq	a3,a4,80003f48 <uartputc+0x50>
    80003f7c:	01f77693          	andi	a3,a4,31
    80003f80:	00003597          	auipc	a1,0x3
    80003f84:	41058593          	addi	a1,a1,1040 # 80007390 <uart_tx_buf>
    80003f88:	00d586b3          	add	a3,a1,a3
    80003f8c:	00170713          	addi	a4,a4,1
    80003f90:	01368023          	sb	s3,0(a3)
    80003f94:	00e4b023          	sd	a4,0(s1)
    80003f98:	10000637          	lui	a2,0x10000
    80003f9c:	02f71063          	bne	a4,a5,80003fbc <uartputc+0xc4>
    80003fa0:	0340006f          	j	80003fd4 <uartputc+0xdc>
    80003fa4:	00074703          	lbu	a4,0(a4)
    80003fa8:	00f93023          	sd	a5,0(s2)
    80003fac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003fb0:	00093783          	ld	a5,0(s2)
    80003fb4:	0004b703          	ld	a4,0(s1)
    80003fb8:	00f70e63          	beq	a4,a5,80003fd4 <uartputc+0xdc>
    80003fbc:	00564683          	lbu	a3,5(a2)
    80003fc0:	01f7f713          	andi	a4,a5,31
    80003fc4:	00e58733          	add	a4,a1,a4
    80003fc8:	0206f693          	andi	a3,a3,32
    80003fcc:	00178793          	addi	a5,a5,1
    80003fd0:	fc069ae3          	bnez	a3,80003fa4 <uartputc+0xac>
    80003fd4:	02813083          	ld	ra,40(sp)
    80003fd8:	02013403          	ld	s0,32(sp)
    80003fdc:	01813483          	ld	s1,24(sp)
    80003fe0:	01013903          	ld	s2,16(sp)
    80003fe4:	00813983          	ld	s3,8(sp)
    80003fe8:	03010113          	addi	sp,sp,48
    80003fec:	00008067          	ret

0000000080003ff0 <uartputc_sync>:
    80003ff0:	ff010113          	addi	sp,sp,-16
    80003ff4:	00813423          	sd	s0,8(sp)
    80003ff8:	01010413          	addi	s0,sp,16
    80003ffc:	00002717          	auipc	a4,0x2
    80004000:	0dc72703          	lw	a4,220(a4) # 800060d8 <panicked>
    80004004:	02071663          	bnez	a4,80004030 <uartputc_sync+0x40>
    80004008:	00050793          	mv	a5,a0
    8000400c:	100006b7          	lui	a3,0x10000
    80004010:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004014:	02077713          	andi	a4,a4,32
    80004018:	fe070ce3          	beqz	a4,80004010 <uartputc_sync+0x20>
    8000401c:	0ff7f793          	andi	a5,a5,255
    80004020:	00f68023          	sb	a5,0(a3)
    80004024:	00813403          	ld	s0,8(sp)
    80004028:	01010113          	addi	sp,sp,16
    8000402c:	00008067          	ret
    80004030:	0000006f          	j	80004030 <uartputc_sync+0x40>

0000000080004034 <uartstart>:
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00813423          	sd	s0,8(sp)
    8000403c:	01010413          	addi	s0,sp,16
    80004040:	00002617          	auipc	a2,0x2
    80004044:	0a060613          	addi	a2,a2,160 # 800060e0 <uart_tx_r>
    80004048:	00002517          	auipc	a0,0x2
    8000404c:	0a050513          	addi	a0,a0,160 # 800060e8 <uart_tx_w>
    80004050:	00063783          	ld	a5,0(a2)
    80004054:	00053703          	ld	a4,0(a0)
    80004058:	04f70263          	beq	a4,a5,8000409c <uartstart+0x68>
    8000405c:	100005b7          	lui	a1,0x10000
    80004060:	00003817          	auipc	a6,0x3
    80004064:	33080813          	addi	a6,a6,816 # 80007390 <uart_tx_buf>
    80004068:	01c0006f          	j	80004084 <uartstart+0x50>
    8000406c:	0006c703          	lbu	a4,0(a3)
    80004070:	00f63023          	sd	a5,0(a2)
    80004074:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004078:	00063783          	ld	a5,0(a2)
    8000407c:	00053703          	ld	a4,0(a0)
    80004080:	00f70e63          	beq	a4,a5,8000409c <uartstart+0x68>
    80004084:	01f7f713          	andi	a4,a5,31
    80004088:	00e806b3          	add	a3,a6,a4
    8000408c:	0055c703          	lbu	a4,5(a1)
    80004090:	00178793          	addi	a5,a5,1
    80004094:	02077713          	andi	a4,a4,32
    80004098:	fc071ae3          	bnez	a4,8000406c <uartstart+0x38>
    8000409c:	00813403          	ld	s0,8(sp)
    800040a0:	01010113          	addi	sp,sp,16
    800040a4:	00008067          	ret

00000000800040a8 <uartgetc>:
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00813423          	sd	s0,8(sp)
    800040b0:	01010413          	addi	s0,sp,16
    800040b4:	10000737          	lui	a4,0x10000
    800040b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800040bc:	0017f793          	andi	a5,a5,1
    800040c0:	00078c63          	beqz	a5,800040d8 <uartgetc+0x30>
    800040c4:	00074503          	lbu	a0,0(a4)
    800040c8:	0ff57513          	andi	a0,a0,255
    800040cc:	00813403          	ld	s0,8(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret
    800040d8:	fff00513          	li	a0,-1
    800040dc:	ff1ff06f          	j	800040cc <uartgetc+0x24>

00000000800040e0 <uartintr>:
    800040e0:	100007b7          	lui	a5,0x10000
    800040e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800040e8:	0017f793          	andi	a5,a5,1
    800040ec:	0a078463          	beqz	a5,80004194 <uartintr+0xb4>
    800040f0:	fe010113          	addi	sp,sp,-32
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00913423          	sd	s1,8(sp)
    800040fc:	00113c23          	sd	ra,24(sp)
    80004100:	02010413          	addi	s0,sp,32
    80004104:	100004b7          	lui	s1,0x10000
    80004108:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000410c:	0ff57513          	andi	a0,a0,255
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	534080e7          	jalr	1332(ra) # 80003644 <consoleintr>
    80004118:	0054c783          	lbu	a5,5(s1)
    8000411c:	0017f793          	andi	a5,a5,1
    80004120:	fe0794e3          	bnez	a5,80004108 <uartintr+0x28>
    80004124:	00002617          	auipc	a2,0x2
    80004128:	fbc60613          	addi	a2,a2,-68 # 800060e0 <uart_tx_r>
    8000412c:	00002517          	auipc	a0,0x2
    80004130:	fbc50513          	addi	a0,a0,-68 # 800060e8 <uart_tx_w>
    80004134:	00063783          	ld	a5,0(a2)
    80004138:	00053703          	ld	a4,0(a0)
    8000413c:	04f70263          	beq	a4,a5,80004180 <uartintr+0xa0>
    80004140:	100005b7          	lui	a1,0x10000
    80004144:	00003817          	auipc	a6,0x3
    80004148:	24c80813          	addi	a6,a6,588 # 80007390 <uart_tx_buf>
    8000414c:	01c0006f          	j	80004168 <uartintr+0x88>
    80004150:	0006c703          	lbu	a4,0(a3)
    80004154:	00f63023          	sd	a5,0(a2)
    80004158:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000415c:	00063783          	ld	a5,0(a2)
    80004160:	00053703          	ld	a4,0(a0)
    80004164:	00f70e63          	beq	a4,a5,80004180 <uartintr+0xa0>
    80004168:	01f7f713          	andi	a4,a5,31
    8000416c:	00e806b3          	add	a3,a6,a4
    80004170:	0055c703          	lbu	a4,5(a1)
    80004174:	00178793          	addi	a5,a5,1
    80004178:	02077713          	andi	a4,a4,32
    8000417c:	fc071ae3          	bnez	a4,80004150 <uartintr+0x70>
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	00813483          	ld	s1,8(sp)
    8000418c:	02010113          	addi	sp,sp,32
    80004190:	00008067          	ret
    80004194:	00002617          	auipc	a2,0x2
    80004198:	f4c60613          	addi	a2,a2,-180 # 800060e0 <uart_tx_r>
    8000419c:	00002517          	auipc	a0,0x2
    800041a0:	f4c50513          	addi	a0,a0,-180 # 800060e8 <uart_tx_w>
    800041a4:	00063783          	ld	a5,0(a2)
    800041a8:	00053703          	ld	a4,0(a0)
    800041ac:	04f70263          	beq	a4,a5,800041f0 <uartintr+0x110>
    800041b0:	100005b7          	lui	a1,0x10000
    800041b4:	00003817          	auipc	a6,0x3
    800041b8:	1dc80813          	addi	a6,a6,476 # 80007390 <uart_tx_buf>
    800041bc:	01c0006f          	j	800041d8 <uartintr+0xf8>
    800041c0:	0006c703          	lbu	a4,0(a3)
    800041c4:	00f63023          	sd	a5,0(a2)
    800041c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041cc:	00063783          	ld	a5,0(a2)
    800041d0:	00053703          	ld	a4,0(a0)
    800041d4:	02f70063          	beq	a4,a5,800041f4 <uartintr+0x114>
    800041d8:	01f7f713          	andi	a4,a5,31
    800041dc:	00e806b3          	add	a3,a6,a4
    800041e0:	0055c703          	lbu	a4,5(a1)
    800041e4:	00178793          	addi	a5,a5,1
    800041e8:	02077713          	andi	a4,a4,32
    800041ec:	fc071ae3          	bnez	a4,800041c0 <uartintr+0xe0>
    800041f0:	00008067          	ret
    800041f4:	00008067          	ret

00000000800041f8 <kinit>:
    800041f8:	fc010113          	addi	sp,sp,-64
    800041fc:	02913423          	sd	s1,40(sp)
    80004200:	fffff7b7          	lui	a5,0xfffff
    80004204:	00004497          	auipc	s1,0x4
    80004208:	1ab48493          	addi	s1,s1,427 # 800083af <end+0xfff>
    8000420c:	02813823          	sd	s0,48(sp)
    80004210:	01313c23          	sd	s3,24(sp)
    80004214:	00f4f4b3          	and	s1,s1,a5
    80004218:	02113c23          	sd	ra,56(sp)
    8000421c:	03213023          	sd	s2,32(sp)
    80004220:	01413823          	sd	s4,16(sp)
    80004224:	01513423          	sd	s5,8(sp)
    80004228:	04010413          	addi	s0,sp,64
    8000422c:	000017b7          	lui	a5,0x1
    80004230:	01100993          	li	s3,17
    80004234:	00f487b3          	add	a5,s1,a5
    80004238:	01b99993          	slli	s3,s3,0x1b
    8000423c:	06f9e063          	bltu	s3,a5,8000429c <kinit+0xa4>
    80004240:	00003a97          	auipc	s5,0x3
    80004244:	170a8a93          	addi	s5,s5,368 # 800073b0 <end>
    80004248:	0754ec63          	bltu	s1,s5,800042c0 <kinit+0xc8>
    8000424c:	0734fa63          	bgeu	s1,s3,800042c0 <kinit+0xc8>
    80004250:	00088a37          	lui	s4,0x88
    80004254:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004258:	00002917          	auipc	s2,0x2
    8000425c:	e9890913          	addi	s2,s2,-360 # 800060f0 <kmem>
    80004260:	00ca1a13          	slli	s4,s4,0xc
    80004264:	0140006f          	j	80004278 <kinit+0x80>
    80004268:	000017b7          	lui	a5,0x1
    8000426c:	00f484b3          	add	s1,s1,a5
    80004270:	0554e863          	bltu	s1,s5,800042c0 <kinit+0xc8>
    80004274:	0534f663          	bgeu	s1,s3,800042c0 <kinit+0xc8>
    80004278:	00001637          	lui	a2,0x1
    8000427c:	00100593          	li	a1,1
    80004280:	00048513          	mv	a0,s1
    80004284:	00000097          	auipc	ra,0x0
    80004288:	5e4080e7          	jalr	1508(ra) # 80004868 <__memset>
    8000428c:	00093783          	ld	a5,0(s2)
    80004290:	00f4b023          	sd	a5,0(s1)
    80004294:	00993023          	sd	s1,0(s2)
    80004298:	fd4498e3          	bne	s1,s4,80004268 <kinit+0x70>
    8000429c:	03813083          	ld	ra,56(sp)
    800042a0:	03013403          	ld	s0,48(sp)
    800042a4:	02813483          	ld	s1,40(sp)
    800042a8:	02013903          	ld	s2,32(sp)
    800042ac:	01813983          	ld	s3,24(sp)
    800042b0:	01013a03          	ld	s4,16(sp)
    800042b4:	00813a83          	ld	s5,8(sp)
    800042b8:	04010113          	addi	sp,sp,64
    800042bc:	00008067          	ret
    800042c0:	00001517          	auipc	a0,0x1
    800042c4:	03050513          	addi	a0,a0,48 # 800052f0 <digits+0x18>
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	4b4080e7          	jalr	1204(ra) # 8000377c <panic>

00000000800042d0 <freerange>:
    800042d0:	fc010113          	addi	sp,sp,-64
    800042d4:	000017b7          	lui	a5,0x1
    800042d8:	02913423          	sd	s1,40(sp)
    800042dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800042e0:	009504b3          	add	s1,a0,s1
    800042e4:	fffff537          	lui	a0,0xfffff
    800042e8:	02813823          	sd	s0,48(sp)
    800042ec:	02113c23          	sd	ra,56(sp)
    800042f0:	03213023          	sd	s2,32(sp)
    800042f4:	01313c23          	sd	s3,24(sp)
    800042f8:	01413823          	sd	s4,16(sp)
    800042fc:	01513423          	sd	s5,8(sp)
    80004300:	01613023          	sd	s6,0(sp)
    80004304:	04010413          	addi	s0,sp,64
    80004308:	00a4f4b3          	and	s1,s1,a0
    8000430c:	00f487b3          	add	a5,s1,a5
    80004310:	06f5e463          	bltu	a1,a5,80004378 <freerange+0xa8>
    80004314:	00003a97          	auipc	s5,0x3
    80004318:	09ca8a93          	addi	s5,s5,156 # 800073b0 <end>
    8000431c:	0954e263          	bltu	s1,s5,800043a0 <freerange+0xd0>
    80004320:	01100993          	li	s3,17
    80004324:	01b99993          	slli	s3,s3,0x1b
    80004328:	0734fc63          	bgeu	s1,s3,800043a0 <freerange+0xd0>
    8000432c:	00058a13          	mv	s4,a1
    80004330:	00002917          	auipc	s2,0x2
    80004334:	dc090913          	addi	s2,s2,-576 # 800060f0 <kmem>
    80004338:	00002b37          	lui	s6,0x2
    8000433c:	0140006f          	j	80004350 <freerange+0x80>
    80004340:	000017b7          	lui	a5,0x1
    80004344:	00f484b3          	add	s1,s1,a5
    80004348:	0554ec63          	bltu	s1,s5,800043a0 <freerange+0xd0>
    8000434c:	0534fa63          	bgeu	s1,s3,800043a0 <freerange+0xd0>
    80004350:	00001637          	lui	a2,0x1
    80004354:	00100593          	li	a1,1
    80004358:	00048513          	mv	a0,s1
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	50c080e7          	jalr	1292(ra) # 80004868 <__memset>
    80004364:	00093703          	ld	a4,0(s2)
    80004368:	016487b3          	add	a5,s1,s6
    8000436c:	00e4b023          	sd	a4,0(s1)
    80004370:	00993023          	sd	s1,0(s2)
    80004374:	fcfa76e3          	bgeu	s4,a5,80004340 <freerange+0x70>
    80004378:	03813083          	ld	ra,56(sp)
    8000437c:	03013403          	ld	s0,48(sp)
    80004380:	02813483          	ld	s1,40(sp)
    80004384:	02013903          	ld	s2,32(sp)
    80004388:	01813983          	ld	s3,24(sp)
    8000438c:	01013a03          	ld	s4,16(sp)
    80004390:	00813a83          	ld	s5,8(sp)
    80004394:	00013b03          	ld	s6,0(sp)
    80004398:	04010113          	addi	sp,sp,64
    8000439c:	00008067          	ret
    800043a0:	00001517          	auipc	a0,0x1
    800043a4:	f5050513          	addi	a0,a0,-176 # 800052f0 <digits+0x18>
    800043a8:	fffff097          	auipc	ra,0xfffff
    800043ac:	3d4080e7          	jalr	980(ra) # 8000377c <panic>

00000000800043b0 <kfree>:
    800043b0:	fe010113          	addi	sp,sp,-32
    800043b4:	00813823          	sd	s0,16(sp)
    800043b8:	00113c23          	sd	ra,24(sp)
    800043bc:	00913423          	sd	s1,8(sp)
    800043c0:	02010413          	addi	s0,sp,32
    800043c4:	03451793          	slli	a5,a0,0x34
    800043c8:	04079c63          	bnez	a5,80004420 <kfree+0x70>
    800043cc:	00003797          	auipc	a5,0x3
    800043d0:	fe478793          	addi	a5,a5,-28 # 800073b0 <end>
    800043d4:	00050493          	mv	s1,a0
    800043d8:	04f56463          	bltu	a0,a5,80004420 <kfree+0x70>
    800043dc:	01100793          	li	a5,17
    800043e0:	01b79793          	slli	a5,a5,0x1b
    800043e4:	02f57e63          	bgeu	a0,a5,80004420 <kfree+0x70>
    800043e8:	00001637          	lui	a2,0x1
    800043ec:	00100593          	li	a1,1
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	478080e7          	jalr	1144(ra) # 80004868 <__memset>
    800043f8:	00002797          	auipc	a5,0x2
    800043fc:	cf878793          	addi	a5,a5,-776 # 800060f0 <kmem>
    80004400:	0007b703          	ld	a4,0(a5)
    80004404:	01813083          	ld	ra,24(sp)
    80004408:	01013403          	ld	s0,16(sp)
    8000440c:	00e4b023          	sd	a4,0(s1)
    80004410:	0097b023          	sd	s1,0(a5)
    80004414:	00813483          	ld	s1,8(sp)
    80004418:	02010113          	addi	sp,sp,32
    8000441c:	00008067          	ret
    80004420:	00001517          	auipc	a0,0x1
    80004424:	ed050513          	addi	a0,a0,-304 # 800052f0 <digits+0x18>
    80004428:	fffff097          	auipc	ra,0xfffff
    8000442c:	354080e7          	jalr	852(ra) # 8000377c <panic>

0000000080004430 <kalloc>:
    80004430:	fe010113          	addi	sp,sp,-32
    80004434:	00813823          	sd	s0,16(sp)
    80004438:	00913423          	sd	s1,8(sp)
    8000443c:	00113c23          	sd	ra,24(sp)
    80004440:	02010413          	addi	s0,sp,32
    80004444:	00002797          	auipc	a5,0x2
    80004448:	cac78793          	addi	a5,a5,-852 # 800060f0 <kmem>
    8000444c:	0007b483          	ld	s1,0(a5)
    80004450:	02048063          	beqz	s1,80004470 <kalloc+0x40>
    80004454:	0004b703          	ld	a4,0(s1)
    80004458:	00001637          	lui	a2,0x1
    8000445c:	00500593          	li	a1,5
    80004460:	00048513          	mv	a0,s1
    80004464:	00e7b023          	sd	a4,0(a5)
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	400080e7          	jalr	1024(ra) # 80004868 <__memset>
    80004470:	01813083          	ld	ra,24(sp)
    80004474:	01013403          	ld	s0,16(sp)
    80004478:	00048513          	mv	a0,s1
    8000447c:	00813483          	ld	s1,8(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret

0000000080004488 <initlock>:
    80004488:	ff010113          	addi	sp,sp,-16
    8000448c:	00813423          	sd	s0,8(sp)
    80004490:	01010413          	addi	s0,sp,16
    80004494:	00813403          	ld	s0,8(sp)
    80004498:	00b53423          	sd	a1,8(a0)
    8000449c:	00052023          	sw	zero,0(a0)
    800044a0:	00053823          	sd	zero,16(a0)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <acquire>:
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00813823          	sd	s0,16(sp)
    800044b4:	00913423          	sd	s1,8(sp)
    800044b8:	00113c23          	sd	ra,24(sp)
    800044bc:	01213023          	sd	s2,0(sp)
    800044c0:	02010413          	addi	s0,sp,32
    800044c4:	00050493          	mv	s1,a0
    800044c8:	10002973          	csrr	s2,sstatus
    800044cc:	100027f3          	csrr	a5,sstatus
    800044d0:	ffd7f793          	andi	a5,a5,-3
    800044d4:	10079073          	csrw	sstatus,a5
    800044d8:	fffff097          	auipc	ra,0xfffff
    800044dc:	8ec080e7          	jalr	-1812(ra) # 80002dc4 <mycpu>
    800044e0:	07852783          	lw	a5,120(a0)
    800044e4:	06078e63          	beqz	a5,80004560 <acquire+0xb4>
    800044e8:	fffff097          	auipc	ra,0xfffff
    800044ec:	8dc080e7          	jalr	-1828(ra) # 80002dc4 <mycpu>
    800044f0:	07852783          	lw	a5,120(a0)
    800044f4:	0004a703          	lw	a4,0(s1)
    800044f8:	0017879b          	addiw	a5,a5,1
    800044fc:	06f52c23          	sw	a5,120(a0)
    80004500:	04071063          	bnez	a4,80004540 <acquire+0x94>
    80004504:	00100713          	li	a4,1
    80004508:	00070793          	mv	a5,a4
    8000450c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004510:	0007879b          	sext.w	a5,a5
    80004514:	fe079ae3          	bnez	a5,80004508 <acquire+0x5c>
    80004518:	0ff0000f          	fence
    8000451c:	fffff097          	auipc	ra,0xfffff
    80004520:	8a8080e7          	jalr	-1880(ra) # 80002dc4 <mycpu>
    80004524:	01813083          	ld	ra,24(sp)
    80004528:	01013403          	ld	s0,16(sp)
    8000452c:	00a4b823          	sd	a0,16(s1)
    80004530:	00013903          	ld	s2,0(sp)
    80004534:	00813483          	ld	s1,8(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret
    80004540:	0104b903          	ld	s2,16(s1)
    80004544:	fffff097          	auipc	ra,0xfffff
    80004548:	880080e7          	jalr	-1920(ra) # 80002dc4 <mycpu>
    8000454c:	faa91ce3          	bne	s2,a0,80004504 <acquire+0x58>
    80004550:	00001517          	auipc	a0,0x1
    80004554:	da850513          	addi	a0,a0,-600 # 800052f8 <digits+0x20>
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	224080e7          	jalr	548(ra) # 8000377c <panic>
    80004560:	00195913          	srli	s2,s2,0x1
    80004564:	fffff097          	auipc	ra,0xfffff
    80004568:	860080e7          	jalr	-1952(ra) # 80002dc4 <mycpu>
    8000456c:	00197913          	andi	s2,s2,1
    80004570:	07252e23          	sw	s2,124(a0)
    80004574:	f75ff06f          	j	800044e8 <acquire+0x3c>

0000000080004578 <release>:
    80004578:	fe010113          	addi	sp,sp,-32
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00113c23          	sd	ra,24(sp)
    80004584:	00913423          	sd	s1,8(sp)
    80004588:	01213023          	sd	s2,0(sp)
    8000458c:	02010413          	addi	s0,sp,32
    80004590:	00052783          	lw	a5,0(a0)
    80004594:	00079a63          	bnez	a5,800045a8 <release+0x30>
    80004598:	00001517          	auipc	a0,0x1
    8000459c:	d6850513          	addi	a0,a0,-664 # 80005300 <digits+0x28>
    800045a0:	fffff097          	auipc	ra,0xfffff
    800045a4:	1dc080e7          	jalr	476(ra) # 8000377c <panic>
    800045a8:	01053903          	ld	s2,16(a0)
    800045ac:	00050493          	mv	s1,a0
    800045b0:	fffff097          	auipc	ra,0xfffff
    800045b4:	814080e7          	jalr	-2028(ra) # 80002dc4 <mycpu>
    800045b8:	fea910e3          	bne	s2,a0,80004598 <release+0x20>
    800045bc:	0004b823          	sd	zero,16(s1)
    800045c0:	0ff0000f          	fence
    800045c4:	0f50000f          	fence	iorw,ow
    800045c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	7f8080e7          	jalr	2040(ra) # 80002dc4 <mycpu>
    800045d4:	100027f3          	csrr	a5,sstatus
    800045d8:	0027f793          	andi	a5,a5,2
    800045dc:	04079a63          	bnez	a5,80004630 <release+0xb8>
    800045e0:	07852783          	lw	a5,120(a0)
    800045e4:	02f05e63          	blez	a5,80004620 <release+0xa8>
    800045e8:	fff7871b          	addiw	a4,a5,-1
    800045ec:	06e52c23          	sw	a4,120(a0)
    800045f0:	00071c63          	bnez	a4,80004608 <release+0x90>
    800045f4:	07c52783          	lw	a5,124(a0)
    800045f8:	00078863          	beqz	a5,80004608 <release+0x90>
    800045fc:	100027f3          	csrr	a5,sstatus
    80004600:	0027e793          	ori	a5,a5,2
    80004604:	10079073          	csrw	sstatus,a5
    80004608:	01813083          	ld	ra,24(sp)
    8000460c:	01013403          	ld	s0,16(sp)
    80004610:	00813483          	ld	s1,8(sp)
    80004614:	00013903          	ld	s2,0(sp)
    80004618:	02010113          	addi	sp,sp,32
    8000461c:	00008067          	ret
    80004620:	00001517          	auipc	a0,0x1
    80004624:	d0050513          	addi	a0,a0,-768 # 80005320 <digits+0x48>
    80004628:	fffff097          	auipc	ra,0xfffff
    8000462c:	154080e7          	jalr	340(ra) # 8000377c <panic>
    80004630:	00001517          	auipc	a0,0x1
    80004634:	cd850513          	addi	a0,a0,-808 # 80005308 <digits+0x30>
    80004638:	fffff097          	auipc	ra,0xfffff
    8000463c:	144080e7          	jalr	324(ra) # 8000377c <panic>

0000000080004640 <holding>:
    80004640:	00052783          	lw	a5,0(a0)
    80004644:	00079663          	bnez	a5,80004650 <holding+0x10>
    80004648:	00000513          	li	a0,0
    8000464c:	00008067          	ret
    80004650:	fe010113          	addi	sp,sp,-32
    80004654:	00813823          	sd	s0,16(sp)
    80004658:	00913423          	sd	s1,8(sp)
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	02010413          	addi	s0,sp,32
    80004664:	01053483          	ld	s1,16(a0)
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	75c080e7          	jalr	1884(ra) # 80002dc4 <mycpu>
    80004670:	01813083          	ld	ra,24(sp)
    80004674:	01013403          	ld	s0,16(sp)
    80004678:	40a48533          	sub	a0,s1,a0
    8000467c:	00153513          	seqz	a0,a0
    80004680:	00813483          	ld	s1,8(sp)
    80004684:	02010113          	addi	sp,sp,32
    80004688:	00008067          	ret

000000008000468c <push_off>:
    8000468c:	fe010113          	addi	sp,sp,-32
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00113c23          	sd	ra,24(sp)
    80004698:	00913423          	sd	s1,8(sp)
    8000469c:	02010413          	addi	s0,sp,32
    800046a0:	100024f3          	csrr	s1,sstatus
    800046a4:	100027f3          	csrr	a5,sstatus
    800046a8:	ffd7f793          	andi	a5,a5,-3
    800046ac:	10079073          	csrw	sstatus,a5
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	714080e7          	jalr	1812(ra) # 80002dc4 <mycpu>
    800046b8:	07852783          	lw	a5,120(a0)
    800046bc:	02078663          	beqz	a5,800046e8 <push_off+0x5c>
    800046c0:	ffffe097          	auipc	ra,0xffffe
    800046c4:	704080e7          	jalr	1796(ra) # 80002dc4 <mycpu>
    800046c8:	07852783          	lw	a5,120(a0)
    800046cc:	01813083          	ld	ra,24(sp)
    800046d0:	01013403          	ld	s0,16(sp)
    800046d4:	0017879b          	addiw	a5,a5,1
    800046d8:	06f52c23          	sw	a5,120(a0)
    800046dc:	00813483          	ld	s1,8(sp)
    800046e0:	02010113          	addi	sp,sp,32
    800046e4:	00008067          	ret
    800046e8:	0014d493          	srli	s1,s1,0x1
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	6d8080e7          	jalr	1752(ra) # 80002dc4 <mycpu>
    800046f4:	0014f493          	andi	s1,s1,1
    800046f8:	06952e23          	sw	s1,124(a0)
    800046fc:	fc5ff06f          	j	800046c0 <push_off+0x34>

0000000080004700 <pop_off>:
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00813023          	sd	s0,0(sp)
    80004708:	00113423          	sd	ra,8(sp)
    8000470c:	01010413          	addi	s0,sp,16
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	6b4080e7          	jalr	1716(ra) # 80002dc4 <mycpu>
    80004718:	100027f3          	csrr	a5,sstatus
    8000471c:	0027f793          	andi	a5,a5,2
    80004720:	04079663          	bnez	a5,8000476c <pop_off+0x6c>
    80004724:	07852783          	lw	a5,120(a0)
    80004728:	02f05a63          	blez	a5,8000475c <pop_off+0x5c>
    8000472c:	fff7871b          	addiw	a4,a5,-1
    80004730:	06e52c23          	sw	a4,120(a0)
    80004734:	00071c63          	bnez	a4,8000474c <pop_off+0x4c>
    80004738:	07c52783          	lw	a5,124(a0)
    8000473c:	00078863          	beqz	a5,8000474c <pop_off+0x4c>
    80004740:	100027f3          	csrr	a5,sstatus
    80004744:	0027e793          	ori	a5,a5,2
    80004748:	10079073          	csrw	sstatus,a5
    8000474c:	00813083          	ld	ra,8(sp)
    80004750:	00013403          	ld	s0,0(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret
    8000475c:	00001517          	auipc	a0,0x1
    80004760:	bc450513          	addi	a0,a0,-1084 # 80005320 <digits+0x48>
    80004764:	fffff097          	auipc	ra,0xfffff
    80004768:	018080e7          	jalr	24(ra) # 8000377c <panic>
    8000476c:	00001517          	auipc	a0,0x1
    80004770:	b9c50513          	addi	a0,a0,-1124 # 80005308 <digits+0x30>
    80004774:	fffff097          	auipc	ra,0xfffff
    80004778:	008080e7          	jalr	8(ra) # 8000377c <panic>

000000008000477c <push_on>:
    8000477c:	fe010113          	addi	sp,sp,-32
    80004780:	00813823          	sd	s0,16(sp)
    80004784:	00113c23          	sd	ra,24(sp)
    80004788:	00913423          	sd	s1,8(sp)
    8000478c:	02010413          	addi	s0,sp,32
    80004790:	100024f3          	csrr	s1,sstatus
    80004794:	100027f3          	csrr	a5,sstatus
    80004798:	0027e793          	ori	a5,a5,2
    8000479c:	10079073          	csrw	sstatus,a5
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	624080e7          	jalr	1572(ra) # 80002dc4 <mycpu>
    800047a8:	07852783          	lw	a5,120(a0)
    800047ac:	02078663          	beqz	a5,800047d8 <push_on+0x5c>
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	614080e7          	jalr	1556(ra) # 80002dc4 <mycpu>
    800047b8:	07852783          	lw	a5,120(a0)
    800047bc:	01813083          	ld	ra,24(sp)
    800047c0:	01013403          	ld	s0,16(sp)
    800047c4:	0017879b          	addiw	a5,a5,1
    800047c8:	06f52c23          	sw	a5,120(a0)
    800047cc:	00813483          	ld	s1,8(sp)
    800047d0:	02010113          	addi	sp,sp,32
    800047d4:	00008067          	ret
    800047d8:	0014d493          	srli	s1,s1,0x1
    800047dc:	ffffe097          	auipc	ra,0xffffe
    800047e0:	5e8080e7          	jalr	1512(ra) # 80002dc4 <mycpu>
    800047e4:	0014f493          	andi	s1,s1,1
    800047e8:	06952e23          	sw	s1,124(a0)
    800047ec:	fc5ff06f          	j	800047b0 <push_on+0x34>

00000000800047f0 <pop_on>:
    800047f0:	ff010113          	addi	sp,sp,-16
    800047f4:	00813023          	sd	s0,0(sp)
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	01010413          	addi	s0,sp,16
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	5c4080e7          	jalr	1476(ra) # 80002dc4 <mycpu>
    80004808:	100027f3          	csrr	a5,sstatus
    8000480c:	0027f793          	andi	a5,a5,2
    80004810:	04078463          	beqz	a5,80004858 <pop_on+0x68>
    80004814:	07852783          	lw	a5,120(a0)
    80004818:	02f05863          	blez	a5,80004848 <pop_on+0x58>
    8000481c:	fff7879b          	addiw	a5,a5,-1
    80004820:	06f52c23          	sw	a5,120(a0)
    80004824:	07853783          	ld	a5,120(a0)
    80004828:	00079863          	bnez	a5,80004838 <pop_on+0x48>
    8000482c:	100027f3          	csrr	a5,sstatus
    80004830:	ffd7f793          	andi	a5,a5,-3
    80004834:	10079073          	csrw	sstatus,a5
    80004838:	00813083          	ld	ra,8(sp)
    8000483c:	00013403          	ld	s0,0(sp)
    80004840:	01010113          	addi	sp,sp,16
    80004844:	00008067          	ret
    80004848:	00001517          	auipc	a0,0x1
    8000484c:	b0050513          	addi	a0,a0,-1280 # 80005348 <digits+0x70>
    80004850:	fffff097          	auipc	ra,0xfffff
    80004854:	f2c080e7          	jalr	-212(ra) # 8000377c <panic>
    80004858:	00001517          	auipc	a0,0x1
    8000485c:	ad050513          	addi	a0,a0,-1328 # 80005328 <digits+0x50>
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	f1c080e7          	jalr	-228(ra) # 8000377c <panic>

0000000080004868 <__memset>:
    80004868:	ff010113          	addi	sp,sp,-16
    8000486c:	00813423          	sd	s0,8(sp)
    80004870:	01010413          	addi	s0,sp,16
    80004874:	1a060e63          	beqz	a2,80004a30 <__memset+0x1c8>
    80004878:	40a007b3          	neg	a5,a0
    8000487c:	0077f793          	andi	a5,a5,7
    80004880:	00778693          	addi	a3,a5,7
    80004884:	00b00813          	li	a6,11
    80004888:	0ff5f593          	andi	a1,a1,255
    8000488c:	fff6071b          	addiw	a4,a2,-1
    80004890:	1b06e663          	bltu	a3,a6,80004a3c <__memset+0x1d4>
    80004894:	1cd76463          	bltu	a4,a3,80004a5c <__memset+0x1f4>
    80004898:	1a078e63          	beqz	a5,80004a54 <__memset+0x1ec>
    8000489c:	00b50023          	sb	a1,0(a0)
    800048a0:	00100713          	li	a4,1
    800048a4:	1ae78463          	beq	a5,a4,80004a4c <__memset+0x1e4>
    800048a8:	00b500a3          	sb	a1,1(a0)
    800048ac:	00200713          	li	a4,2
    800048b0:	1ae78a63          	beq	a5,a4,80004a64 <__memset+0x1fc>
    800048b4:	00b50123          	sb	a1,2(a0)
    800048b8:	00300713          	li	a4,3
    800048bc:	18e78463          	beq	a5,a4,80004a44 <__memset+0x1dc>
    800048c0:	00b501a3          	sb	a1,3(a0)
    800048c4:	00400713          	li	a4,4
    800048c8:	1ae78263          	beq	a5,a4,80004a6c <__memset+0x204>
    800048cc:	00b50223          	sb	a1,4(a0)
    800048d0:	00500713          	li	a4,5
    800048d4:	1ae78063          	beq	a5,a4,80004a74 <__memset+0x20c>
    800048d8:	00b502a3          	sb	a1,5(a0)
    800048dc:	00700713          	li	a4,7
    800048e0:	18e79e63          	bne	a5,a4,80004a7c <__memset+0x214>
    800048e4:	00b50323          	sb	a1,6(a0)
    800048e8:	00700e93          	li	t4,7
    800048ec:	00859713          	slli	a4,a1,0x8
    800048f0:	00e5e733          	or	a4,a1,a4
    800048f4:	01059e13          	slli	t3,a1,0x10
    800048f8:	01c76e33          	or	t3,a4,t3
    800048fc:	01859313          	slli	t1,a1,0x18
    80004900:	006e6333          	or	t1,t3,t1
    80004904:	02059893          	slli	a7,a1,0x20
    80004908:	40f60e3b          	subw	t3,a2,a5
    8000490c:	011368b3          	or	a7,t1,a7
    80004910:	02859813          	slli	a6,a1,0x28
    80004914:	0108e833          	or	a6,a7,a6
    80004918:	03059693          	slli	a3,a1,0x30
    8000491c:	003e589b          	srliw	a7,t3,0x3
    80004920:	00d866b3          	or	a3,a6,a3
    80004924:	03859713          	slli	a4,a1,0x38
    80004928:	00389813          	slli	a6,a7,0x3
    8000492c:	00f507b3          	add	a5,a0,a5
    80004930:	00e6e733          	or	a4,a3,a4
    80004934:	000e089b          	sext.w	a7,t3
    80004938:	00f806b3          	add	a3,a6,a5
    8000493c:	00e7b023          	sd	a4,0(a5)
    80004940:	00878793          	addi	a5,a5,8
    80004944:	fed79ce3          	bne	a5,a3,8000493c <__memset+0xd4>
    80004948:	ff8e7793          	andi	a5,t3,-8
    8000494c:	0007871b          	sext.w	a4,a5
    80004950:	01d787bb          	addw	a5,a5,t4
    80004954:	0ce88e63          	beq	a7,a4,80004a30 <__memset+0x1c8>
    80004958:	00f50733          	add	a4,a0,a5
    8000495c:	00b70023          	sb	a1,0(a4)
    80004960:	0017871b          	addiw	a4,a5,1
    80004964:	0cc77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004968:	00e50733          	add	a4,a0,a4
    8000496c:	00b70023          	sb	a1,0(a4)
    80004970:	0027871b          	addiw	a4,a5,2
    80004974:	0ac77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004978:	00e50733          	add	a4,a0,a4
    8000497c:	00b70023          	sb	a1,0(a4)
    80004980:	0037871b          	addiw	a4,a5,3
    80004984:	0ac77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004988:	00e50733          	add	a4,a0,a4
    8000498c:	00b70023          	sb	a1,0(a4)
    80004990:	0047871b          	addiw	a4,a5,4
    80004994:	08c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004998:	00e50733          	add	a4,a0,a4
    8000499c:	00b70023          	sb	a1,0(a4)
    800049a0:	0057871b          	addiw	a4,a5,5
    800049a4:	08c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049a8:	00e50733          	add	a4,a0,a4
    800049ac:	00b70023          	sb	a1,0(a4)
    800049b0:	0067871b          	addiw	a4,a5,6
    800049b4:	06c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049b8:	00e50733          	add	a4,a0,a4
    800049bc:	00b70023          	sb	a1,0(a4)
    800049c0:	0077871b          	addiw	a4,a5,7
    800049c4:	06c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049c8:	00e50733          	add	a4,a0,a4
    800049cc:	00b70023          	sb	a1,0(a4)
    800049d0:	0087871b          	addiw	a4,a5,8
    800049d4:	04c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049d8:	00e50733          	add	a4,a0,a4
    800049dc:	00b70023          	sb	a1,0(a4)
    800049e0:	0097871b          	addiw	a4,a5,9
    800049e4:	04c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049e8:	00e50733          	add	a4,a0,a4
    800049ec:	00b70023          	sb	a1,0(a4)
    800049f0:	00a7871b          	addiw	a4,a5,10
    800049f4:	02c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049f8:	00e50733          	add	a4,a0,a4
    800049fc:	00b70023          	sb	a1,0(a4)
    80004a00:	00b7871b          	addiw	a4,a5,11
    80004a04:	02c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004a08:	00e50733          	add	a4,a0,a4
    80004a0c:	00b70023          	sb	a1,0(a4)
    80004a10:	00c7871b          	addiw	a4,a5,12
    80004a14:	00c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004a18:	00e50733          	add	a4,a0,a4
    80004a1c:	00b70023          	sb	a1,0(a4)
    80004a20:	00d7879b          	addiw	a5,a5,13
    80004a24:	00c7f663          	bgeu	a5,a2,80004a30 <__memset+0x1c8>
    80004a28:	00f507b3          	add	a5,a0,a5
    80004a2c:	00b78023          	sb	a1,0(a5)
    80004a30:	00813403          	ld	s0,8(sp)
    80004a34:	01010113          	addi	sp,sp,16
    80004a38:	00008067          	ret
    80004a3c:	00b00693          	li	a3,11
    80004a40:	e55ff06f          	j	80004894 <__memset+0x2c>
    80004a44:	00300e93          	li	t4,3
    80004a48:	ea5ff06f          	j	800048ec <__memset+0x84>
    80004a4c:	00100e93          	li	t4,1
    80004a50:	e9dff06f          	j	800048ec <__memset+0x84>
    80004a54:	00000e93          	li	t4,0
    80004a58:	e95ff06f          	j	800048ec <__memset+0x84>
    80004a5c:	00000793          	li	a5,0
    80004a60:	ef9ff06f          	j	80004958 <__memset+0xf0>
    80004a64:	00200e93          	li	t4,2
    80004a68:	e85ff06f          	j	800048ec <__memset+0x84>
    80004a6c:	00400e93          	li	t4,4
    80004a70:	e7dff06f          	j	800048ec <__memset+0x84>
    80004a74:	00500e93          	li	t4,5
    80004a78:	e75ff06f          	j	800048ec <__memset+0x84>
    80004a7c:	00600e93          	li	t4,6
    80004a80:	e6dff06f          	j	800048ec <__memset+0x84>

0000000080004a84 <__memmove>:
    80004a84:	ff010113          	addi	sp,sp,-16
    80004a88:	00813423          	sd	s0,8(sp)
    80004a8c:	01010413          	addi	s0,sp,16
    80004a90:	0e060863          	beqz	a2,80004b80 <__memmove+0xfc>
    80004a94:	fff6069b          	addiw	a3,a2,-1
    80004a98:	0006881b          	sext.w	a6,a3
    80004a9c:	0ea5e863          	bltu	a1,a0,80004b8c <__memmove+0x108>
    80004aa0:	00758713          	addi	a4,a1,7
    80004aa4:	00a5e7b3          	or	a5,a1,a0
    80004aa8:	40a70733          	sub	a4,a4,a0
    80004aac:	0077f793          	andi	a5,a5,7
    80004ab0:	00f73713          	sltiu	a4,a4,15
    80004ab4:	00174713          	xori	a4,a4,1
    80004ab8:	0017b793          	seqz	a5,a5
    80004abc:	00e7f7b3          	and	a5,a5,a4
    80004ac0:	10078863          	beqz	a5,80004bd0 <__memmove+0x14c>
    80004ac4:	00900793          	li	a5,9
    80004ac8:	1107f463          	bgeu	a5,a6,80004bd0 <__memmove+0x14c>
    80004acc:	0036581b          	srliw	a6,a2,0x3
    80004ad0:	fff8081b          	addiw	a6,a6,-1
    80004ad4:	02081813          	slli	a6,a6,0x20
    80004ad8:	01d85893          	srli	a7,a6,0x1d
    80004adc:	00858813          	addi	a6,a1,8
    80004ae0:	00058793          	mv	a5,a1
    80004ae4:	00050713          	mv	a4,a0
    80004ae8:	01088833          	add	a6,a7,a6
    80004aec:	0007b883          	ld	a7,0(a5)
    80004af0:	00878793          	addi	a5,a5,8
    80004af4:	00870713          	addi	a4,a4,8
    80004af8:	ff173c23          	sd	a7,-8(a4)
    80004afc:	ff0798e3          	bne	a5,a6,80004aec <__memmove+0x68>
    80004b00:	ff867713          	andi	a4,a2,-8
    80004b04:	02071793          	slli	a5,a4,0x20
    80004b08:	0207d793          	srli	a5,a5,0x20
    80004b0c:	00f585b3          	add	a1,a1,a5
    80004b10:	40e686bb          	subw	a3,a3,a4
    80004b14:	00f507b3          	add	a5,a0,a5
    80004b18:	06e60463          	beq	a2,a4,80004b80 <__memmove+0xfc>
    80004b1c:	0005c703          	lbu	a4,0(a1)
    80004b20:	00e78023          	sb	a4,0(a5)
    80004b24:	04068e63          	beqz	a3,80004b80 <__memmove+0xfc>
    80004b28:	0015c603          	lbu	a2,1(a1)
    80004b2c:	00100713          	li	a4,1
    80004b30:	00c780a3          	sb	a2,1(a5)
    80004b34:	04e68663          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b38:	0025c603          	lbu	a2,2(a1)
    80004b3c:	00200713          	li	a4,2
    80004b40:	00c78123          	sb	a2,2(a5)
    80004b44:	02e68e63          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b48:	0035c603          	lbu	a2,3(a1)
    80004b4c:	00300713          	li	a4,3
    80004b50:	00c781a3          	sb	a2,3(a5)
    80004b54:	02e68663          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b58:	0045c603          	lbu	a2,4(a1)
    80004b5c:	00400713          	li	a4,4
    80004b60:	00c78223          	sb	a2,4(a5)
    80004b64:	00e68e63          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b68:	0055c603          	lbu	a2,5(a1)
    80004b6c:	00500713          	li	a4,5
    80004b70:	00c782a3          	sb	a2,5(a5)
    80004b74:	00e68663          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b78:	0065c703          	lbu	a4,6(a1)
    80004b7c:	00e78323          	sb	a4,6(a5)
    80004b80:	00813403          	ld	s0,8(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret
    80004b8c:	02061713          	slli	a4,a2,0x20
    80004b90:	02075713          	srli	a4,a4,0x20
    80004b94:	00e587b3          	add	a5,a1,a4
    80004b98:	f0f574e3          	bgeu	a0,a5,80004aa0 <__memmove+0x1c>
    80004b9c:	02069613          	slli	a2,a3,0x20
    80004ba0:	02065613          	srli	a2,a2,0x20
    80004ba4:	fff64613          	not	a2,a2
    80004ba8:	00e50733          	add	a4,a0,a4
    80004bac:	00c78633          	add	a2,a5,a2
    80004bb0:	fff7c683          	lbu	a3,-1(a5)
    80004bb4:	fff78793          	addi	a5,a5,-1
    80004bb8:	fff70713          	addi	a4,a4,-1
    80004bbc:	00d70023          	sb	a3,0(a4)
    80004bc0:	fec798e3          	bne	a5,a2,80004bb0 <__memmove+0x12c>
    80004bc4:	00813403          	ld	s0,8(sp)
    80004bc8:	01010113          	addi	sp,sp,16
    80004bcc:	00008067          	ret
    80004bd0:	02069713          	slli	a4,a3,0x20
    80004bd4:	02075713          	srli	a4,a4,0x20
    80004bd8:	00170713          	addi	a4,a4,1
    80004bdc:	00e50733          	add	a4,a0,a4
    80004be0:	00050793          	mv	a5,a0
    80004be4:	0005c683          	lbu	a3,0(a1)
    80004be8:	00178793          	addi	a5,a5,1
    80004bec:	00158593          	addi	a1,a1,1
    80004bf0:	fed78fa3          	sb	a3,-1(a5)
    80004bf4:	fee798e3          	bne	a5,a4,80004be4 <__memmove+0x160>
    80004bf8:	f89ff06f          	j	80004b80 <__memmove+0xfc>

0000000080004bfc <__putc>:
    80004bfc:	fe010113          	addi	sp,sp,-32
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00113c23          	sd	ra,24(sp)
    80004c08:	02010413          	addi	s0,sp,32
    80004c0c:	00050793          	mv	a5,a0
    80004c10:	fef40593          	addi	a1,s0,-17
    80004c14:	00100613          	li	a2,1
    80004c18:	00000513          	li	a0,0
    80004c1c:	fef407a3          	sb	a5,-17(s0)
    80004c20:	fffff097          	auipc	ra,0xfffff
    80004c24:	b3c080e7          	jalr	-1220(ra) # 8000375c <console_write>
    80004c28:	01813083          	ld	ra,24(sp)
    80004c2c:	01013403          	ld	s0,16(sp)
    80004c30:	02010113          	addi	sp,sp,32
    80004c34:	00008067          	ret

0000000080004c38 <__getc>:
    80004c38:	fe010113          	addi	sp,sp,-32
    80004c3c:	00813823          	sd	s0,16(sp)
    80004c40:	00113c23          	sd	ra,24(sp)
    80004c44:	02010413          	addi	s0,sp,32
    80004c48:	fe840593          	addi	a1,s0,-24
    80004c4c:	00100613          	li	a2,1
    80004c50:	00000513          	li	a0,0
    80004c54:	fffff097          	auipc	ra,0xfffff
    80004c58:	ae8080e7          	jalr	-1304(ra) # 8000373c <console_read>
    80004c5c:	fe844503          	lbu	a0,-24(s0)
    80004c60:	01813083          	ld	ra,24(sp)
    80004c64:	01013403          	ld	s0,16(sp)
    80004c68:	02010113          	addi	sp,sp,32
    80004c6c:	00008067          	ret

0000000080004c70 <console_handler>:
    80004c70:	fe010113          	addi	sp,sp,-32
    80004c74:	00813823          	sd	s0,16(sp)
    80004c78:	00113c23          	sd	ra,24(sp)
    80004c7c:	00913423          	sd	s1,8(sp)
    80004c80:	02010413          	addi	s0,sp,32
    80004c84:	14202773          	csrr	a4,scause
    80004c88:	100027f3          	csrr	a5,sstatus
    80004c8c:	0027f793          	andi	a5,a5,2
    80004c90:	06079e63          	bnez	a5,80004d0c <console_handler+0x9c>
    80004c94:	00074c63          	bltz	a4,80004cac <console_handler+0x3c>
    80004c98:	01813083          	ld	ra,24(sp)
    80004c9c:	01013403          	ld	s0,16(sp)
    80004ca0:	00813483          	ld	s1,8(sp)
    80004ca4:	02010113          	addi	sp,sp,32
    80004ca8:	00008067          	ret
    80004cac:	0ff77713          	andi	a4,a4,255
    80004cb0:	00900793          	li	a5,9
    80004cb4:	fef712e3          	bne	a4,a5,80004c98 <console_handler+0x28>
    80004cb8:	ffffe097          	auipc	ra,0xffffe
    80004cbc:	6dc080e7          	jalr	1756(ra) # 80003394 <plic_claim>
    80004cc0:	00a00793          	li	a5,10
    80004cc4:	00050493          	mv	s1,a0
    80004cc8:	02f50c63          	beq	a0,a5,80004d00 <console_handler+0x90>
    80004ccc:	fc0506e3          	beqz	a0,80004c98 <console_handler+0x28>
    80004cd0:	00050593          	mv	a1,a0
    80004cd4:	00000517          	auipc	a0,0x0
    80004cd8:	57c50513          	addi	a0,a0,1404 # 80005250 <CONSOLE_STATUS+0x240>
    80004cdc:	fffff097          	auipc	ra,0xfffff
    80004ce0:	afc080e7          	jalr	-1284(ra) # 800037d8 <__printf>
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	01813083          	ld	ra,24(sp)
    80004cec:	00048513          	mv	a0,s1
    80004cf0:	00813483          	ld	s1,8(sp)
    80004cf4:	02010113          	addi	sp,sp,32
    80004cf8:	ffffe317          	auipc	t1,0xffffe
    80004cfc:	6d430067          	jr	1748(t1) # 800033cc <plic_complete>
    80004d00:	fffff097          	auipc	ra,0xfffff
    80004d04:	3e0080e7          	jalr	992(ra) # 800040e0 <uartintr>
    80004d08:	fddff06f          	j	80004ce4 <console_handler+0x74>
    80004d0c:	00000517          	auipc	a0,0x0
    80004d10:	64450513          	addi	a0,a0,1604 # 80005350 <digits+0x78>
    80004d14:	fffff097          	auipc	ra,0xfffff
    80004d18:	a68080e7          	jalr	-1432(ra) # 8000377c <panic>
	...
