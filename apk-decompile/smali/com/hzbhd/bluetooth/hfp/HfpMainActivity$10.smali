.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;
.super Landroid/os/Handler;
.source "HfpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initUI_H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Landroid/os/Looper;)V
    .locals 0

    .line 1456
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1459
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1460
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1f4a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1462
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HfpMainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1464
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v0, 0x7f09014e

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1465
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v0, 0x7f09014c

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
