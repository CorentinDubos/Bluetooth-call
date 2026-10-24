.class public abstract Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;
.super Landroid/os/Binder;
.source "IRadioInfoChangeListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

.field static final TRANSACTION_dabDlsInfor:I = 0x11

.field static final TRANSACTION_dabKbitInfor:I = 0x12

.field static final TRANSACTION_dabServiceIDInfor:I = 0x13

.field static final TRANSACTION_dabServiceInfor:I = 0x10

.field static final TRANSACTION_dabServiceItemLabel:I = 0x14

.field static final TRANSACTION_dabServiceLabel:I = 0xf

.field static final TRANSACTION_radioAutoSearchStatusChanged:I = 0x5

.field static final TRANSACTION_radioAutoSearchWithPreviewStatusChanged:I = 0x6

.field static final TRANSACTION_radioBandTypeChanged:I = 0x4

.field static final TRANSACTION_radioChannelTypeChanged:I = 0x1

.field static final TRANSACTION_radioForceMonoChanged:I = 0xe

.field static final TRANSACTION_radioFreqChanged:I = 0x3

.field static final TRANSACTION_radioLocalChanged:I = 0xd

.field static final TRANSACTION_radioPresetFreqListChanged:I = 0x9

.field static final TRANSACTION_radioPresetFreqPSListChanged:I = 0xa

.field static final TRANSACTION_radioPresetFreqPSNameChanged:I = 0xb

.field static final TRANSACTION_radioSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_radioStepDownStatusChanged:I = 0x8

.field static final TRANSACTION_radioStepUpStatusChanged:I = 0x7

.field static final TRANSACTION_radioStereoChanged:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 86
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 97
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    if-eqz v1, :cond_1

    .line 99
    check-cast v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    return-object v0

    .line 101
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;
    .locals 1

    .line 736
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)Z
    .locals 1

    .line 729
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 730
    sput-object p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 292
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->dabServiceItemLabel(ILjava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 283
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->dabServiceIDInfor([Ljava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 274
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->dabKbitInfor(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 265
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->dabDlsInfor(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 256
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->dabServiceInfor([I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 247
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->dabServiceLabel([Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 238
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioForceMonoChanged(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 229
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioLocalChanged(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 220
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioStereoChanged(I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 209
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioPresetFreqPSNameChanged(ILjava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 200
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioPresetFreqPSListChanged([Ljava/lang/String;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 191
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioPresetFreqListChanged([Ljava/lang/String;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 182
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 185
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioStepDownStatusChanged(Z)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 173
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 176
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioStepUpStatusChanged(Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 164
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 167
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioAutoSearchWithPreviewStatusChanged(Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 155
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 158
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioAutoSearchStatusChanged(Z)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 146
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioBandTypeChanged(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 137
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioFreqChanged(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 128
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioSignalStrengthChanged(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 119
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->radioChannelTypeChanged(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
