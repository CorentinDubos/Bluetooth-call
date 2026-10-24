.class public abstract Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;
.super Landroid/os/Binder;
.source "GeneralLingoRetListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener"

.field static final TRANSACTION_ack:I = 0x1

.field static final TRANSACTION_retSupportedEventNotification:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener"

    .line 44
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;
    .locals 1

    .line 191
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;)Z
    .locals 1

    .line 184
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 185
    sput-object p0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

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

    const/4 v0, 0x1

    const-string v1, "com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 88
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 93
    sget-object p4, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/midwareproxy/iPod/EventNotification;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 98
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->retSupportedEventNotification(BLcom/hzbhd/midwareproxy/iPod/EventNotification;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 77
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->ack(BI)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
