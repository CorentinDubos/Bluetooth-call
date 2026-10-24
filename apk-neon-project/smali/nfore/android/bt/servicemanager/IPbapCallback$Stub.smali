.class public abstract Lnfore/android/bt/servicemanager/IPbapCallback$Stub;
.super Landroid/os/Binder;
.source "IPbapCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IPbapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IPbapCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IPbapCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.IPbapCallback"

.field static final TRANSACTION_onPbapDownloadNotify:I = 0x2

.field static final TRANSACTION_onPbapStateChanged:I = 0x1

.field static final TRANSACTION_retPbapCleanDatabaseCompleted:I = 0x6

.field static final TRANSACTION_retPbapDatabaseAvailable:I = 0x3

.field static final TRANSACTION_retPbapDeleteDatabaseByAddressCompleted:I = 0x5

.field static final TRANSACTION_retPbapQueryName:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.IPbapCallback"

    .line 122
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IPbapCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.IPbapCallback"

    .line 133
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    instance-of v1, v0, Lnfore/android/bt/servicemanager/IPbapCallback;

    if-eqz v1, :cond_1

    .line 135
    check-cast v0, Lnfore/android/bt/servicemanager/IPbapCallback;

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/IPbapCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/IPbapCallback;
    .locals 1

    .line 468
    sget-object v0, Lnfore/android/bt/servicemanager/IPbapCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IPbapCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/IPbapCallback;)Z
    .locals 1

    .line 461
    sget-object v0, Lnfore/android/bt/servicemanager/IPbapCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IPbapCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 462
    sput-object p0, Lnfore/android/bt/servicemanager/IPbapCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IPbapCallback;

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "nfore.android.bt.servicemanager.IPbapCallback"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 224
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 227
    :cond_0
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->retPbapCleanDatabaseCompleted(Z)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 213
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 218
    :cond_1
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 198
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    .line 207
    :cond_2
    invoke-virtual {p0, p1, p4, v2, v0}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 189
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->retPbapDatabaseAvailable(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 174
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 183
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->onPbapDownloadNotify(Ljava/lang/String;III)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 155
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v2, p0

    .line 168
    invoke-virtual/range {v2 .. v8}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->onPbapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 150
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
