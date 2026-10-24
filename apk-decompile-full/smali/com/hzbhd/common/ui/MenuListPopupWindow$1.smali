.class Lcom/hzbhd/common/ui/MenuListPopupWindow$1;
.super Ljava/lang/Object;
.source "MenuListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/MenuListPopupWindow;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/MenuListPopupWindow;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/MenuListPopupWindow;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/MenuListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/MenuListPopupWindow;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->dismiss()V

    return-void
.end method
