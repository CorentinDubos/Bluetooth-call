.class public abstract Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;
.super Landroid/os/Binder;
.source "ISettingCallBackInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.callback.ISettingCallBackInterface"

.field static final TRANSACTION_notifyBlackOut:I = 0x4

.field static final TRANSACTION_notifyEQBalanceUI:I = 0x2

.field static final TRANSACTION_notifyEQSettingUI:I = 0x3

.field static final TRANSACTION_notifyEQTypeUI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.ISettingCallBackInterface"

    .line 48
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.ISettingCallBackInterface"

    .line 59
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;
    .locals 1

    .line 229
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;)Z
    .locals 1

    .line 222
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 223
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;

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

    const-string v1, "com.hzbhd.midwareproxy.binder.callback.ISettingCallBackInterface"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 76
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 102
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;->notifyBlackOut(I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 95
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;->notifyEQSettingUI()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 88
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;->notifyEQBalanceUI()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 81
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;->notifyEQTypeUI()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
