.class public abstract Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;
.super Landroid/os/Binder;
.source "IDualScreenInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.dualscreen.IDualScreenInterface"

.field static final TRANSACTION_checkIsNaviActivity:I = 0x1

.field static final TRANSACTION_getNaviDisplayId:I = 0x2

.field static final TRANSACTION_hideAll:I = 0x9

.field static final TRANSACTION_hideInBack:I = 0x6

.field static final TRANSACTION_hideInMain:I = 0x5

.field static final TRANSACTION_setIsNeedShowBack:I = 0xa

.field static final TRANSACTION_showInBack:I = 0x4

.field static final TRANSACTION_showInMain:I = 0x3

.field static final TRANSACTION_showOrHideInBack:I = 0x8

.field static final TRANSACTION_showOrHideInMain:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.dualscreen.IDualScreenInterface"

    .line 54
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.dualscreen.IDualScreenInterface"

    .line 65
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    if-eqz v1, :cond_1

    .line 67
    check-cast v0, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;
    .locals 1

    .line 388
    sget-object v0, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;)Z
    .locals 1

    .line 381
    sget-object v0, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 382
    sput-object p0, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

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

    const-string v2, "com.hzbhd.midwareproxy.dualscreen.IDualScreenInterface"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 154
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->setIsNeedShowBack(Z)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 147
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->hideAll()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->showOrHideInBack()V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 133
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->showOrHideInMain()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 126
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->hideInBack()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 119
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->hideInMain()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->showInBack()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->showInMain()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 97
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->getNaviDisplayId()I

    move-result p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 87
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->checkIsNaviActivity(Ljava/lang/String;)Z

    move-result p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 82
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
