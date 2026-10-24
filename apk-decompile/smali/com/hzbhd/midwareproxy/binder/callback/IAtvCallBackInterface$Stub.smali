.class public abstract Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;
.super Landroid/os/Binder;
.source "IAtvCallBackInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.callback.IAtvCallBackInterface"

.field static final TRANSACTION_reportChannelFrequncy:I = 0x3

.field static final TRANSACTION_reportChannelList:I = 0x4

.field static final TRANSACTION_reportChannelStatus:I = 0x2

.field static final TRANSACTION_reportParkingState:I = 0x5

.field static final TRANSACTION_reportVideoStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IAtvCallBackInterface"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IAtvCallBackInterface"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;
    .locals 1

    .line 259
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;)Z
    .locals 1

    .line 252
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 253
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

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

    const-string v1, "com.hzbhd.midwareproxy.binder.callback.IAtvCallBackInterface"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 116
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 119
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;->reportParkingState(Z)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 107
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;->reportChannelList(F)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 98
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;->reportChannelFrequncy(F)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 83
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 92
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;->reportChannelStatus(IIII)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 70
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 77
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;->reportVideoStatus(III)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
