.class Lcom/hzbhd/bluetooth/settings/SettingListAdapter$1;
.super Ljava/lang/Object;
.source "SettingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/settings/SettingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$1;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$1;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->access$000(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$1;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->access$000(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;->doOnClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
