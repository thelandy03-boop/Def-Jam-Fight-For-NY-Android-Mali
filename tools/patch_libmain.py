#!/usr/bin/env python3
"""
Patch script for Def Jam: Fight for NY (Android Mali Edition)
Patches libmain.so sub_00077020 (0x831ce8) to:
- Native playback of EA Games & THX intros
- Clean EOF signal (*(stream + 0x21) = 1, *(stream + 0x24) = 0, eax = 1)
- Accurate frame timing without freeze
- Safe return on non-video stream calls
"""
import sys
import struct

def patch_libmain(so_path):
    with open(so_path, 'rb') as f:
        data = bytearray(f.read())

    # 1. 0x831cd8: cbz w11, #0x831d34 (skip straight to epilogue returning 0 if field_18 == 0)
    data[0x831cd8:0x831cdc] = struct.pack('<I', 0x340002eb)

    # 2. 0x831ce8 to 0x831d34 (19 instructions = 76 bytes)
    # Assembled with clang --target=aarch64-linux-gnu
    patch_instructions = [
        0xb9400182,  # 0x831ce8: ldr   w2, [x12, w11, uxtw]
        0x34000182,  # 0x831cec: cbz   w2, #0x831d18
        0xd000b8e1,  # 0x831cf0: adrp  x1, #0x1f4f000
        0xb94e5422,  # 0x831cf4: ldr   w2, [x1, #0xe54]
        0x35000102,  # 0x831cf8: cbnz  w2, #0x831d18
        0xb94e5022,  # 0x831cfc: ldr   w2, [x1, #0xe50]
        0x11000442,  # 0x831d00: add   w2, w2, #1
        0xb90e5022,  # 0x831d04: str   w2, [x1, #0xe50]
        0x7101905f,  # 0x831d08: cmp   w2, #100
        0x54000082,  # 0x831d0c: b.hs  #0x831d18
        0xb900013f,  # 0x831d10: str   wzr, [x9, x0]
        0x14000008,  # 0x831d14: b     #0x831d34
        0xd000b8e1,  # 0x831d18: adrp  x1, #0x1f4f000
        0xf907283f,  # 0x831d1c: str   xzr, [x1, #0xe50]
        0x51000d68,  # 0x831d20: sub   w8, w11, #3
        0x5280002a,  # 0x831d24: mov   w10, #1
        0x3828698a,  # 0x831d28: strb  w10, [x12, w8, uxtw]
        0xb82b699f,  # 0x831d2c: str   wzr, [x12, w11, uxtw]
        0xb900012a,  # 0x831d30: str   w10, [x9, x0]
    ]

    patch_bytes = b''.join(struct.pack('<I', ins) for ins in patch_instructions)
    data[0x831ce8:0x831ce8 + len(patch_bytes)] = patch_bytes

    with open(so_path, 'wb') as f:
        f.write(data)

    print(f"Successfully patched {so_path} ({len(patch_bytes)} bytes written)")

if __name__ == '__main__':
    target = sys.argv[1] if len(sys.argv) > 1 else 'android-port/lib/arm64-v8a/libmain.so'
    patch_libmain(target)
