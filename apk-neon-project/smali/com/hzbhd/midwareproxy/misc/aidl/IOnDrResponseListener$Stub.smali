.class public abstract Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub;
.super Landroid/os/Binder;
.source "IOnDrResponseListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.misc.aidl.IOnDrResponseListener"

.field static final TRANSACTION_onDrResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.misc.aidl.IOnDrResponseListener"

    .line 27
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.misc.aidl.IOnDrResponseListener"

    .line 38
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;
    .locals 1

    .line 118
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)Z
    .locals 1

    .line 111
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 112
    sput-object p0, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;

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

    const-string v1, "com.hzbhd.midwareproxy.misc.aidl.IOnDrResponseListener"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 55
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 60
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub;->onDrResponse([B)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
