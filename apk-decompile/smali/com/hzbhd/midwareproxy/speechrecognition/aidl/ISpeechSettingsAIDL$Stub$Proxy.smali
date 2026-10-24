.class Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISpeechSettingsAIDL.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public ContinuePlaying()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1440
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1441
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1442
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1443
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->ContinuePlaying()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1446
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1451
    throw v2
.end method

.method public PausePlayBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1460
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1461
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1462
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1463
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->PausePlayBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1466
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    throw v2
.end method

.method public actionControl(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2752
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2754
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2755
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2756
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->actionControl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2759
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    throw p1
.end method

.method public addCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1153
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1154
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1155
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1156
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1157
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->addCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1160
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1165
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public backToHome()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1856
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1857
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1858
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1859
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->backToHome()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1862
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1867
    throw v2
.end method

.method public brightnessDown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1896
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1897
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1898
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1899
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->brightnessDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1902
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    throw v2
.end method

.method public brightnessMax()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1957
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1959
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1960
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->brightnessMax()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1963
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1968
    throw v2
.end method

.method public brightnessMin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1978
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1979
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1980
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->brightnessMin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1983
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1988
    throw v2
.end method

.method public brightnessTo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1939
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1940
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->brightnessTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1943
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    throw p1
.end method

.method public brightnessUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1916
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1917
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1918
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1919
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->brightnessUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1922
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    throw v2
.end method

.method public btAnswer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1622
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1623
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1624
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->btAnswer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1627
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    throw v2
.end method

.method public btCallNumber(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1661
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1663
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1664
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1665
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->btCallNumber(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1668
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    throw p1
.end method

.method public btHangUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1641
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1642
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1643
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1644
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->btHangUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1647
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    throw v2
.end method

.method public btSyncContacts()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1682
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1683
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1684
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1685
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->btSyncContacts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1688
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1693
    throw v2
.end method

.method public closeAcPower()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2426
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2427
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2428
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2429
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->closeAcPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2437
    throw v2
.end method

.method public closeApp(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1193
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1195
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1196
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1197
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->closeApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1200
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1205
    throw p1
.end method

.method public closeBodaApp(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1299
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1300
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1301
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->closeBodaApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1304
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1309
    throw p1
.end method

.method public closeHotspot()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2282
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2283
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2284
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2285
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->closeHotspot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2288
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    throw v2
.end method

.method public closeNavi()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1256
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1257
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1258
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1259
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->closeNavi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1262
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    throw v2
.end method

.method public closeWifi()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2242
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2243
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2244
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2245
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->closeWifi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2248
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2253
    throw v2
.end method

.method public getAcTemperatureLevel()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2671
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2672
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2673
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2674
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getAcTemperatureLevel()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2676
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2677
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2682
    throw v2
.end method

.method public getAcWindLevel()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2548
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2550
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2551
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getAcWindLevel()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2553
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2559
    throw v2
.end method

.method public getAccStatus()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1813
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1814
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1815
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1816
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getAccStatus()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1818
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1819
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1824
    throw v2
.end method

.method public getBackingStatus()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1835
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1836
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1837
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1838
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getBackingStatus()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1840
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1841
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1846
    throw v2
.end method

.method public getBrighrnessStatus()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1998
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1999
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2000
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2001
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getBrighrnessStatus()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2003
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2009
    throw v2
.end method

.method public getBtConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1747
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1748
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1749
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1750
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getBtConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1752
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1758
    throw v2
.end method

.method public getBtConnectedDevieName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1769
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1770
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1771
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1772
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getBtConnectedDevieName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1774
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1775
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    throw v2
.end method

.method public getBtContactList()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1703
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1704
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1705
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1706
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getBtContactList()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1708
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1714
    throw v2
.end method

.method public getBtName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1792
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1793
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1794
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getBtName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1796
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1802
    throw v2
.end method

.method public getBtStatus()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1725
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1726
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1727
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1728
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getBtStatus()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1730
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1736
    throw v2
.end method

.method public getCurrentApp()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1319
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1320
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1321
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1322
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getCurrentApp()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1324
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1330
    throw v2
.end method

.method public getCurrentSource()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2344
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2345
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2346
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getCurrentSource()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2354
    throw v2
.end method

.method public getDeviveInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2816
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2817
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2818
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2819
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getDeviveInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2821
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2822
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2827
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2385
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2386
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2387
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2388
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getSerialNumber()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2390
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2391
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2396
    throw v2
.end method

.method public getVolumeStatus()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2201
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2202
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2203
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2204
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->getVolumeStatus()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2206
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2212
    throw v2
.end method

.method public goBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1876
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1877
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1878
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1879
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->goBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1882
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1887
    throw v2
.end method

.method public musicPlayPath(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2860
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2862
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2863
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2864
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->musicPlayPath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2867
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2872
    throw p1
.end method

.method public nextStation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1361
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1363
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->nextStation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1366
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1371
    throw v2
.end method

.method public nextTrack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1400
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1401
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1402
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1403
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->nextTrack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1411
    throw v2
.end method

.method public openAcPower()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2406
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2407
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2408
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2409
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->openAcPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2412
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2417
    throw v2
.end method

.method public openApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1214
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1217
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1218
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1219
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->openApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1222
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1227
    throw p1
.end method

.method public openBodaApp(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1276
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1278
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1280
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->openBodaApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1283
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    throw p1
.end method

.method public openHotspot()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2262
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2263
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2264
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2265
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->openHotspot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2268
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2273
    throw v2
.end method

.method public openNavi()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1236
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1237
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1238
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1239
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->openNavi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1242
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    throw v2
.end method

.method public openWifi()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2222
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2223
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2224
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2225
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->openWifi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2228
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2233
    throw v2
.end method

.method public previouStation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1381
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1382
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1383
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->previouStation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1386
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1391
    throw v2
.end method

.method public previousTrack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1420
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1422
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1423
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->previousTrack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1431
    throw v2
.end method

.method public putspeakEnd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2795
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2796
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2797
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2798
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->putspeakEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2801
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    throw v2
.end method

.method public radioBand()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1540
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1541
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1542
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1543
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->radioBand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1546
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1551
    throw v2
.end method

.method public radioSearch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1520
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1521
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1522
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1523
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->radioSearch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1526
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1531
    throw v2
.end method

.method public radioToAM()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1580
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1581
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1582
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1583
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->radioToAM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1586
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1591
    throw v2
.end method

.method public radioToFM()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1560
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1561
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1562
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1563
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->radioToFM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1566
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1571
    throw v2
.end method

.method public radioToFreq(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1600
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1602
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1603
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1604
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->radioToFreq(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1607
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1612
    throw p1
.end method

.method public releaseSource()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2322
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2323
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2324
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2325
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->releaseSource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2328
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    throw v2
.end method

.method public removeCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1173
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1174
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1175
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1176
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->removeCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1179
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1184
    throw p1
.end method

.method public requestSource()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2302
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2303
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2304
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2305
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->requestSource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2308
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2313
    throw v2
.end method

.method public rotateScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2364
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2365
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2366
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2367
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->rotateScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2370
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    throw v2
.end method

.method public screenOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2019
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2021
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2022
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->screenOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2025
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    throw v2
.end method

.method public screenOn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2039
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2040
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2041
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2042
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->screenOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2045
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2050
    throw v2
.end method

.method public searchBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1480
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1481
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1482
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1483
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->searchBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1486
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1491
    throw v2
.end method

.method public searchForward()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1500
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1501
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1502
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1503
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->searchForward()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1506
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    throw v2
.end method

.method public setAcHeating()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2712
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2713
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2714
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2715
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcHeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2718
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2723
    throw v2
.end method

.method public setAcRefrigeration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2692
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2693
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2694
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2695
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcRefrigeration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2698
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2703
    throw v2
.end method

.method public setAcTemperature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2837
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2840
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2841
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2842
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2843
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcTemperature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2846
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2851
    throw p1
.end method

.method public setAcTemperatureDown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2589
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2590
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2591
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2592
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcTemperatureDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2595
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2600
    throw v2
.end method

.method public setAcTemperatureMax()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2630
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2631
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2632
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2633
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcTemperatureMax()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2636
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    throw v2
.end method

.method public setAcTemperatureMin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2650
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2651
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2652
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2653
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcTemperatureMin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2656
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2661
    throw v2
.end method

.method public setAcTemperatureTo(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2609
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2611
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2612
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2613
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcTemperatureTo(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2616
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2621
    throw p1
.end method

.method public setAcTemperatureToPro(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2773
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2775
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2776
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2777
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2778
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcTemperatureToPro(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2781
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2786
    throw p1
.end method

.method public setAcTemperatureUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2569
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2570
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2571
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2572
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcTemperatureUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2575
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2580
    throw v2
.end method

.method public setAcWinMax()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2507
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2508
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2509
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2510
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcWinMax()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2513
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2518
    throw v2
.end method

.method public setAcWindDown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2467
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2468
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2469
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcWindDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2472
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2477
    throw v2
.end method

.method public setAcWindTo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2486
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2489
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2490
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcWindTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2493
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2498
    throw p1
.end method

.method public setAcWindUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2446
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2447
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2448
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2449
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcWindUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2452
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2457
    throw v2
.end method

.method public setAcdWindMin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2527
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2528
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2529
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2530
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->setAcdWindMin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2533
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2538
    throw v2
.end method

.method public switchAcMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2732
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2733
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2734
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2735
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->switchAcMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2738
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2743
    throw v2
.end method

.method public switchMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 1340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1342
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1343
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->switchMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1346
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    throw v2
.end method

.method public volumeDown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2059
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2060
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2061
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2062
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->volumeDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2065
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2070
    throw v2
.end method

.method public volumeMax()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2120
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2121
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2122
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2123
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->volumeMax()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2126
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2131
    throw v2
.end method

.method public volumeMin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2140
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2141
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2142
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2143
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->volumeMin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2146
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    throw v2
.end method

.method public volumeMute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2160
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2161
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2162
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2163
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->volumeMute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2166
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2171
    throw v2
.end method

.method public volumeTo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2099
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2101
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2102
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2103
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->volumeTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2106
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    throw p1
.end method

.method public volumeUnmute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2181
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2182
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2183
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->volumeUnmute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2186
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2191
    throw v2
.end method

.method public volumeUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 2079
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2080
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2081
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2082
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;->volumeUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2085
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2090
    throw v2
.end method
