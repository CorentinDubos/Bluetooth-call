.class Lcom/hzbhd/common/ui/TopBar$4;
.super Ljava/lang/Object;
.source "TopBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/TopBar;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/TopBar;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/TopBar;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar$4;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 284
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar$4;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/TopBar;->showSystemStatusBar()V

    const/4 p1, 0x1

    return p1
.end method
