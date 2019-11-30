.arm
.text

#include "../ropinclude/constants.h"

#define ROPBUF 0x08D8FA6C     //heap location of rop payload (ropkit_boototherapp.s) that launches otherapp
#define ROPKIT_LINEARMEM_REGIONBASE 0x30000000
#define ROPKIT_LINEARMEM_BUF (ROPKIT_LINEARMEM_REGIONBASE+0x1000000)

#define ROPKIT_BINPAYLOAD_PATH "ext:/otherapp.bin"
#define ROPKIT_MOUNTSAVEDATA
#define ROPKIT_TMPDATA 0x0FFFc000
#define ROPKIT_BINLOAD_TEXTOFFSET 0x1000
#define ROPKIT_ENABLETERMINATE_GSPTHREAD
#define ROPKIT_BEFOREJUMP_CACHEBUFADDR 0x30000000
#define ROPKIT_BEFOREJUMP_CACHEBUFSIZE 0x800000  //large gsgpu flush fixes our new3ds L2 cache issues - and increases stability for old3ds 

#include "ropkit_ropinclude.s"

_start:
ropstackstart:

#include "ropkit_boototherapp.s"

ropkit_cmpobject:
.word (ROPBUFLOC(ropkit_cmpobject) + 0x4) @ Vtable-ptr
.fill (0x40 / 4), 4, STACK_PIVOT @ Vtable