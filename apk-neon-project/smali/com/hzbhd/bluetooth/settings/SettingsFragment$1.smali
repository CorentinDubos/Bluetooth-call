.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$1;
.super Landroid/os/Handler;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$1;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$1;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    return-void
.end method
