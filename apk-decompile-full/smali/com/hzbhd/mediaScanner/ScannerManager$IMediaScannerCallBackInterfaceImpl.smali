.class public final Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;
.super Lcom/hzbhd/midwareproxy/binder/callback/IMediaScannerCallBackInterface$Stub;
.source "ScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/ScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IMediaScannerCallBackInterfaceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/mediaScanner/ScannerManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/mediaScanner/ScannerManager;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IMediaScannerCallBackInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public fileSaveUpdateImage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-direct {v0, p1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    iget-object p1, p1, Lcom/hzbhd/mediaScanner/ScannerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    iget-object v1, v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public fileSaveUpdateMusic(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-direct {v0, p1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    iget-object p1, p1, Lcom/hzbhd/mediaScanner/ScannerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    iget-object v1, v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public fileSaveUpdateVideo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-direct {v0, p1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    iget-object p1, p1, Lcom/hzbhd/mediaScanner/ScannerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$IMediaScannerCallBackInterfaceImpl;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    iget-object v1, v1, Lcom/hzbhd/mediaScanner/ScannerManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
