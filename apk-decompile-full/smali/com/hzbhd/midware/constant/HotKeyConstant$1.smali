.class Lcom/hzbhd/midware/constant/HotKeyConstant$1;
.super Ljava/util/HashMap;
.source "HotKeyConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/HotKeyConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Byte;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 4

    .line 326
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 333
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "POWER"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 334
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 335
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "MUTE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 336
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "EQ"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 337
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "FAD_BAL"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 338
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "DBB"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 339
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "VOL_ADD"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    .line 340
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "VOL_LOSS"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    .line 341
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TILT_UP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 342
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TILT_DN"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 343
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "OPEN_CLOSE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    .line 344
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "PIC"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    .line 345
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "WIDE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    .line 346
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "ANSWER"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    .line 347
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "HANGUP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    .line 348
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SOURCE_MENU"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x11

    .line 349
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "PLAY"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    .line 350
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "PAUSE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    .line 351
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "STOP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 352
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "NEXT"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x15

    .line 353
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "PREV"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x16

    .line 354
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "FASTF"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x17

    .line 355
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "FASTB"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x18

    .line 356
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SLOWF"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x19

    .line 357
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SLOWB"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1a

    .line 358
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "STEP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1b

    .line 359
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "REPEAT"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    .line 360
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "REP_AB"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1d

    .line 361
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SHUFFLE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    .line 362
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SCAN"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f

    .line 363
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "EJECT"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 364
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x21

    .line 365
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    .line 366
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x23

    .line 367
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x24

    .line 368
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x25

    .line 369
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x26

    .line 370
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x27

    .line 371
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x28

    .line 372
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x29

    .line 373
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2a

    .line 374
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2b

    .line 375
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "CLEAR"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2c

    .line 376
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "GOTO"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2d

    .line 377
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "UP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 378
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v2, "DOWN"

    invoke-virtual {p0, v0, v2}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    .line 379
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "LEFT"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x30

    .line 380
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "RIGHT"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x31

    .line 381
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "ENTER"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x32

    .line 382
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "RETURN"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x33

    .line 383
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "TITLE"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x34

    .line 384
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "HOME"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x35

    .line 385
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "AUDIO"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x36

    .line 386
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "SUBTITLE"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x37

    .line 387
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "ANGLE"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x38

    .line 388
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "ZOOM"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x39

    .line 389
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "DISPLAY"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3a

    .line 390
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "SETUP"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3b

    .line 391
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "MUSIC"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3c

    .line 392
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "PHOTO"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3d

    .line 393
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "VIDEO"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e

    .line 394
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "BAND"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3f

    .line 395
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "STAR"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x40

    .line 396
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v3, "NUMBER"

    invoke-virtual {p0, v0, v3}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x41

    .line 397
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x42

    .line 398
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x43

    .line 399
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "PTT"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x44

    .line 400
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "BT"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x45

    .line 401
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SOURCE_REAR"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x46

    .line 402
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "PAUSE_REAR"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x47

    .line 403
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "PREV_REAR"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x48

    .line 404
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "NEXT_REAR"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4b

    .line 405
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "AS"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4c

    .line 406
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "BAND_FM"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4d

    .line 407
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "BAND_AM"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4f

    .line 408
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "1_LONG"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x50

    .line 409
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "2_LONG"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x51

    .line 410
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "3_LONG"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x52

    .line 411
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "4_LONG"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x53

    .line 412
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "5_LONG"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x54

    .line 413
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "6_LONG"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x59

    .line 414
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "LOC"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x5a

    .line 415
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_FF"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x5b

    .line 416
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_PP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x5e

    .line 417
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TA"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x80

    .line 418
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "NAVIGATION"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x7f

    .line 419
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TUNER"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x7e

    .line 420
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "DISC"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x7d

    .line 421
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "SEARCH"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x7c

    .line 422
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "HOST"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x7b

    .line 423
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "BK_LIGHT"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x60

    .line 424
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "RADIO_SEEK_DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x5f

    .line 425
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "RADIO_SEEK_UP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x3d

    .line 426
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "OSD"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x3b

    .line 427
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TTM"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x3a

    .line 428
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "CARPLAY_SIRI"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x6c

    .line 429
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "LOUDNESS"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x6b

    .line 430
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "FCAMEEA"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x6a

    .line 431
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6f

    .line 433
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_AIR_POWER"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6e

    .line 434
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_AIR_AUTO"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6d

    .line 435
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_AIR_IN_OUT_CYCLE"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6c

    .line 436
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_AIR_FRONT_DEFOG"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6b

    .line 437
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_AIR_TEMP_UP"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6a

    .line 438
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "K_AIR_TEMP_DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midware/constant/HotKeyConstant$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
