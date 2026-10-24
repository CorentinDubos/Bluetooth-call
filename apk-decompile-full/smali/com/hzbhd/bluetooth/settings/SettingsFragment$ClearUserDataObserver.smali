.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$ClearUserDataObserver;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 479
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$ClearUserDataObserver;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$300(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 480
    :goto_0
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 481
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$ClearUserDataObserver;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$300(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
