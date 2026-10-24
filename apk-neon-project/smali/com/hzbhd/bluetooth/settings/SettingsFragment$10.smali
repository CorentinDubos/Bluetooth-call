.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$10;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$10;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 622
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$10;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$600(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    return-void
.end method
