.class public abstract Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;
.super Landroid/os/Binder;
.source "IRemoteDrService.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

.field static final TRANSACTION_addRemoteDrListener:I = 0x1

.field static final TRANSACTION_registerDrLocation:I = 0x5

.field static final TRANSACTION_registerOnDrResponseListener:I = 0x3

.field static final TRANSACTION_removeRemoteDrListener:I = 0x2

.field static final TRANSACTION_setDrProperty:I = 0x7

.field static final TRANSACTION_unregisterDrLocation:I = 0x6

.field static final TRANSACTION_unregisterOnDrResponseListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;
    .locals 1

    .line 318
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;)Z
    .locals 1

    .line 311
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 312
    sput-object p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

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

    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 134
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->setDrProperty(ILjava/lang/String;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 125
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->unregisterDrLocation(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;

    move-result-object p2

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->registerDrLocation(ILcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->unregisterOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 96
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->registerOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 87
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->removeRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->addRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V

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
