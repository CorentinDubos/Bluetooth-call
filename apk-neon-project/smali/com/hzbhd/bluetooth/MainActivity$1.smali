.class Lcom/hzbhd/bluetooth/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 204
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$1;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "key_value"

    .line 206
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity$1;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "dialpad_fragment"

    .line 208
    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 210
    sget-object p2, Lcom/hzbhd/bluetooth/MainActivity;->mRemoteCotrol:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/hzbhd/bluetooth/MainActivity;->mRemoteCotrol:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;

    invoke-interface {p2, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;->onClick(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$1;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/hzbhd/bluetooth/MainActivity;->showFragment(ZI)V

    :cond_1
    :goto_0
    return-void
.end method
