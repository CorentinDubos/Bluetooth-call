.class public abstract Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHfServerNotify.java"

# interfaces
.implements Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.autochips.bluetooth.hf.IBluetoothHfServerNotify"

.field static final TRANSACTION_AcceptIncommingCall:I = 0x3

.field static final TRANSACTION_CallHold:I = 0x6

.field static final TRANSACTION_CallWait:I = 0x5

.field static final TRANSACTION_DialNumber:I = 0x2

.field static final TRANSACTION_IsSCOConnected:I = 0xe

.field static final TRANSACTION_QueryCallList:I = 0xb

.field static final TRANSACTION_QuerySubcriberInfo:I = 0x8

.field static final TRANSACTION_Redial:I = 0xa

.field static final TRANSACTION_SendDTMFCode:I = 0x7

.field static final TRANSACTION_SetPhoneSpeakerGain:I = 0xc

.field static final TRANSACTION_SwithAudioTransfer:I = 0x9

.field static final TRANSACTION_TerminatePhoneCall:I = 0x4

.field static final TRANSACTION_enableVoiceRecognition:I = 0x18

.field static final TRANSACTION_getCLIPPhoneNumber:I = 0x12

.field static final TRANSACTION_getHfCallValue:I = 0x10

.field static final TRANSACTION_getHfCallsetupValue:I = 0x11

.field static final TRANSACTION_getReconnectSuggestion:I = 0x1a

.field static final TRANSACTION_handsfreeSinkSetPhoneMicGain:I = 0xd

.field static final TRANSACTION_hfAtCmdQueryCalllist:I = 0x15

.field static final TRANSACTION_hfAtCmdQueryPhoneIdentification:I = 0x17

.field static final TRANSACTION_hfAtCmdQueryPhoneIndicator:I = 0x16

.field static final TRANSACTION_isHfPrfileConnected:I = 0x1

.field static final TRANSACTION_isRemoteDeviceSupportVoiceRecog:I = 0x13

.field static final TRANSACTION_regClientBinder:I = 0x19

.field static final TRANSACTION_requestSCOSoundEnable:I = 0xf

.field static final TRANSACTION_sendATCommand:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.autochips.bluetooth.hf.IBluetoothHfServerNotify"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.autochips.bluetooth.hf.IBluetoothHfServerNotify"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.autochips.bluetooth.hf.IBluetoothHfServerNotify"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 255
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->getReconnectSuggestion()Z

    move-result p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 246
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->regClientBinder(Landroid/os/IBinder;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 237
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    .line 240
    :cond_0
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->enableVoiceRecognition(Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 230
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->hfAtCmdQueryPhoneIdentification()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 223
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->hfAtCmdQueryPhoneIndicator()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 216
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->hfAtCmdQueryCalllist()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 204
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v2

    .line 209
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->sendATCommand(Ljava/lang/String;Z)I

    move-result p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 196
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->isRemoteDeviceSupportVoiceRecog()Z

    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 188
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->getCLIPPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 180
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->getHfCallsetupValue()I

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 172
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->getHfCallValue()I

    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 163
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v2

    .line 166
    :cond_2
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->requestSCOSoundEnable(Z)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 155
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->IsSCOConnected()Z

    move-result p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 145
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->handsfreeSinkSetPhoneMicGain(I)Z

    move-result p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 135
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->SetPhoneSpeakerGain(I)Z

    move-result p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 127
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->QueryCallList()Z

    move-result p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 119
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->Redial()Z

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 110
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    .line 113
    :cond_3
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->SwithAudioTransfer(Z)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 103
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->QuerySubcriberInfo()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 94
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->SendDTMFCode(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 85
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->CallHold(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 78
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->CallWait()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 71
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->TerminatePhoneCall()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 64
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->AcceptIncommingCall()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 55
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->DialNumber(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 47
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->isHfPrfileConnected()Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 42
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
