.class Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "GeneralLingoRetListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public ack(BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener"

    .line 133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;->ack(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener"

    return-object v0
.end method

.method public retSupportedEventNotification(BLcom/hzbhd/midwareproxy/iPod/EventNotification;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.GeneralLingoRetListener"

    .line 158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 161
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p2, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 169
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;->retSupportedEventNotification(BLcom/hzbhd/midwareproxy/iPod/EventNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 172
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw p1
.end method
