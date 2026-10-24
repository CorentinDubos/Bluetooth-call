.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2$1;->this$1:Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2$1;->this$1:Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    const v1, 0x7f0d0201

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    return-void
.end method
