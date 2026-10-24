.class Lcom/hzbhd/mediaScanner/ScannerManager$1;
.super Landroid/os/Handler;
.source "ScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/ScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/mediaScanner/ScannerManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/mediaScanner/ScannerManager;Landroid/os/Looper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/hzbhd/mediaScanner/ScannerManager$1;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "ScannerManager"

    const-string v1, "handleMessage  cb msg."

    .line 93
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager$1;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    invoke-static {v0}, Lcom/hzbhd/mediaScanner/ScannerManager;->access$000(Lcom/hzbhd/mediaScanner/ScannerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_3

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager$1;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    invoke-static {v0}, Lcom/hzbhd/mediaScanner/ScannerManager;->access$000(Lcom/hzbhd/mediaScanner/ScannerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;

    .line 111
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-interface {v1, v2}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;->fileSaveUpdateImage(Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager$1;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    invoke-static {v0}, Lcom/hzbhd/mediaScanner/ScannerManager;->access$000(Lcom/hzbhd/mediaScanner/ScannerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;

    .line 106
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-interface {v1, v2}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;->fileSaveUpdateVideo(Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)V

    goto :goto_1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ScannerManager$1;->this$0:Lcom/hzbhd/mediaScanner/ScannerManager;

    invoke-static {v0}, Lcom/hzbhd/mediaScanner/ScannerManager;->access$000(Lcom/hzbhd/mediaScanner/ScannerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;

    .line 101
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    invoke-interface {v1, v2}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$FilesStateChanged;->fileSaveUpdateMusic(Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
