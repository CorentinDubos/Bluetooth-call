.class public abstract Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;
.super Landroid/os/Binder;
.source "IDspInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.IDspInterface"

.field static final TRANSACTION_getDelay:I = 0xd

.field static final TRANSACTION_getEqType:I = 0x9

.field static final TRANSACTION_getGain:I = 0x5

.field static final TRANSACTION_getNaviMixType:I = 0xb

.field static final TRANSACTION_getPassFilterFc:I = 0x10

.field static final TRANSACTION_getPassFilterQ:I = 0x11

.field static final TRANSACTION_getSubEnable:I = 0x15

.field static final TRANSACTION_getVolume:I = 0x7

.field static final TRANSACTION_isFreqDividerEnable:I = 0x13

.field static final TRANSACTION_isLoudnessSwitch:I = 0x1a

.field static final TRANSACTION_isMute:I = 0x2

.field static final TRANSACTION_isRcaMixNavi:I = 0x1c

.field static final TRANSACTION_isShowRcaCtrl:I = 0x17

.field static final TRANSACTION_mute:I = 0x1

.field static final TRANSACTION_playBeep:I = 0x3

.field static final TRANSACTION_setDelay:I = 0xe

.field static final TRANSACTION_setEqType:I = 0x8

.field static final TRANSACTION_setFreqDividerenable:I = 0x12

.field static final TRANSACTION_setGain:I = 0x4

.field static final TRANSACTION_setLoudnessSwitch:I = 0x19

.field static final TRANSACTION_setNaviMixType:I = 0xa

.field static final TRANSACTION_setPassFilter:I = 0xf

.field static final TRANSACTION_setRcaMixNavi:I = 0x1b

.field static final TRANSACTION_setSourceMute:I = 0x18

.field static final TRANSACTION_setSubEnable:I = 0x14

.field static final TRANSACTION_setTempFreqDividerenable:I = 0x16

.field static final TRANSACTION_setVolume:I = 0x6

.field static final TRANSACTION_tempMute:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.IDspInterface"

    .line 120
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.IDspInterface"

    .line 131
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    if-eqz v1, :cond_1

    .line 133
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    return-object v0

    .line 135
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;
    .locals 1

    .line 1042
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;)Z
    .locals 1

    .line 1035
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1036
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v10, p0

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p3

    const v2, 0x5f4e5446

    const/4 v12, 0x1

    const-string v3, "com.hzbhd.midwareproxy.binder.service.IDspInterface"

    if-eq v0, v2, :cond_7

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 424
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 416
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->isRcaMixNavi()Z

    move-result v0

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 407
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v12

    .line 410
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setRcaMixNavi(Z)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 399
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->isLoudnessSwitch()Z

    move-result v0

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 390
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v12

    .line 393
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setLoudnessSwitch(Z)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 379
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v12

    .line 384
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setSourceMute(Ljava/lang/String;Z)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 371
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->isShowRcaCtrl()Z

    move-result v0

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 362
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v12

    .line 365
    :cond_3
    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setTempFreqDividerenable(Z)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 354
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getSubEnable()Z

    move-result v0

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 345
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v2, v12

    .line 348
    :cond_4
    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setSubEnable(Z)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 337
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->isFreqDividerEnable()Z

    move-result v0

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 328
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v2, v12

    .line 331
    :cond_5
    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setFreqDividerenable(Z)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 318
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getPassFilterQ(I)D

    move-result-wide v0

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return v12

    .line 308
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getPassFilterFc(I)D

    move-result-wide v0

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return v12

    .line 293
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    .line 302
    invoke-virtual/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setPassFilter(IDDI)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 282
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setDelay(IF)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 272
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getDelay(I)F

    move-result v0

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return v12

    .line 263
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->tempMute(I)V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 255
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getNaviMixType()I

    move-result v0

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 246
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setNaviMixType(I)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 238
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getEqType()I

    move-result v0

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 229
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setEqType(I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 217
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getVolume(II)[D

    move-result-object v0

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    return v12

    .line 198
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move v9, v13

    .line 211
    invoke-virtual/range {v0 .. v9}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setVolume(IIDDDI)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 188
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->getGain(I)I

    move-result v0

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 177
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->setGain(II)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 170
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->playBeep()V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 162
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->isMute()Z

    move-result v0

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 153
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v12

    .line 156
    :cond_6
    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->mute(Z)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 148
    :cond_7
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
