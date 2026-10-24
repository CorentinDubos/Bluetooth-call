.class public Lcom/hzbhd/bluetooth/ui/_h1/BtMusicActivity;
.super Landroid/app/Activity;
.source "BtMusicActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_h1/BtMusicActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 24
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_h1/BtMusicActivity;->finish()V

    return-void
.end method
