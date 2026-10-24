.class Lcom/hzbhd/common/ui/PopupMenuButton$3;
.super Ljava/lang/Object;
.source "PopupMenuButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/PopupMenuButton;->init(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/PopupMenuButton;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$3;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 300
    iget-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$3;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/PopupMenuButton;->show()V

    return-void
.end method
