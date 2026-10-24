.class public abstract Lnfore/android/bt/servicemanager/IMapCallback$Stub;
.super Landroid/os/Binder;
.source "IMapCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IMapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IMapCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IMapCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.IMapCallback"

.field static final TRANSACTION_onMapDownloadNotify:I = 0x4

.field static final TRANSACTION_onMapNewMessageReceived:I = 0x3

.field static final TRANSACTION_onMapNotificationStateChanged:I = 0x2

.field static final TRANSACTION_onMapStateChanged:I = 0x1

.field static final TRANSACTION_retMapCleanDatabaseCompleted:I = 0x7

.field static final TRANSACTION_retMapDatabaseAvailable:I = 0x5

.field static final TRANSACTION_retMapDeleteDatabaseByAddressCompleted:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.IMapCallback"

    .line 139
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IMapCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.IMapCallback"

    .line 150
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    instance-of v1, v0, Lnfore/android/bt/servicemanager/IMapCallback;

    if-eqz v1, :cond_1

    .line 152
    check-cast v0, Lnfore/android/bt/servicemanager/IMapCallback;

    return-object v0

    .line 154
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/IMapCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/IMapCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/IMapCallback;
    .locals 1

    .line 540
    sget-object v0, Lnfore/android/bt/servicemanager/IMapCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IMapCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/IMapCallback;)Z
    .locals 1

    .line 533
    sget-object v0, Lnfore/android/bt/servicemanager/IMapCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IMapCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 534
    sput-object p0, Lnfore/android/bt/servicemanager/IMapCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IMapCallback;

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

    const v2, 0x5f4e5446

    const/4 v7, 0x1

    const-string v3, "nfore.android.bt.servicemanager.IMapCallback"

    if-eq p1, v2, :cond_2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 256
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v7

    .line 259
    :cond_0
    invoke-virtual {p0, v2}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->retMapCleanDatabaseCompleted(Z)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 245
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v7

    .line 250
    :cond_1
    invoke-virtual {p0, v0, v2}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->retMapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 236
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->retMapDatabaseAvailable(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 223
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->onMapDownloadNotify(Ljava/lang/String;II)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 208
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p0, v0, v2, v3, v1}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->onMapNewMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 191
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 202
    invoke-virtual/range {v0 .. v5}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->onMapNotificationStateChanged(Ljava/lang/String;Ljava/lang/String;III)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 172
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 185
    invoke-virtual/range {v0 .. v6}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->onMapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 167
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

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
