.class public abstract Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;
.super Landroid/os/Binder;
.source "IPBSyncManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.IPBSyncManager"

.field static final TRANSACTION_AddCall:I = 0xc

.field static final TRANSACTION_ClearRemoteDevice:I = 0x4

.field static final TRANSACTION_DeInit:I = 0x2

.field static final TRANSACTION_GetNameByTelExectly:I = 0xb

.field static final TRANSACTION_GetRecCnt:I = 0x8

.field static final TRANSACTION_GetRecord:I = 0x9

.field static final TRANSACTION_GetSyncPath:I = 0x11

.field static final TRANSACTION_GetSyncState:I = 0x10

.field static final TRANSACTION_Init:I = 0x1

.field static final TRANSACTION_SearchPhonebook:I = 0xa

.field static final TRANSACTION_SetDownloadMaxCnt:I = 0xd

.field static final TRANSACTION_SetIndStep:I = 0x7

.field static final TRANSACTION_SetRemoteDevInfo:I = 0xf

.field static final TRANSACTION_SetRemoteDevice:I = 0x3

.field static final TRANSACTION_SetTimeOutVal:I = 0xe

.field static final TRANSACTION_StartDownload:I = 0x5

.field static final TRANSACTION_StopDownload:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.autochips.bluetooth.PbSyncManager.IPBSyncManager"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.autochips.bluetooth.PbSyncManager.IPBSyncManager"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const-string v1, "com.autochips.bluetooth.PbSyncManager.IPBSyncManager"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 237
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->GetSyncPath()I

    move-result p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 229
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->GetSyncState()I

    move-result p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 215
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 222
    invoke-virtual {p0, p1, p4, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->SetRemoteDevInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 203
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->SetTimeOutVal(II)Z

    move-result p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 191
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->SetDownloadMaxCnt(II)Z

    move-result p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 176
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->AddCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 164
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->GetNameByTelExectly(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 149
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 155
    sget-object v0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 156
    invoke-virtual {p0, p1, p4, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->SearchPhonebook(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 132
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    sget-object v1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 141
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->GetRecord(IIILjava/util/List;)Z

    move-result p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 120
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->GetRecCnt(Ljava/lang/String;I)I

    move-result p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 110
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->SetIndStep(I)Z

    move-result p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 100
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->StopDownload(I)Z

    move-result p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 88
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 93
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->StartDownload(IZ)Z

    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 80
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->ClearRemoteDevice()Z

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 63
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 72
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->SetRemoteDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 55
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->DeInit()Z

    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 47
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->Init()Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 42
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
