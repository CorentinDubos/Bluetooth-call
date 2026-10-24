.class Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3$1;
.super Ljava/lang/Object;
.source "SettingListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3$1;->this$1:Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3$1;->this$1:Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->notifyDataSetChanged()V

    return-void
.end method
