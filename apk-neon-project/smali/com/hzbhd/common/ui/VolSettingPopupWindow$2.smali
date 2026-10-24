.class Lcom/hzbhd/common/ui/VolSettingPopupWindow$2;
.super Ljava/lang/Object;
.source "VolSettingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 105
    iput-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->dismiss()V

    return-void
.end method
