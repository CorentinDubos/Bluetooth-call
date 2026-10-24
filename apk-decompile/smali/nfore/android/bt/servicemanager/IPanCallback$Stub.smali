.class public abstract Lnfore/android/bt/servicemanager/IPanCallback$Stub;
.super Landroid/os/Binder;
.source "IPanCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IPanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IPanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IPanCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.IPanCallback"

.field static final TRANSACTION_onPanStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.IPanCallback"

    .line 57
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/IPanCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IPanCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.IPanCallback"

    .line 68
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    instance-of v1, v0, Lnfore/android/bt/servicemanager/IPanCallback;

    if-eqz v1, :cond_1

    .line 70
    check-cast v0, Lnfore/android/bt/servicemanager/IPanCallback;

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/IPanCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/IPanCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/IPanCallback;
    .locals 1

    .line 184
    sget-object v0, Lnfore/android/bt/servicemanager/IPanCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IPanCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/IPanCallback;)Z
    .locals 1

    .line 177
    sget-object v0, Lnfore/android/bt/servicemanager/IPanCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IPanCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 178
    sput-object p0, Lnfore/android/bt/servicemanager/IPanCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IPanCallback;

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

    const-string v1, "nfore.android.bt.servicemanager.IPanCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 90
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 99
    invoke-virtual {p0, p1, p4, v1, p2}, Lnfore/android/bt/servicemanager/IPanCallback$Stub;->onPanStateChanged(Ljava/lang/String;III)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
