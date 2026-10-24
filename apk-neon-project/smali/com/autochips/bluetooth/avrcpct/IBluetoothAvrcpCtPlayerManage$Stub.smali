.class public abstract Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;
.super Landroid/os/Binder;
.source "IBluetoothAvrcpCtPlayerManage.java"

# interfaces
.implements Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.IBluetoothAvrcpCtPlayerManage"

.field static final TRANSACTION_getA2dpAudioStatus:I = 0x18

.field static final TRANSACTION_getA2dpSinkState:I = 0x12

.field static final TRANSACTION_getA2dpSourceAddr:I = 0x13

.field static final TRANSACTION_getAvrcpctState:I = 0x14

.field static final TRANSACTION_getPosChangedEventStatus:I = 0x16

.field static final TRANSACTION_getTrackChangedEventStatus:I = 0x15

.field static final TRANSACTION_playBackward:I = 0x4

.field static final TRANSACTION_playContinue:I = 0x2

.field static final TRANSACTION_playFastForward:I = 0x6

.field static final TRANSACTION_playForward:I = 0x3

.field static final TRANSACTION_playPause:I = 0x1

.field static final TRANSACTION_playRewind:I = 0x7

.field static final TRANSACTION_playStop:I = 0x5

.field static final TRANSACTION_playgetCapabilities:I = 0xd

.field static final TRANSACTION_playgetElementAttributes:I = 0x8

.field static final TRANSACTION_playgetItemAttributes:I = 0xb

.field static final TRANSACTION_playgetPlayerStatus:I = 0x9

.field static final TRANSACTION_playinformDisplaybaleCharset:I = 0xc

.field static final TRANSACTION_playonResume:I = 0x10

.field static final TRANSACTION_playonRevoke:I = 0x11

.field static final TRANSACTION_playregResume:I = 0xf

.field static final TRANSACTION_playregisterNotificationReq:I = 0xa

.field static final TRANSACTION_playresetAudio:I = 0xe

.field static final TRANSACTION_regClientBinder:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.autochips.bluetooth.avrcpct.IBluetoothAvrcpCtPlayerManage"

    .line 20
    invoke-virtual {p0, p0, v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.autochips.bluetooth.avrcpct.IBluetoothAvrcpCtPlayerManage"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    instance-of v1, v0, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.autochips.bluetooth.avrcpct.IBluetoothAvrcpCtPlayerManage"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 281
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->getA2dpAudioStatus()I

    move-result p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 272
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 275
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->regClientBinder(Landroid/os/IBinder;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 264
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->getPosChangedEventStatus()I

    move-result p1

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 256
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->getTrackChangedEventStatus()I

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 248
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->getAvrcpctState()I

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 240
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->getA2dpSourceAddr()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 232
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->getA2dpSinkState()I

    move-result p1

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 225
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playonRevoke()V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 217
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playonResume()I

    move-result p1

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 208
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playregResume(Z)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 196
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playresetAudio(II)I

    move-result p1

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 186
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playgetCapabilities(B)Z

    move-result p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 174
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    int-to-char p2, p2

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playinformDisplaybaleCharset(BC)Z

    move-result p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 156
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char v7, p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    move-object v3, p0

    .line 167
    invoke-virtual/range {v3 .. v9}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playgetItemAttributes(BJCB[I)Z

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 144
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playregisterNotificationReq(BI)Z

    move-result p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 136
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playgetPlayerStatus()Z

    move-result p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 122
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 129
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playgetElementAttributes(JB[I)Z

    move-result p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 112
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playRewind(Ljava/lang/String;)Z

    move-result p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 102
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playFastForward(Ljava/lang/String;)Z

    move-result p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 92
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playStop(Ljava/lang/String;)Z

    move-result p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 82
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playBackward(Ljava/lang/String;)Z

    move-result p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 72
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playForward(Ljava/lang/String;)Z

    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 62
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playContinue(Ljava/lang/String;)Z

    move-result p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 52
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->playPause(Ljava/lang/String;)Z

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 47
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
