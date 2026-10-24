.class Lcom/hzbhd/bluetooth/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/MainActivity;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$2;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 407
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$2;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->dismissPopupInfoDialog()V

    goto :goto_0

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$2;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->dismissProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
