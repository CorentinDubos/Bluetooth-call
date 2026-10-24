.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initPA6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

.field final synthetic val$mainView:Lcom/hzbhd/bluetooth/ui/_a6/MainView;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Lcom/hzbhd/bluetooth/ui/_a6/MainView;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->val$mainView:Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 1

    .line 1484
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->val$mainView:Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getCollectPhone(I)Ljava/lang/String;

    move-result-object p1

    .line 1485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1486
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 3

    .line 1492
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->val$mainView:Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getCollectPhone(I)Ljava/lang/String;

    move-result-object p1

    .line 1493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1494
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1495
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v1, 0x7f0d00ff

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$1;

    invoke-direct {v1, p0, p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$1;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;I)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1501
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v0, 0x7f0d00fe

    invoke-virtual {p2, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1502
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v0, 0x7f0d0100

    invoke-virtual {p2, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1503
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1505
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$800(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Z)V

    .line 1506
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    .line 1507
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;

    invoke-direct {v0, p0, p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
