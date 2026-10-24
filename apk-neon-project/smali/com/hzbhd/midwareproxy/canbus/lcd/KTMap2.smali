.class public Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;
.super Ljava/lang/Object;
.source "KTMap2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;
    }
.end annotation


# static fields
.field static KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

.field static KT2_LCD_ASCII_LATTICE:[C

.field static ht2_Char2Ram:[B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    .line 8
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v4, 0x10

    invoke-direct {v1, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v5, 0x100

    invoke-direct {v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v6, 0x200

    invoke-direct {v1, v2, v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v7, 0x800

    invoke-direct {v1, v2, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/4 v7, 0x4

    aput-object v1, v0, v7

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v8, 0x1000

    invoke-direct {v1, v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/4 v9, 0x5

    aput-object v1, v0, v9

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v10, 0x2000

    invoke-direct {v1, v2, v10}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/4 v10, 0x6

    aput-object v1, v0, v10

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v11, 0x4000

    invoke-direct {v1, v2, v11}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v3, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v11, 0x8

    aput-object v1, v0, v11

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v11, 0x9

    aput-object v1, v0, v11

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v11, 0xa

    aput-object v1, v0, v11

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v5, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v11, 0xb

    aput-object v1, v0, v11

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v5, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v11, 0xc

    aput-object v1, v0, v11

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v5, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v6, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v6, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0xf

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v6, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v7, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0x11

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v7, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0x12

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v7, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0x13

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v9, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0x14

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v9, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0x15

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v9, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v5, 0x16

    aput-object v1, v0, v5

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v10, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v10, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v10, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    invoke-direct {v1, v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;-><init>(IC)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    const/16 v0, 0x90

    new-array v0, v0, [B

    .line 44
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->ht2_Char2Ram:[B

    const/16 v0, 0x80

    new-array v0, v0, [C

    .line 218
    fill-array-data v0, :array_1

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_LCD_ASCII_LATTICE:[C

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x1bt
        0x18t
        -0x1t
        0x1et
        0x1ft
        0x1at
        0x19t
        0x2t
        0x6t
        0x1t
        -0x1t
        -0x1t
        0x7t
        0x5t
        0x1dt
        0x13t
        0x2bt
        0x28t
        -0x1t
        0x2et
        0x2ft
        0x2at
        0x29t
        0x12t
        0x16t
        0x11t
        -0x1t
        -0x1t
        0x17t
        0x15t
        0x2dt
        0x23t
        0x3bt
        0x38t
        -0x1t
        0x3et
        0x3ft
        0x3at
        0x39t
        0x22t
        0x26t
        0x21t
        -0x1t
        -0x1t
        0x27t
        0x25t
        0x3dt
        0x33t
        0x4bt
        0x48t
        -0x1t
        0x4et
        0x4ft
        0x4at
        0x49t
        0x32t
        0x36t
        0x31t
        -0x1t
        -0x1t
        0x37t
        0x35t
        0x4dt
        0x43t
        0x5bt
        0x58t
        -0x1t
        0x5et
        0x5ft
        0x5at
        0x59t
        0x42t
        0x46t
        0x41t
        -0x1t
        -0x1t
        0x47t
        0x45t
        0x5dt
        0x53t
        0x6bt
        0x68t
        -0x1t
        0x6et
        0x6ft
        0x6at
        0x69t
        0x52t
        0x56t
        0x51t
        -0x1t
        -0x1t
        0x57t
        0x55t
        0x6dt
        0x63t
        0x7bt
        0x78t
        -0x1t
        0x7et
        0x7ft
        0x7at
        0x79t
        0x62t
        0x66t
        0x61t
        -0x1t
        -0x1t
        0x67t
        0x65t
        0x7dt
        0x73t
        0x72t
        0x71t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x76t
        -0x1t
        -0x1t
        -0x1t
        0x77t
        0x75t
        0x70t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 2
        -0x1bd9s
        0x6s
        -0x3dbds
        -0x7db9s
        0x2246s
        -0x5dbbs
        -0x1dbbs
        0x7s
        -0x1db9s
        -0x5db9s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        -0x77f0s
        0x12s
        -0x75aas
        -0x55abs
        0x27e4s
        -0x7a1fs
        0x2s
        0xa0s
        0x500s
        0xff0s
        0xa50s
        0x44s
        0x240s
        0xc4s
        0x420s
        -0x1bd9s
        0x6s
        -0x3dbds
        -0x7db9s
        0x2246s
        -0x5dbbs
        -0x1dbbs
        0x7s
        -0x1db9s
        -0x5db9s
        -0x7e00s
        0x45s
        0x2a0s
        -0x7dc0s
        0x540s
        0x2443s
        -0x3d79s
        0x6247s
        -0x7fa9s
        -0x1fffs
        -0x77e9s
        -0x1dbfs
        0x6241s
        -0x1fbbs
        0x6246s
        -0x77efs
        -0x7ffas
        0x62a0s
        -0x2000s
        0x6126s
        0x6186s
        -0x1ff9s
        0x6243s
        -0x1f79s
        0x62c3s
        -0x5dbbs
        0x811s
        -0x1ffas
        0x6420s
        0x6486s
        0x5a0s
        -0x5dbas
        -0x7bdfs
        -0x1fffs
        0x180s
        -0x7ff9s
        0x426s
        -0x8000s
        0xa00s
        0x6247s
        -0x7fa9s
        -0x1fffs
        -0x77e9s
        -0x1dbfs
        0x6241s
        -0x1fbbs
        0x6246s
        -0x77efs
        -0x7ffas
        0x62a0s
        -0x2000s
        0x6126s
        0x6186s
        -0x1ff9s
        0x6243s
        -0x1f79s
        0x62c3s
        -0x5dbbs
        0x811s
        -0x1ffas
        0x6420s
        0x6486s
        0x5a0s
        -0x5dbas
        -0x7bdfs
        -0x78ffs
        0x810s
        -0x7f1fs
        0x4220s
        -0x1dacs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
