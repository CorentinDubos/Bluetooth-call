.class Lcom/hzbhd/common/ui/VolSettingPopupWindow$3;
.super Ljava/lang/Object;
.source "VolSettingPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/VolSettingPopupWindow;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/VolSettingPopupWindow;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;

    iget-object v0, v0, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->mCoverBgPopupWindow:Lcom/hzbhd/common/ui/CoverBgPopupWindow;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/CoverBgPopupWindow;->dismiss()V

    .line 119
    iget-object v0, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->access$000(Lcom/hzbhd/common/ui/VolSettingPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
