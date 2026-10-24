.class public abstract Lnfore/android/bt/servicemanager/UiHidCallback$Stub;
.super Landroid/os/Binder;
.source "UiHidCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiHidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiHidCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.UiHidCallback"

.field static final TRANSACTION_onAuthStateChanged:I = 0x4

.field static final TRANSACTION_onHidStateChanged:I = 0x1

.field static final TRANSACTION_onScreenModeChanged:I = 0x3

.field static final TRANSACTION_onScreenStateChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.UiHidCallback"

    .line 74
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHidCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.UiHidCallback"

    .line 85
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    instance-of v1, v0, Lnfore/android/bt/servicemanager/UiHidCallback;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lnfore/android/bt/servicemanager/UiHidCallback;

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;
    .locals 1

    .line 288
    sget-object v0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiHidCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/UiHidCallback;)Z
    .locals 1

    .line 281
    sget-object v0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiHidCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 282
    sput-object p0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiHidCallback;

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

    const-string v1, "nfore.android.bt.servicemanager.UiHidCallback"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 102
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 140
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 143
    :goto_0
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->onAuthStateChanged(Z)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 131
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->onScreenModeChanged(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 122
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->onScreenStateChanged(I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 107
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 116
    invoke-virtual {p0, p1, p4, v1, p2}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->onHidStateChanged(Ljava/lang/String;III)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
