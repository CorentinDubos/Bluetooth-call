.class public Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;
.super Ljava/lang/Object;
.source "CustomDialpadData.java"


# static fields
.field public static final CALL:Ljava/lang/String; = "call"

.field public static final CLEAN:Ljava/lang/String; = "clean"

.field public static final HANGUP:Ljava/lang/String; = "hangup"

.field public static dialpads:[I

.field public static dialpadsP:[I

.field public static dialpadsSize:[[I

.field public static keys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 10
    fill-array-data v1, :array_0

    sput-object v1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->dialpads:[I

    new-array v1, v0, [I

    .line 14
    fill-array-data v1, :array_1

    sput-object v1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->dialpadsP:[I

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 18
    fill-array-data v2, :array_2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_11

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->dialpadsSize:[[I

    const-string v3, "call"

    const-string v4, "0"

    const-string v5, "1"

    const-string v6, "2"

    const-string v7, "3"

    const-string v8, "4"

    const-string v9, "5"

    const-string v10, "6"

    const-string v11, "7"

    const-string v12, "8"

    const-string v13, "9"

    const-string v14, "*"

    const-string v15, "#"

    const-string v16, "+"

    const-string v17, "clean"

    const-string v18, "hangup"

    .line 35
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->keys:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08151f
        0x7f081503
        0x7f081505
        0x7f081507
        0x7f081509
        0x7f08150b
        0x7f08150d
        0x7f08150f
        0x7f081511
        0x7f081513
        0x7f081515
        0x7f081521
        0x7f08151d
        0x7f08151b
        0x7f081517
        0x7f081519
    .end array-data

    :array_1
    .array-data 4
        0x7f08151e
        0x7f081502
        0x7f081504
        0x7f081506
        0x7f081508
        0x7f08150a
        0x7f08150c
        0x7f08150e
        0x7f081510
        0x7f081512
        0x7f081514
        0x7f081520
        0x7f08151c
        0x7f08151a
        0x7f081516
        0x7f081518
    .end array-data

    :array_2
    .array-data 4
        0x7f070017
        0x7f070015
    .end array-data

    :array_3
    .array-data 4
        0x7f070018
        0x7f070016
    .end array-data

    :array_4
    .array-data 4
        0x7f070018
        0x7f070016
    .end array-data

    :array_5
    .array-data 4
        0x7f070018
        0x7f070016
    .end array-data

    :array_6
    .array-data 4
        0x7f070018
        0x7f070016
    .end array-data

    :array_7
    .array-data 4
        0x7f070018
        0x7f070016
    .end array-data

    :array_8
    .array-data 4
        0x7f070018
        0x7f070016
    .end array-data

    :array_9
    .array-data 4
        0x7f070019
        0x7f070016
    .end array-data

    :array_a
    .array-data 4
        0x7f07001a
        0x7f070016
    .end array-data

    :array_b
    .array-data 4
        0x7f070018
        0x7f070016
    .end array-data

    :array_c
    .array-data 4
        0x7f07001b
        0x7f070016
    .end array-data

    :array_d
    .array-data 4
        0x7f07001c
        0x7f070016
    .end array-data

    :array_e
    .array-data 4
        0x7f07001c
        0x7f070016
    .end array-data

    :array_f
    .array-data 4
        0x7f07001c
        0x7f070016
    .end array-data

    :array_10
    .array-data 4
        0x7f07001d
        0x7f070016
    .end array-data

    :array_11
    .array-data 4
        0x7f07001d
        0x7f070016
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
