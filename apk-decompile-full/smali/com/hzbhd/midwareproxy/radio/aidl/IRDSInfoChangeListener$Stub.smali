.class public abstract Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;
.super Landroid/os/Binder;
.source "IRDSInfoChangeListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

.field static final TRANSACTION_AFLevelChanged:I = 0x4

.field static final TRANSACTION_AFSeekChanged:I = 0x5

.field static final TRANSACTION_AFStatusChanged:I = 0x6

.field static final TRANSACTION_CurrentStationStatusChanged:I = 0x10

.field static final TRANSACTION_EONStatusChanged:I = 0xd

.field static final TRANSACTION_EWSArrivedChanged:I = 0x12

.field static final TRANSACTION_EWSStatusChanged:I = 0xc

.field static final TRANSACTION_PSInfoChanged:I = 0x1

.field static final TRANSACTION_PSStatusChanged:I = 0x11

.field static final TRANSACTION_PTYInfoChanged:I = 0x2

.field static final TRANSACTION_PTYSeekChanged:I = 0x8

.field static final TRANSACTION_PTYTypeInfoChanged:I = 0xf

.field static final TRANSACTION_RTInfoChanged:I = 0x3

.field static final TRANSACTION_RTStatusChanged:I = 0x13

.field static final TRANSACTION_RegionStatusChanged:I = 0xa

.field static final TRANSACTION_TASeekChanged:I = 0x9

.field static final TRANSACTION_TAStatusChanged:I = 0xb

.field static final TRANSACTION_TPInfoChanged:I = 0xe

.field static final TRANSACTION_TPSeekChanged:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 91
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 102
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    if-eqz v1, :cond_1

    .line 104
    check-cast v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    return-object v0

    .line 106
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;
    .locals 1

    .line 714
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)Z
    .locals 1

    .line 707
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 708
    sput-object p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

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

    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 286
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 289
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->RTStatusChanged(Z)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 277
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 280
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->EWSArrivedChanged(Z)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 268
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 271
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->PSStatusChanged(Z)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 259
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 262
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->CurrentStationStatusChanged(Z)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 250
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->PTYTypeInfoChanged(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 241
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 244
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->TPInfoChanged(Z)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 232
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 235
    :cond_5
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->EONStatusChanged(Z)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 223
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 226
    :cond_6
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->EWSStatusChanged(Z)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 214
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    .line 217
    :cond_7
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->TAStatusChanged(Z)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 205
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v0, v1

    .line 208
    :cond_8
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->RegionStatusChanged(Z)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 196
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    .line 199
    :cond_9
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->TASeekChanged(Z)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 187
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    move v0, v1

    .line 190
    :cond_a
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->PTYSeekChanged(Z)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 178
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move v0, v1

    .line 181
    :cond_b
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->TPSeekChanged(Z)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 169
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    move v0, v1

    .line 172
    :cond_c
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->AFStatusChanged(Z)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 160
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    move v0, v1

    .line 163
    :cond_d
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->AFSeekChanged(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->AFLevelChanged(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 142
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->RTInfoChanged(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 133
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->PTYInfoChanged(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 124
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->PSInfoChanged(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 119
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
