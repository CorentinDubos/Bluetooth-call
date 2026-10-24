.class public abstract Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;
.super Landroid/os/Binder;
.source "ISpeechCallback.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechCallback"

.field static final TRANSACTION_Speek:I = 0x6

.field static final TRANSACTION_btIncomingCallRing:I = 0x2

.field static final TRANSACTION_btOutgoingCallRing:I = 0x3

.field static final TRANSACTION_btStatus:I = 0x1

.field static final TRANSACTION_btSyncContacts:I = 0x4

.field static final TRANSACTION_sourceChange:I = 0x5

.field static final TRANSACTION_updateAudioList:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechCallback"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechCallback"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;
    .locals 1

    .line 322
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)Z
    .locals 1

    .line 315
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 316
    sput-object p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;

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

    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 140
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->updateAudioList(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->Speek(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 120
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->sourceChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 109
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->btSyncContacts(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->btOutgoingCallRing(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 87
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->btIncomingCallRing(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->btStatus(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 73
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
