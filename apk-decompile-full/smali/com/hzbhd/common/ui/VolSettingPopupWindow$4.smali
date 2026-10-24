.class Lcom/hzbhd/common/ui/VolSettingPopupWindow$4;
.super Ljava/lang/Object;
.source "VolSettingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 122
    iput-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/hzbhd/common/ui/VolSettingPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/VolSettingPopupWindow;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/VolSettingPopupWindow;->resetTimeout()V

    const/4 p1, 0x1

    return p1
.end method
