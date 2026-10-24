.class Lcom/hzbhd/common/ui/_47/PopupMenuButton$3;
.super Ljava/lang/Object;
.source "PopupMenuButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/_47/PopupMenuButton;->init(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$3;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 307
    iget-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$3;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/_47/PopupMenuButton;->show()V

    return-void
.end method
